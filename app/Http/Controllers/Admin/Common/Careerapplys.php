<?php

namespace App\Http\Controllers\Admin\Common;

use App\Model\Common\Career;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Careerapply;
use App\SM\SM;
use Mail;

class Careerapplys extends Controller
{
    function index()
    {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Career';
        $data['rightButton']['link'] = 'careers/create';
        $data['pages'] = Careerapply::orderBy('created_at', 'desc')
            ->paginate(config('constant.smPagination'));
        if (\request()->ajax()) {
            $json['data'] = view('sm-admin/common/career/career_apply/careers', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['pages']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/career/career_apply/index', $data);
    }

    public function get_send_mail_career_apply(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            $row = Careerapply::find($request->payment_id);
            if ($row) {
                $output .= '<div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">' . $row->name . '</h4>
         </div>
          <form action="' . route('store_send_mail_career_apply') . '" method="POST" enctype="multipart/form-data">  
          <input type="hidden" name="_token" value="' . csrf_token() . '" > 
         <div class="modal-body">
            <div class="row">
               <div class="col-md-12">
                <div class="form-group row">  
                     <label class="col-md-3 col-form-label">To</label>
                      <div class="col-md-8">
                         <input type="email" value="' . $row->email . '" required="true" name="email" class="form-control"> 
                    </div> 
               </div>  
               <div class="form-group row">  
                     <label class="col-md-3 col-form-label">Subject</label>
                      <div class="col-md-8">
                         <input type="text" required="true" name="subject"  placeholder="Subject" class="form-control"> 
                    </div> 
               </div>  
                <div class="form-group row">  
                     <label class="col-md-3 col-form-label">File</label>
                      <div class="col-md-8">
                         <input type="file" name="a_file" class="form-control"> 
                    </div> 
               </div> 
               <div class="form-group row">  
                     <label class="col-md-3 col-form-label">Text</label>
                      <div class="col-md-8">
                      <textarea cols="49" rows="5" name="message"></textarea>                       
                    </div> 
               </div>  
            </div>  
         </div>
            <div class="modal-footer">
               <button type="button" id="close" class="btn btn-danger pull-left" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-success" id="btn">Save</button>
            </div>
            </form>
         </div>';
            } else {
                $output .= 'false';
            }
            echo $output;


        }
    }

    public function store_send_mail_career_apply(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'subject' => 'min:3',
            'message' => 'min:10'
        ]);

        $data = array(
            'email_from' => 'nextpagetl@gmail.com',
            'email' => $request->email,
            'subject' => $request->subject,
            'bodyMessage' => $request->message,
            'a_file' => $request->a_file
        );

        Mail::send('sm-admin.common.career.career_apply.mail_templete', $data, function ($message) use ($data) {
            $message->from($data['email_from']);
            $message->to($data['email']);
//            $message->to('mmsumon799@gmail.com');
            $message->subject($data['subject']);

            if ($data['a_file']) {
                $message->attach($data['a_file']->getRealPath(), array(
                        'as' => 'a_file.' . $data['a_file']->getClientOriginalExtension(),
                        'mime' => $data['a_file']->getMimeType())
                );
            }

        });

        return redirect()->back()->with('s_message', 'Email was Sent!');
    }


//    public function store_send_mail_career_apply(Request $request)
//    {
//        $this->validate($request, [
//            'email_to' => 'required|email',
//            'subject' => 'min:3',
//            'message' => 'min:10'
//        ]);
//
//        $data = array(
//            'email_from' => 'nextpagetl@gmail.com',
//            'email_to' => $request->email_to,
//            'subject' => $request->subject,
//            'bodyMessage' => $request->message,
//            'a_file' => $request->a_file
//        );
//
//        Mail::send('sm-admin.common.career.career_apply.mail_templete', $data, function ($message) use ($data) {
//            $message->from($data['email_from']);
//            $message->to($data['email_to']);
//            $message->subject($data['subject']);
//            $message->attach($data['a_file']->getRealPath(), array(
//                    'as' => 'a_file.' . $data['a_file']->getClientOriginalExtension(),
//                    'mime' => $data['a_file']->getMimeType())
//            );
//        });
//        return redirect()->back()->with('s_message', 'Email was Sent!');
//    }

  
    public function destroy($id)
    {
        $page = Careerapply::find($id);
        // if ( count( $page ) > 0 ) {
        if (!empty($page)) {
            $this->removeThisCache($page->slug);
            $page->delete();

            echo 1;
            exit;
        } else {
            echo 0;
            exit;
        }
    }

    private function removeThisCache($slug = null)
    {
        if ($slug != null) {
            SM::removeCache('career_' . $slug);
        }
        SM::removeCache(['career'], 1);
    }
}
