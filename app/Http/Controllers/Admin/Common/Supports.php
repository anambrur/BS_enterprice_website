<?php

namespace App\Http\Controllers\Admin\Common;

use App\Model\Common\Order;
use App\Model\Common\Ticket;
use App\Model\Common\TicketsDetail;
use App\User;
use Illuminate\Http\Request;
use App\SM\SM;
use App\Http\Controllers\Controller;

class Supports extends Controller {
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$data['rightButton']['iconClass'] = 'fa fa-plus';
		$data['rightButton']['text']      = 'Add Support';
		$data['rightButton']['link']      = 'supports/create';
		$data['tickets']                  = Ticket::with( 'order', 'user' )
		                                          ->orderBy( "id", "desc" )
		                                          ->paginate( config( "constant.smPagination" ) );
		if ( \request()->ajax() ) {
			$json['data']         = view( 'sm-admin/common/supports/supports', $data )->render();
			$json['smPagination'] = view( 'sm-admin/common/common/pagination_links', [
				'smPagination' => $data['all_coupon']
			] )->render();

			return response()->json( $json );
		}

		return view( "sm-admin/common/supports/manage_support", $data );
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$data['rightButton']['iconClass'] = 'fa fa-support';
		$data['rightButton']['text']      = 'Support List';
		$data['rightButton']['link']      = 'supports';
		$data['users']                    = User::where( 'status', 1 )
		                                        ->get();
		$data["orders"]                   = Order::with( 'package', 'payment' )
		                                         ->where( function ( $where ) {
			                                         $where->where( 'order_status', 2 );
			                                         $where->orWhere( 'order_status', 3 );
		                                         } )
		                                         ->orderBy( "id", 'desc' )
		                                         ->get();

		return view( "sm-admin/common/supports/add_support", $data );
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request $request
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function store( Request $request ) {
		$this->validate( $request, [
			'customer_id' => 'required|integer',
			'order_id'    => 'required|integer',
			'subject'     => 'required|max:160',
			'message'     => 'required',
		] );
		$ticket           = new Ticket();
		$ticket->user_id  = $request->customer_id;
		$ticket->order_id = $request->order_id;
		$ticket->subject  = $request->subject;
		$ticket->message  = $request->message;
		$permission       = SM::current_user_permission_array();
		if ( SM::is_admin() || isset( $permission ) &&
		                       isset( $permission['supports']['support_status_update'] )
		                       && $permission['supports']['support_status_update'] == 1 ) {
			$ticket->status = $request->status;
		}
		$ticket->save();
		if ( $ticket->id ) {
			return redirect( SM::smAdminSlug( 'supports' ) )
				->with( "s_message", "Ticket Saved Successfully!" );
		} else {
			return redirect( SM::smAdminSlug( 'supports' ) )
				->with( "w_message", "Ticket Saved Failed! Please contact to admin." );
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int $id
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function show( $id ) {
		$data['rightButton']['iconClass'] = 'fa fa-support';
		$data['rightButton']['text']      = 'Support List';
		$data['rightButton']['link']      = 'supports';
		$data["ticket"]                   = Ticket::with( "order" )
		                                          ->where( 'id', $id )
		                                          ->first();
		if ( $data["ticket"] ) {
			$order_posts_per_page = SM::smGetThemeOption( "order_posts_per_page", config( 'constant.smPagination' ) );
			$data['details']      = TicketsDetail::where( 'ticket_id', $id )
			                                     ->orderBy( 'id', 'desc' )
			                                     ->paginate( $order_posts_per_page );
			$data['isFirstLoad']  = true;

			return view( "sm-admin/common/supports/view", $data );
		} else {
			return back()->with( "w_message", "Ticket Not Found!" );
		}
	}

	public function olderSupportDetail( $id ) {
		$ticket = Ticket::where( 'id', $id )
		                ->first();
		if ( $ticket ) {
			$data['isFirstLoad']  = false;
			$order_posts_per_page = SM::smGetThemeOption( "order_posts_per_page", config( 'constant.smPagination' ) );
			$data['details']      = TicketsDetail::where( 'ticket_id', $id )
			                                     ->orderBy( 'id', 'desc' )
			                                     ->paginate( $order_posts_per_page );

			$html = view( "sm-admin/common/supports/support-comment-loop", $data )->render();

			return response( $html, 200 );
		} else {
			return response( "Ticket Not Found!", 404 );
		}
	}

	public function newSupportDetail( $id, $lastId = null ) {
		$data['isFirstLoad'] = false;
		$query               = TicketsDetail::where( 'ticket_id', $id );
		if ( $lastId != null ) {
			$query->where( 'id', '>', $lastId );
		}
		$data['details'] = $query->orderBy( 'id', 'asc' )
		                         ->get();

		if ( $data['details'] && count( $data['details'] ) > 0 ) {
			$return['html'] = view( "sm-admin/common/supports/support-comment-loop", $data )->render();
			$return['html'] .= '<audio autoplay>
  <source src="' . asset( '/sm-admin/sound/messagebox.ogg' ) . '" type="audio/ogg">
  <source src="' . asset( '/sm-admin/sound/messagebox.mp3' ) . '" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>';
			$return['id']   = $data['details']->last()->id;
		} else {
			$return['html'] = '';
			$return['id']   = $lastId;
		}

		return response()->json( $return, 200 );
	}


	public function saveReplyTicket( Request $request ) {
		$this->validate( $request, [
			'ticket_id' => 'required|integer',
			'message'   => 'required',
		] );
		$ticket = Ticket::find( $request->ticket_id );
		if ( $ticket ) {
			$ticketDetail            = new TicketsDetail();
			$ticketDetail->user_id   = 1;
			$ticketDetail->ticket_id = $request->ticket_id;
			$ticketDetail->message   = $request->message;
			$ticketDetail->save();

			if ( $ticketDetail->id ) {
				$data['id']   = $ticketDetail->id;
				$data['html'] = view( "sm-admin/common/supports/support-comment-item", [ 'detail' => $ticketDetail ] )
					->render();

				return response()->json( $data, 200 );
			} else {
				return response( "Unable to insert comment", 500 );
			}
		} else {
			return response( "Ticket Not Found!", 404 );
		}
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int $id
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function destroy( $id ) {
		$ticket = Ticket::with( 'detail' )->find( $id );
		if ( count( $ticket ) > 0 ) {
			if ( $ticket->detail ) {
				foreach ( $ticket->detail as $detail ) {
					$detail->delete();
				}
			}
			$ticket->delete();

			echo 1;
			exit;
		} else {
			echo 0;
			exit;
		}
	}


	/**
	 * status change the specified resource from storage.
	 *
	 * @param  Request $request
	 *
	 * @return null
	 */
	public function support_status_update( Request $request ) {
		$this->validate( $request, [
			"post_id" => "required",
			"status"  => "required",
		] );

		$ticket = Ticket::find( $request->post_id );
		if ( count( $ticket ) > 0 ) {
			$ticket->status = $request->status;
			$ticket->update();
		}
		exit;
	}
}
