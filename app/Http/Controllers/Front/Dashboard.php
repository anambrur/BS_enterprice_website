<?php

namespace App\Http\Controllers\Front;

use App\Model\Common\Media;
use App\Model\Common\Media_permissions;
use App\Model\Common\Order;
use App\Model\Common\Payment;
use App\Model\Common\Ticket;
use App\Model\Common\TicketsDetail;
use App\Rules\SmPasswordMatch;
use App\User;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SM\SM;
use Response;

class Dashboard extends Controller
{
	/**
	 * Show customer dasshboard
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function index()
	{
		$data['activeMenu'] = 'dashboard';
		$data["userInfo"]   = \Auth::user();

		return view("customer/dashboard", $data);
	}

	/**
	 * Show customer orders
	 *
	 * @param null $status
	 *
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function orders($status = null)
	{
		$data['activeMenu']   = 'orders';
		$data["userInfo"]     = \Auth::user();
		$order_posts_per_page = SM::smGetThemeOption("order_posts_per_page", config('constant.smPagination'));
		$data['status']       = $status;
		if ($status != null) {
			$data["orders"] = Order::with('package', 'payment')
				->where("user_id", \Auth::user()->id)
				->where("order_status", $status)
				->orderBy("id", 'desc')
				->paginate($order_posts_per_page);
		} else {
			$data["orders"] = Order::with('package', 'payment')
				->where("user_id", \Auth::user()->id)
				->orderBy("id", 'desc')
				->paginate($order_posts_per_page);
		}

		return view("customer/orders", $data);
	}

	/**
	 * show customer order details by id
	 *
	 * @param $id
	 *
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
	 */
	public function detailOrders($id)
	{
		$data["order"] = Order::with('package', 'payment', 'user', 'order_detail')
			->where("user_id", \Auth::user()->id)
			->find($id);
		if (count($data["order"]) > 0) {
			$data["payment"] = $data["order"]->payment;

			return view("customer/order_detail", $data);
		} else {
			return abort(404);
		}
	}

	/**
	 * Download order invoice pdf by id
	 *
	 * @param $id
	 */
	public function downloadOrders($id)
	{
		$data["order"] = Order::with('package', 'payment', 'user', 'order_detail')
			->where("user_id", \Auth::user()->id)
			->find($id);
		if (count($data["order"]) > 0) {
			$data["payment"] = Payment::find($data["order"]->payment_id);

			$view = view("pdf/invoice", $data);

			return PDF::loadHTML($view)
				->download('next_page_tl_invoice_' . SM::orderNumberFormat($data["order"]) . '.pdf');
		} else {
			return abort(404);
		}
	}

	/**
	 * Edit customer profile
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function editProfile()
	{
		$data['activeMenu'] = 'edit-profile';
		$data["userInfo"]   = \Auth::user();

		return view("customer/edit-profile", $data);
	}

	/**
	 * Save customer profile info
	 *
	 * @param Request $data
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function saveProfile(Request $data)
	{
		$this->validate($data, [
			'firstname' => 'required',
			'lastname'  => 'required',
			'street'    => 'required',
			'city'      => 'required',
			'zip'       => 'required',
			'state'     => 'required',
			'country'   => 'required',
		]);
		$user          = \Auth::user();
		$user->mobile  = isset($data['mobile']) ? $data['mobile'] : null;
		$user->street  = isset($data['street']) ? $data['street'] : null;
		$user->city    = isset($data['city']) ? $data['city'] : null;
		$user->zip     = isset($data['zip']) ? $data['zip'] : null;
		$user->state   = isset($data['state']) ? $data['state'] : null;
		$user->country = isset($data['country']) ? $data['country'] : null;

		$user->firstname = isset($data['firstname']) ? $data['firstname'] : null;
		$user->lastname  = isset($data['lastname']) ? $data['lastname'] : null;
		$user->update();

		$value = isset($data['skype']) ? $data['skype'] : null;
		SM::update_front_user_meta(\Auth::user()->id, 'skype', $value);

		return back()->with('s_message', "Profile Successfully updated!");
	}

	/**
	 * Save customer profile picture
	 *
	 * @param Request $data
	 *
	 * @return \Illuminate\Http\JsonResponse
	 */
	public function saveProfilePicture(Request $data)
	{
		$maxPost = config('constant.smPostMaxInMb') * 1024;
		$img     = SM::sm_image_upload('profile_picture', "required|max:$maxPost|mimes:png,gif,jpeg");
		if (is_array($img) && isset($img['insert_id'])) {
			$user        = \Auth::user();
			$user->image = $img['insert_id'];
			$user->update();

			return response()->json($img, 200);
		} else {
			return response()->json($img, 403);
		}
	}

