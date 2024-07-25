<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Certification;

class Certifications extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $data['rightButton']['iconClass'] = 'fa fa-plus';
        // $data['rightButton']['text']      = 'Add certification';
        // $data['rightButton']['link']      = 'certification/add_certification';
        // $data['certification']                  = Certification::orderBy('id', 'desc')
        //     ->paginate(config('constant.smPagination'));
        // if (\request()->ajax()) {
        //     $json['data']         = view('sm-admin/common/certification/certification_list', $data)->render();
        //     $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
        //         'smPagination' => $data['certification']
        //     ])->render();

        //     return response()->json($json);
        // }
        // dd($data);
        $data = Certification::orderBy('id','DESC')->get();
        // dd($data);

        return view('sm-admin/common/certification/certification_list', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // dd('Certifications create');
        $data['rightButton']['iconClass'] = 'fa fa-certifications';
        $data['rightButton']['text']      = 'Certification List';
        $data['rightButton']['link']      = 'certifications';

        return view('sm-admin/common/certification/add_certification', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            "title" => "required",
            "description"    => "required|max:500",
            "image"  => "required",
            "status"  => "required"
        ]);
        // dd($request->all());
        $certfication = Certification::create(['title' => $request->title, 'description' => $request->description, 'image' => $request->image, 'status' => $request->status]);
        return redirect()->route('listCertificate')->with('s_message', 'Certification successfully added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $certification = Certification::where('id',$id)->get();
        // dd($certfication);
        return view('sm-admin.common.certification.edit_certification',compact('certification'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        dd($id);
    }
}
