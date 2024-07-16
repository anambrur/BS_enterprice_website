<?php

namespace App\Http\Controllers\Admin\Common;

use App\Model\Common\Categoryable;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Category as Category_model;
use App\SM\SM;
use Illuminate\Support\Facades\Cache;

class Categories extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Category';
        $data['rightButton']['link'] = 'categories/create';

        $data['all_category'] = Category_model::where("parent_id", 0)
                ->orderBy("id", "desc")
                ->paginate(config("constant.smPagination"));
        if (\request()->ajax()) {
            $json['data'] = view('sm-admin/common/category/categories', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['all_category']
                    ])->render();

            return response()->json($json);
        }

        return view("sm-admin/common/category/manage_category", $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $data['rightButton']['iconClass'] = 'fa fa-list-alt';
        $data['rightButton']['text'] = 'Category List';
        $data['rightButton']['link'] = 'categories';
        $data["categories"] = Category_model::where("parent_id", 0)
                ->orderBy("id", "desc")
                ->paginate(config("constant.smPagination"));

        return view("sm-admin/common/category/add_category", $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required|max:100',
            "parent_id" => "required",
            'seo_title' => 'max:70',
            'meta_description' => 'max:215'
        ]);
        $category = $request->all();
        $permission = SM::current_user_permission_array();
        if (SM::is_admin() || isset($permission) &&
                isset($permission['categories']['category_status_update']) && $permission['categories']['category_status_update'] == 1) {
            $category['status'] = $request->status;
        }
        if (isset($request->image) && $request->image != '') {
            $category['image'] = $request->image;
        }
        $category['category_type'] = $request->input("category_type");
        $slug = ( trim($request->slug) != '' ) ? $request->slug : $request->title;
        $category['slug'] = SM::create_uri('categories', $slug);
        $category['created_by'] = SM::current_user_id();
        $category['seo_title'] = $request->input("seo_title", "");       
        $category['meta_key'] = $request->input("meta_key", "");
        $category['meta_description'] = $request->input("meta_description", "");
       
        Category_model::create($category);
        $this->removeThisCache();
        // dd($category);
        // exit();
        return redirect(SM::smAdminSlug('categories'))
                        ->with('s_message', 'Category created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
//	public function show( $id ) {
//		//
//	}

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $data["category_info"] = Category_model::find($id);
        // if (count($data["category_info"]) > 0) {
        if (!empty($data["category_info"])) {
            $data['rightButton']['iconClass'] = 'fa fa-list-alt';
            $data['rightButton']['text'] = 'Category List';
            $data['rightButton']['link'] = 'categories';
            $data["categories"] = Category_model::where("parent_id", 0)
                    ->orderBy("id", "desc")
                    ->paginate(config("constant.smPagination"));

            return view("sm-admin/common/category/edit_category", $data);
        } else {
            return redirect(SM::smAdminSlug('categories'))
                            ->with('s_message', 'Category not found!');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $this->validate($request, [
            'title' => 'required|max:100',
            "parent_id" => "required",
            'seo_title' => 'max:70',
            'meta_description' => 'max:215'
        ]);
        $category = Category_model::find($id);
        // if (count($category) > 0) {
        if (!empty($category)) {
            $this->removeThisCache($category->slug);
            $category->title = $request->title;
            $category->parent_id = $request->parent_id;
            $category->description = $request->description;
            $category->category_type = $request->category_type;
            $category->seo_title = $request->input("seo_title", "");
            $category->meta_key = $request->input("meta_key", "");
            $category->meta_description = $request->input("meta_description", "");
            $permission = SM::current_user_permission_array();
            if (SM::is_admin() || isset($permission) &&
                    isset($permission['categories']['category_status_update']) && $permission['categories']['category_status_update'] == 1) {
                $category->status = $request->status;
            }
            if (isset($request->image) && $request->image != '') {
                $category->image = $request->image;
            }

            $slug = ( trim($request->slug) != '' ) ? $request->slug : $request->title;
            $category->slug = SM::create_uri('categories', $slug, $id);
            $category->modified_by = SM::current_user_id();
            $category->update();

            return redirect(SM::smAdminSlug('categories'))
                            ->with('s_message', 'Category updated successfully!');
        } else {
            return redirect(SM::smAdminSlug('categories'))
                            ->with('w_message', 'Category not found!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    // public function destroy($id) {
        
    //     $cat = Category_model::find($id);
    //     if (count($cat) > 0) {
    //         $catgoryables = Categoryable::where('category_id', $id)->get();
    //         if (count($catgoryables) > 0) {
    //             foreach ($catgoryables as $catgoryable) {
    //                 $catgoryable->delete();
    //             }
    //         }
    //         $this->removeThisCache($cat->slug);
    //         $cat->delete();

    //         echo 1;
    //         exit;
    //     } else {
    //         echo 0;
    //         exit;
    //     }
    // }


    public function destroy($id)
    {
        $cat = Category_model::find($id);
        if (!empty($cat)) {
            if ($cat->delete() > 0) {
                $this->removeThisCache($cat->slug);
                return response(1);
            }
        }

        return response(0);
    }


    /**
     * status change the specified resource from storage.
     *
     * @param  Request $request
     *
     * @return null
     */
    public function category_status_update(Request $request) {
        $this->validate($request, [
            "post_id" => "required",
            "status" => "required",
        ]);

        $cat = Category_model::find($request->post_id);
        if (count($cat) > 0) {
            $cat->status = $request->status;
            $cat->update();
            $this->removeThisCache($cat->slug);
        }
        exit;
    }

    private function removeThisCache($slug = null) {
        if ($slug != null) {
            SM::removeCache('category_' . $slug);
        }
        SM::removeCache('categories_have_posts');
        SM::removeCache('categories_have_not_post');
        SM::removeCache(['category'], 1);
        SM::removeCache(['categoryBlogs'], 1);
    }

}
