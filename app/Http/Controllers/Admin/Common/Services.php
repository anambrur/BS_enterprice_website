<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Services as Services_model;
use App\Model\Common\Category;
use App\SM\SM;
use Illuminate\Support\Facades\Auth;
class Services extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Services';
        $data['rightButton']['link'] = 'services/create';
        $query = Services_model::orderBy('id', 'desc');
        $data['services'] = $query->paginate(config('constant.smPagination'));
        if ($request->ajax()) {
            $json['data'] = view('sm-admin/common/services/services', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['services']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/services/manage_services', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $data['rightButton']['iconClass'] = 'fa fa-users';
        $data['rightButton']['text'] = 'Services List';
        $data['rightButton']['link'] = 'services';

        $data['category_lists'] = Category::where('parent_id', 0)->pluck('title', 'id'); 
        return view('sm-admin/common/services/create', $data);
    }

    public function findSubCategory(Request $request) {
        $sub_category_data = Category::select('title', 'id')->where('parent_id', $request->id)->take(20)->get();
        return response()->json($sub_category_data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'categories' => 'required',
        ]);
        $data = new Services_model();
        $data->title = $request->title; 
        $data->slug = $request->slug; 
        $data->description = $request->description; 
        if (isset($request->image) && $request->image != '') {
            $data->image = $request->image;
        } 
        $data->seo_title = $request->seo_title;
        $data->meta_key = $request->meta_key;
        $data->meta_description = $request->meta_description;

        // $page->created_by = SM::current_user_id();
        // $slug = ( trim( $request->slug ) != '' ) ? $request->slug : $request->title;
        // $page->slug = SM::create_uri( 'services', $slug );

        // dd($data);
        // exit();
        $data->save();
        $data->categories()->attach($request->categories);  
        $data->categories()->attach($request->sCategories);  
        return redirect(config('constant.smAdminSlug') . '/services')
                        ->with('s_message', 'Services created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $data['user'] = Services_model::find($id);
        $data['category_lists'] = Category::where('parent_id', 0)->pluck('title', 'id');
        return view('sm-admin/common/services/edit_services', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
       $this->validate($request, [
        'title' => 'required',
    ]);
       $data = Services_model::find($id);
        $data->title = $request->title; 
        $data->slug = $request->slug; 
        $data->description = $request->description; 
        if (isset($request->image) && $request->image != '') {
            $data->image = $request->image;
        } 
        $data->seo_title = $request->seo_title;
        $data->meta_key = $request->meta_key;
        $data->meta_description = $request->meta_description;

        // $page->created_by = SM::current_user_id();
        // $slug = ( trim( $request->slug ) != '' ) ? $request->slug : $request->title;
        // $page->slug = SM::create_uri( 'services', $slug );

        // dd($data);
        // exit();
        $data->save();
        $data->categories()->attach($request->categories);  
        $data->categories()->attach($request->sCategories);  
        return redirect(config('constant.smAdminSlug') . '/services')
        ->with('s_message', 'Services Update successfully!');
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $data= Services_model::find($id); 
        $data->categories()->detach(); 
        $data->delete(); 
       
    }
}
