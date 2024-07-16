<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Portfolio as Portfolio_model;
use App\Model\Common\Category;
use App\Model\Common\Tag;
use App\SM\SM;

class Portfolios extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Gallery';
        $data['rightButton']['link'] = 'portfolios/create';
        $query = Portfolio_model::orderBy('id', 'desc');
        $data['portfolios'] = $query->paginate(config('constant.smPagination'));
        if ($request->ajax()) {
            $json['data'] = view('sm-admin/common/portfolios/portfolios', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['portfolios']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/portfolios/manage_portfolio', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['rightButton']['iconClass'] = 'fa fa-users';
        $data['rightButton']['text'] = 'Gallery List';
        $data['rightButton']['link'] = 'portfolios';

        $data["all_categories"] = Category::where(array("parent_id"=> 0,"category_type"=>2))->get();
        return view('sm-admin/common/portfolios/create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'categories' => 'required',
        ]);
        $data = new Portfolio_model();
        $data->title = $request->title;
        if (isset($request->image) && $request->image != '') {
            $data->image = $request->image;
        }
        $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
        $data['slug'] = SM::create_uri('portfolios', $slug);
        $data->link = $request->link;
        $data->sortby = $request->sortby;
         $data->duration = $request->duration;
        $data->description = $request->description;
    
        //multi image insert
        $myString = $request->image_gallery;
        $myArray = explode(',', $myString);
        $data->image_gallery = json_encode($myArray);
        //multi image insert
        $data->seo_title = $request->seo_title;
        $data->meta_key = $request->meta_key;
        $data->meta_description = $request->meta_description;
        if ($data->save()) {
            foreach ($request->categories as $cat) {
                $categories[$cat]['created_at'] = date("Y-m-d H:i:s");
                $categories[$cat]['updated_at'] = date("Y-m-d H:i:s");
                $catInfo = Category::find($cat);
                if (!empty($catInfo)) {
                    // if ( count( $catInfo ) > 0 ) {
                    $catInfo->increment("total_posts");
                }
            }
            $data->categories()->attach($categories);


            $tags = SM::insertTag($request->input("tags", ""));
            if ($tags) {
                foreach ($tags as $tag) {
                    $insTags[$tag]['created_at'] = date("Y-m-d H:i:s");
                    $insTags[$tag]['updated_at'] = date("Y-m-d H:i:s");
                    $tagInfo = Tag::find($tag);
                    if ($tagInfo) {
                        $tagInfo->increment("total_posts");
                    }
                }
                if ($insTags) {
                    $data->tags()->attach($insTags);
                }
            }

// echo'<pre>';
//             dd($data);
// exit();
            return redirect(SM::smAdminSlug("portfolios"))->with("s_message", "Portfolio successfully saved!");
        } else {
            return redirect(SM::smAdminSlug("blogs"))->with("w_message", "Portfolio save failed!");
        }

//        return redirect(config('constant.smAdminSlug') . '/portfolios')
//                        ->with('s_message', 'Portfolio created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data["blog_info"] = Portfolio_model::with("categories", "tags")->find($id);
        if (!empty($data["blog_info"])) {
            // if ( count( $data["blog_info"] ) > 0 ) {
            $data['rightButton']['iconClass'] = 'fa fa-list';
            $data['rightButton']['text'] = 'Blog List';
            $data['rightButton']['link'] = 'blogs';
            $data['rightButton2']['iconClass'] = 'fa fa-eye';
            $data['rightButton2']['text'] = 'View';
            $data['rightButton2']['link'] = "portfolios/" . $data['blog_info']->slug;

            $data['blog_info']->categories = SM::get_ids_from_data($data['blog_info']->categories);
            $data['blog_info']->tags = SM::sm_get_product_tags($data['blog_info']->tags);
            // $data['all_categories'] = Category::where('parent_id', 0)->get();
            $data["all_categories"] = Category::where(array("parent_id"=> 0,"category_type"=>2))->get();


            return view("sm-admin/common/portfolios/edit_portfolio", $data);
        } else {
            return redirect(SM::smAdminSlug("portfolios"))->with("w_message", "Portfolio Not Found!");
        }
//
//        $data['user'] = Portfolio_model::find($id);
//        // dd($data['user']);
//        $data['category_lists'] = Category::pluck('title', 'id');

        return view('sm-admin/common/portfolios/edit_portfolio', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
        ]);
        $data = Portfolio_model::find($id);
        $data->title = $request->title; 
        $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
        $data->slug = SM::create_uri('portfolios', $slug, $id);

        $data->link = $request->link;
        $data->sortby = $request->sortby;
        $data->duration = $request->duration;
        $data->description = $request->description;
        if (isset($request->image) && $request->image != '') {
            $data->image = $request->image;
        } 
        //multi image insert
        $myString = $request->image_gallery;
        $myArray = explode(',', $myString);
        $data->image_gallery = json_encode($myArray);
        //multi image insert
        $data->seo_title = $request->seo_title;
        $data->meta_key = $request->meta_key;
        $data->meta_description = $request->meta_description;
        // dd($data);
        $updateCount       = $data->update();
        if ( $updateCount > 0 ) {
            $oldCatIds = SM::get_ids_from_data( $data->categories );
            foreach ( $request->categories as $cat ) {
                $categories[ $cat ]['created_at'] = date( "Y-m-d H:i:s" );
                $categories[ $cat ]['updated_at'] = date( "Y-m-d H:i:s" );
                if ( ! in_array( $cat, $oldCatIds ) ) {
                    $catInfo = Category::find( $cat );
                    // if ( count( $catInfo ) > 0 ) {
                    if ( !empty($catInfo) ) {
                        $catInfo->increment( "total_posts" );
                    }
                }
            }
            $data->categories()->sync( $categories );


            $tags      = SM::insertTag( $request->input( "tags", "" ) );
            $oldTagIds = SM::get_ids_from_data( $data->tags );
            if ( $tags ) {
                foreach ( $tags as $tag ) {
                    $insTags[ $tag ]['created_at'] = date( "Y-m-d H:i:s" );
                    $insTags[ $tag ]['updated_at'] = date( "Y-m-d H:i:s" );
                    $tagInfo                       = Tag::find( $tag );
                    if ( ! in_array( $tag, $oldTagIds ) ) {
                        if ( !empty( $tagInfo ) ) {
                            // if ( count( $tagInfo ) > 0 ) {
                            $tagInfo->increment( "total_posts" );
                        }
                    }
                }
                if ( $insTags ) {
                    $data->tags()->sync( $insTags );
                }
            }

            return redirect( SM::smAdminSlug( "portfolios" ) )->with( "s_message", "Portfolio Updated Successfully!" );
        } else {
            return redirect( SM::smAdminSlug( "portfolios" ) )->with( "s_message", "Portfolio Update Failed!" );
        }

//        $data->save();
//        $data->categories()->sync($request->categories);
//        $data->tags()->sync($request->tags);
//        return redirect(config('constant.smAdminSlug') . '/portfolios')
//            ->with('s_message', 'Portfolio Update successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $portfolio = Portfolio_model::find($id);
        $portfolio->categories()->detach();
        $portfolio->tags()->detach();
        $portfolio->delete();

    }

}
