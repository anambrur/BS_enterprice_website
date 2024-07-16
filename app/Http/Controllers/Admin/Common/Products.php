<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Category as Category_model;
use App\Model\Common\Suppliers as Suppliers_model;
use App\Model\Common\Products as Products_model;
use App\Model\Common\Category;

class Products extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {

        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Product';
        $data['rightButton']['link'] = 'products/create';
        $data["categories"] = Category::all();
        $query = Products_model::orderBy('products.id', 'desc');
        $data['products'] = $query->paginate(config('constant.smPagination'));
        if ($request->ajax()) {
            $json['data'] = view('sm-admin/common/products/products', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['products']
                    ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/products/manage_product', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
     
        $data['rightButton']['iconClass'] = 'fa fa-users';
        $data['rightButton']['text'] = 'Product List';
        $data['rightButton']['link'] = 'products';
        $data["categories"] = Category_model::where("parent_id", 0)
                ->orderBy("id", "desc")
                ->paginate(config("constant.smPagination"));

               
       
        return view('sm-admin/common/products/create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $data) {
        
        $this->validate($data, [
            'title' => 'required',
        ]);
     
        $request = $data->all();
       
        $product = new Products_model();
        
        $product->title = $request['title'];      
        $product->slug = $request['slug'];      
         
        $product->category_id = $request['category_id'];
        $product->batch_no = $request['batch_no'];
        $product->description = $request['description'];
        $product->status = $request['status'];
       
        if (isset($request['image']) && $request['image'] != '') {
            $product->image = $request['image'];
        }
       
        $product->save();
       
        return redirect(config('constant.smAdminSlug') . '/products')
                        ->with('s_message', 'Product created successfully!');
    }

    public function product_status_update(Request $request) {
        $this->validate($request, [
            "post_id" => "required",
            "status" => "required",
        ]);

        $pro = Products_model::find($request->post_id);
        if (count($pro) > 0) {
            $pro->status = $request->status;
            $pro->update();
        }
        exit;
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
      
         $data["categories"] = Category_model::where("parent_id", 0)
                ->orderBy("id", "desc")
                ->paginate(config("constant.smPagination"));
      
        $data['product_info'] = Products_model::find($id);

        
        return view('sm-admin/common/products/edit_product', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $data) {
       
        
        $id = $request['id'];
        $product = Products_model::find($id);       
        $product->title = $request['title'];    
        $product->slug = $request['slug'];
        $product->category_id = $request['category_id'];
        $product->batch_no = $request['batch_no'];
        $product->description = $request['description'];
        $product->status = $request['status'];
        
        if (isset($request['image']) && $request['image'] != '') {
            $product->image = $request['image'];
        }
        
        $product->save();
      
        return redirect(config('constant.smAdminSlug') . '/products')
                        ->with('s_message', 'Product created successfully!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy_old($id) {
        $data= Products_model::find($id); 


        // $data->products()->detach(); 
        $data->delete(); 
    }


    public function destroy($id)
    {
        $data = Products_model::find($id);
        $data->delete();
        
    }


}
