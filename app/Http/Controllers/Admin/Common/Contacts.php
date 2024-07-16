<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Contact as Contact_model;
use App\Model\Common\Category;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;

class Contacts extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) { 
        $query = Contact_model::orderBy('id', 'desc');
        $data['contacts'] = $query->paginate(config('constant.smPagination'));
        if ($request->ajax()) {
            $json['data'] = view('sm-admin/common/contacts/contacts', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['contacts']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/contacts/manage_contacts', $data);
    } 
     public function get_send_mail_contact(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            $row = Contact_model::find($request->payment_id);
            if ($row) {
                $output .= '<div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">' . $row->fullname . '</h4>
         </div>
          <form action="' . route('store_send_mail_contact') . '" method="POST" enctype="multipart/form-data">  
          <input type="hidden" name="_token" value="' . csrf_token() . '" > 
         <div class="modal-body">
            <div class="row">
               <div class="col-md-12">
                <div class="form-group row">  
                     <label class="col-md-3 col-form-label">To</label>
                      <div class="col-md-8">
                         <input type="email" value="' . $row->email . '" required="true" name="email" class="form-control"> 
                          <input type="text" name="fullname" value="' . $row->fullname . '"> 
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

    public function store_send_mail_contact(Request $request)
    {
        // $this->validate($request, [
        //     'email' => 'required|email',
        //     'subject' => 'min:3',
        //     'message' => 'min:3'
        // ]);
        $this->validate( $request, [
            "fullname" => "required|min:3|max:40",
            "email"    => "required|email",
            "subject"  => "required|min:3|max:100",
            "message"  => "required|min:5|max:500"
        ] );

        $data = array(
            'email_from' => 'nextpagetl@gmail.com',
            'email' => $request->email,
            'subject' => $request->subject,
            'bodyMessage' => $request->message,
            'a_file' => $request->a_file
        );

        Mail::to( $request->email )
            ->queue( new ContactMail( (object) $request->all() ) );

//         Mail::send('sm-admin.common.career.career_apply.mail_templete', $data, function ($message) use ($data) {
//             $message->from($data['email_from']);
//             $message->to($data['email']);
// //            $message->to('mmsumon799@gmail.com');
//             $message->subject($data['subject']);

//             if ($data['a_file']) {
//                 $message->attach($data['a_file']->getRealPath(), array(
//                         'as' => 'a_file.' . $data['a_file']->getClientOriginalExtension(),
//                         'mime' => $data['a_file']->getMimeType())
//                 );
//             }

//         });

        return redirect()->back()->with('s_message', 'Email was Sent!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $contact= Contact_model::find($id);  
        $contact->delete(); 
       
    }

}