	/**
	 * Update customer password
	 *
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function updatePassword(Request $request)
	{
		$this->validate($request, [
			'password'         => 'required|min:6|confirmed',
			'current_password' => [new SmPasswordMatch()]
		]);

		$user           = \Auth::user();
		$user->password = bcrypt($request->password);
		$user->update();

		return back()->with('s_message', "Password Successfully Changed!");
	}


	/**
	 * Show all downloadable file
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function downloads()
	{
		$data['activeMenu']   = 'downloads';
		$data["userInfo"]     = \Auth::user();
		$order_posts_per_page = SM::smGetThemeOption("order_posts_per_page", config('constant.smPagination'));
		$data["medias"]       = Media::leftJoin('media_permissions', 'media_permissions.media_id', '=', "media.id")
			->where("media_permissions.user_id", \Auth::user()->id)
			->orderBy('media.id', 'desc')
			->paginate($order_posts_per_page);

		return view("customer/downloads", $data);
	}

	/**
	 * Download customer order files
	 *
	 * @param $id
	 *
	 * @return \Illuminate\Http\RedirectResponse|\Symfony\Component\HttpFoundation\BinaryFileResponse
	 */
	public function mediaDownload($id)
	{
		$media = Media::find($id);
		if (count($media) > 0) {
			$path        = config('constant.smUploadsDir');
			$fileWithDir = storage_path("app/" .
				($media->is_private == 1 ? "private" : "public") .
				"/" . $path . $media->slug);
			if (file_exists($fileWithDir)) {
				if ($media->is_private == 0) {
					return Response::download($fileWithDir);
				} elseif (Media_permissions::where('user_id', \Auth::user()->id)->where('media_id', $id)->first()) {
					return Response::download($fileWithDir);
				}
			}

			return back()->with('w_message', 'No file Found!');
		}
	}


	public function olderSupportDetail($id)
	{
		$ticket = Ticket::where("user_id", \Auth::id())
			->where('id', $id)
			->first();
		if ($ticket) {
			$data['isFirstLoad']  = false;
			$order_posts_per_page = SM::smGetThemeOption("order_posts_per_page", config('constant.smPagination'));
			$data['details']      = TicketsDetail::where('ticket_id', $id)
				->orderBy('id', 'desc')
				->paginate($order_posts_per_page);

			$html = view("customer/tickets/support-comment-loop", $data)->render();

			return response($html, 200);
		} else {
			return response("Ticket Not Found!", 404);
		}
	}

	public function newSupportDetail($id, $lastId = null)
	{
		$data['isFirstLoad'] = false;
		$query               = TicketsDetail::where('ticket_id', $id);
		if ($lastId != null) {
			$query->where('id', '>', $lastId);
		}
		$data['details'] = $query->orderBy('id', 'asc')
			->get();

		if ($data['details'] && count($data['details']) > 0) {
			$return['html'] = view("customer/tickets/support-comment-loop", $data)->render();
			$return['html'] .= '<audio autoplay>
  <source src="' . asset('/sm-admin/sound/messagebox.ogg') . '" type="audio/ogg">
  <source src="' . asset('/sm-admin/sound/messagebox.mp3') . '" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>';
			$return['id']   = $data['details']->last()->id;
		} else {
			$return['html'] = '';
			$return['id']   = $lastId;
		}

		return response()->json($return, 200);
	}

	public function saveReplyTicket(Request $request)
	{
		$this->validate($request, [
			'ticket_id' => 'required|integer',
			'message'   => 'required',
		]);
		$ticket = Ticket::find($request->ticket_id);
		if ($ticket) {
			$ticketDetail            = new TicketsDetail();
			$ticketDetail->user_id   = \Auth::id();
			$ticketDetail->ticket_id = $request->ticket_id;
			$ticketDetail->message   = $request->message;
			$ticketDetail->save();
			if ($ticketDetail->id) {
				$data['id']   = $ticketDetail->id;
				$data['html'] = view("customer/tickets/support-comment-item", ['detail' => $ticketDetail])
					->render();

				return response()->json($data, 200);
			} else {
				return response("Unable to insert comment", 500);
			}
		} else {
			return response("Ticket Not Found!", 404);
		}
	}
}
