<?php

namespace App\Http\Controllers\Front;

// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Input;
use App\Model\Common\Career;
use App\Model\Common\Careerapply;
use App\Model\Common\Products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\ContactMail;
use App\Mail\ServiceMail;
use App\Mail\SubscribeMail;
use App\Mail\CareerApplyMail;
use App\Mail\PackageOrderMail;
use App\Rules\SmCustomEmail;
use Illuminate\Support\Facades\Mail;
use App\Model\Common\Setting as S_model;
use App\Model\Common\Page as Page_model;
use App\Model\Common\Package;
use App\Model\Common\Package_detail;
use App\Model\Common\Slider;
use App\Model\Common\Portfolio;
use App\Model\Common\Category;
use App\Model\Common\Tag;
use App\Model\Common\Blog;
use App\Model\Common\Comment;
use App\Model\Common\Contact;
use App\Model\Common\Order;
use App\SM\SM;
use Carbon\Carbon;
use DB;
use Auth;
use Session;
use App\Model\Common\Category as Category_model;
use App\Model\Common\Products as Products_model;



class FrontEnd extends Controller
{

    public function index()
    {
        // redirect('login');
        $data = $this->homePageData();
        //
        // return view("frontend.home", $data);
        return view("frontend.home1", $data);
    }

    public function new_home_page()
    {
        $data = $this->homePageData();
        $query = Products_model::orderBy('products.id', 'desc');
        $data['products'] = $query->paginate(config('constant.smPagination'));
        $data["categories"] = Category_model::where("category_type", 1)->where("parent_id", 0)
            ->orderBy("id", "desc")
            ->paginate(4);

        $data["sliders"] = Slider::orderBy("id", "desc")->where("status", 1)->get();

        // dd($data["sliders"]);   

        return view("frontend.home", $data);
    }

    /**
     * Home page all data, it call from index of page, login and registration.
     * @return array
     */
    // public function homePageData() {
    //     $data["title"]   = "Home";
    //     $data["is_home"] = 1;
    //     $key             = 'homeContent';
    //     $data["sliders"] = SM::getCache( 'homeSlider', function () {
    //         return Slider::where( "status", 1 )->get();
    //     } );

    //     $data["cases"]       = SM::getCache( 'homeCases', function () {
    //         $case_show = SM::smGetThemeOption( "case_show", 3 );

    //         return Portfolio::where( "status", 1 )
    //                     ->orderBy( "id", "desc" )
    //                     ->limit( $case_show )
    //                     ->get();
    //     } );
    //     $data["blogs"]       = SM::getCache( 'homeBlogs', function () {
    //         $blog_show = SM::smGetThemeOption( "blog_show", 6 );

    //         return Blog::with( "user" )
    //                    ->where( "status", 1 )
    //                    ->orderBy( "id", "desc" )
    //                    ->limit( $blog_show )
    //                    ->get();
    //     } );
    //     $data['homeContent'] = \View::make( 'partials.home', $data )->render();

    //     return $data;
    // }

    public function homePageData()
    {
        $data['s_info'] = S_model::all();
        $data["sliders"] = Slider::orderBy("id", "desc")->where("status", 1)->get();
        $data["categories"] = Category::all();
        $data["categoryables"] = DB::table('categoryables')
            ->join('categories', 'categoryables.category_id', '=', 'categories.id')
            ->groupBy('category_id')
            ->where('categoryable_type', 'App\Model\Common\Portfolio')
            ->get();

        $data["portfolios_data"] = Portfolio::orderBy('id', 'ASC')->take(12)->get();

        // $data["portfolios_data"]  = DB::table('portfolios') 
        //                     ->leftJoin('categoryables', 'categoryables.categoryable_id', '=', 'portfolios.id') 
        //                     ->select('portfolios.*', 'categoryables.category_id')
        //                     // ->groupBy('categoryable_id')
        //                     ->latest()
        //                     ->get(); 
        // dd( $data["portfolios_data"]);
        $data["blogs"] = SM::getCache('homeBlogs', function () {
            $blog_show = SM::smGetThemeOption("blog_show", 6);

            return Blog::with("user")
                ->where("status", 1)
                ->orderBy("id", "desc")
                ->limit($blog_show)
                ->get();
        });
        //    dd($data);
        //         exit();
        $page = \request()->input('page', 0);
        $key = 'package' . $page;
        $data['packages'] = SM::getCache($key, function () {
            $package_posts_per_page = SM::smGetThemeOption("package_posts_per_page", 12);

            return Package::with('detail')
                ->where("status", 1)
                ->orderBy('id', 'desc')
                ->paginate($package_posts_per_page);
        });

        $data['homeContent'] = \View::make('frontend.home', $data)->render();

        return $data;
        // return view('frontend.home', $data);
    }

    public function about()
    {
        $data['seo_title'] = SM::smGetThemeOption("about_seo_title");
        $data['meta_keywords'] = SM::smGetThemeOption("about_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("about_meta_description");
        return view("frontend.page.about", $data);
    }


    public function product()
    {

        $data['categorys'] = Category::where('category_type', 1)->orderBy("id", "desc")->paginate(10);
        $query = Products::orderBy('products.id', 'desc');
        $data['products'] = $query->paginate(config('constant.smPagination'));

        // dd($data['categorys']);
        // exit();

        return view("frontend.page.product", $data);
    }
    public function productview($slug = NULL)
    {
        if ($slug) {
            $categoryInfo = Category::with('products', 'subcategories')->where("slug", $slug)->first();
            if ($categoryInfo != NULL) {
                $category_id = $categoryInfo->id;
                $data['categoryInfo'] = $categoryInfo;
                $data['categorys'] = Category::with('subcategories')->where('parent_id', 0)->where('category_type', 1)->orderBy("id", "desc")->paginate(10);
                return view("frontend.page.productview", $data);
            }
        } else {
            return back();
        }
    }

    public function partner()
    {



        return view("frontend.page.partner");
    }

    // public function productview($slug)
    // {   
    //     $data["productview"] = Products::where('slug', $slug)->first();
    //     return view("frontend.page.productview", $data);
    // }

    public function team($slug)
    {

        $data['slug'] = $slug;
        $data['seo_title'] = SM::smGetThemeOption("team_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("team_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("team_meta_description");

        return view("frontend.page.team", $data);
    }

    public function testimonial()
    {
        $data['testimonial_title'] = SM::smGetThemeOption("testimonial_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("testimonial_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("testimonial_meta_description");

        return view("frontend.page.testimonial", $data);
    }

    /**
     * Category page display by category slug
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public function category($slug)
    {
        $data["categoryInfo"] = SM::getCache('category_' . $slug, function () use ($slug) {
            return Category::with("blogs")
                ->where("slug", $slug)
                ->where('status', 1)
                ->first();
        });
        if (!empty($data["categoryInfo"])) {
            // if ( count( $data["categoryInfo"] ) > 0 ) {
            $page = \request()->input('page', 0);
            $key = 'categoryBlogs_' . $data["categoryInfo"]->id . '_' . $page;
            $data["blogs"] = SM::getCache(
                $key,
                function () use ($data) {
                    $blog_posts_per_page = SM::smGetThemeOption(
                        "blog_posts_per_page",
                        config("constant.smFrontPagination")
                    );

                    return $data["categoryInfo"]->blogs()
                        ->where("status", 1)
                        ->paginate($blog_posts_per_page);
                },
                ['categoryBlogs']
            );
            // var_dump($data);
            // exit();
            return view('frontend.page.category', $data);
        } else {
            return abort(404);
        }
    }


    /**
     * Tag page info by tag slug
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public function tag($slug)
    {
        $data["tagInfo"] = SM::getCache('tag_' . $slug, function () use ($slug) {
            return Tag::with("blogs")
                ->where("slug", $slug)
                ->where('status', 1)
                ->first();
        });
        if (!empty($data["tagInfo"])) {
            // if ( count( $data["tagInfo"] ) > 0 ) {
            $page = \request()->input('page', 0);
            $key = 'tagBlogs_' . $data["tagInfo"]->id . '_' . $page;
            $data["blogs"] = SM::getCache($key, function () use ($data) {

                $blog_posts_per_page = SM::smGetThemeOption(
                    "blog_posts_per_page",
                    config("constant.smFrontPagination")
                );

                return $data["tagInfo"]->blogs()
                    ->where("status", 1)
                    ->paginate($blog_posts_per_page);
            }, ['tagBlogs']);
            $data['key'] = $key;

            return view('frontend.page.tag', $data);
        } else {
            return abort(404);
        }
    }

    public function blog()
    {
        $page = \request()->input('page', 0);
        $key = 'blogs_page_' . $page;

        $data["blogPost"] = SM::getCache($key, function () {
            $blog_posts_per_page = SM::smGetThemeOption(
                "blog_posts_per_page",
                config(
                    "constant.smFrontPagination"
                )
            );

            return Blog::with('user')
                ->where("is_sticky", 0)
                ->where("status", 1)
                ->orderBy("id", "desc")
                ->paginate($blog_posts_per_page);
        }, ['blogs']);

        if (\request()->ajax()) {
            $html = view("blogs/blog_list_item", $data)->render();

            return response($html);
        } else {
            $data["stickyBlogPost"] = SM::getCache('stickyBlogs', function () {
                return Blog::where("is_sticky", 1)
                    ->where("status", 1)
                    ->orderBy("id", "desc")
                    ->limit(9)
                    ->get();
            });

            $data['seo_title'] = SM::smGetThemeOption("blog_seo_title");
            $data['meta_description'] = SM::smGetThemeOption("blog_meta_keywords");
            $data['meta_description'] = SM::smGetThemeOption("blog_meta_description");

            return view("frontend.blogs.blog", $data);
        }
    }

    public function career()
    {
        $data['careers'] = Career::where('end_date', '>', Carbon::now())->latest()->get();

        $data['seo_title'] = SM::smGetThemeOption("career_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("career_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("career_meta_description");

        return view("frontend.page.career", $data);
    }

    public function careerDetail($slug)
    {
        $data['careerDetail'] = Career::where('slug', $slug)->first();

        $data['seo_title'] = SM::smGetThemeOption("career_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("career_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("career_meta_description");
        return view("frontend.page.careerDetail", $data);
    }

    public function get_career_apply(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            $row = Career::find($request->payment_id);
            if ($row) {
                $output .= '<div class="modal-header">
            
            <h4 class="modal-title">' . $row->title . '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></h4>
         </div>
          <form action="' . route('store_career_apply') . '" method="POST" enctype="multipart/form-data">  
          <input type="hidden" name="_token" value="' . csrf_token() . '" > 
         <div class="modal-body"> 
               <div class="col-md-12">
                <div class="form-group row">  
                     <label class="col-md-4 col-form-label">Name</label>
                      <div class="col-md-8">
                         <input type="text" required="true" name="name" placeholder="Name" class="form-control"> 
                    </div> 
               </div>  
               <div class="form-group row">  
                     <label class="col-md-4 col-form-label">Email</label>
                      <div class="col-md-8">
                         <input type="email" required="true" name="email" placeholder="Email" class="form-control"> 
                    </div> 
               </div>  
               <div class="form-group row">  
                     <label class="col-md-4 col-form-label">CV</label>
                      <div class="col-md-8">
                         <input type="file" name="image" class="form-control"> 
                    </div> 
               </div>  
            </div> 
            <input type="hidden" name="career_id" value="' . $row->id . '"> 
         </div>
            <div class="modal-footer">
               <button type="button" id="close" class="btn btn-danger" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-success pull-right" id="btn">Submit</button>
            </div>
            </form> ';
            } else {
                $output .= 'false';
            }
            echo $output;
        }
    }

    //    public function store_career_apply(Request $request)
    //    {
    //
    //        $this->validate($request, [
    //            'name' => 'required',
    //            'email' => 'required|email',
    //            'image' => 'required|mimes:jpeg,bmp,png,jpg,pdf,docx,doc'
    ////            'image' => 'required|file|max:5000|mimes:pdf,docx,doc',
    //        ]);
    //
    //        // get form image
    //        $image = $request->file('image');
    //        $slug = str_slug($request->name);
    //        if (isset($image)) {
    ////            make unique name for image
    //            $currentDate = Carbon::now()->toDateString();
    //            $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();
    ////            check Post dir is exists
    //            if (!Storage::disk('public')->exists('career')) {
    //                Storage::disk('public')->makeDirectory('career');
    //            }
    ////            resize image for Post and upload
    //            $postImage = Image::make($image)->stream();
    //            Storage::disk('public')->put('career/' . $imageName, $postImage);
    //
    //        } else {
    //            $imageName = "default.png";
    //        }
    //
    //        $post = new Careerapply();
    //        $post->career_id = $request->career_id;
    //        $post->name = $request->name;
    //        $post->email = $request->email;
    //        $post->image = $imageName;
    //
    //        $post->save();
    //        Session::flash('flash_message', 'Mail successfully send. We will contact you as soon as possible.');
    //        return redirect()->back();
    //
    //    }

    public function store_career_apply(Request $request)
    {

        $this->validate($request, [
            'f_name' => 'required',
            'email' => 'required|email',
            // 'image' => 'required|mimes:jpeg,bmp,png,jpg,pdf,docx,doc,pdf'
        ]);
        $contact = new Careerapply();
        $contact->career_id = Input::get('car_id');
        $contact->name = Input::get('f_name');
        $contact->l_name = Input::get('l_name');
        $contact->gender = Input::get('gender');
        $contact->phone = Input::get('phone');
        $contact->email = Input::get('email');
        $contact->job_category = Input::get('job_category');
        $contact->p_thana = Input::get('p_thana');
        $contact->p_district = Input::get('p_district');
        $contact->p_division = Input::get('p_division');
        $contact->p_address = Input::get('p_address');
        $contact->per_thana = Input::get('per_thana');
        $contact->per_district = Input::get('per_district');
        $contact->per_division = Input::get('per_division');
        $contact->per_address = Input::get('per_address');
        if ($contact->save()) {
            $time = time();
            if (Input::hasFile('image')) {
                $file = Input::file('image');
                $image = $time . '.' . $file->getClientOriginalName();
                $file->move(storage_path() . '/app/public/career', $image);
                $contact->image = $image;
                $contact->save();
            }
        }
        if ($contact->save()) {
            $time = time();
            if (Input::hasFile('cv')) {
                $file = Input::file('cv');
                $cv = $time . '.' . $file->getClientOriginalName();
                $file->move(storage_path() . '/app/public/career', $image);
                $contact->cv = $cv;
                $contact->save();
            }
        }

        //    Mail::to( $request->email )
        // ->queue( new ContactMail( (object) $request->all() ) );

        //     Mail::to( $request->email )
        //  ->queue( new CareerApplyMail( (object) $request->email ) );

        return back()->with('flash_message', 'Apply successful. We will contact you as soon as possible.');
    }

    public function get_package_order(Request $request)
    {

        if ($request->ajax()) {
            $output = '';
            $user = Auth::user();
            $row = Package_detail::find($request->payment_id);
            if ($row) {
                $output .= '<div class="modal-header">
            
            <h4 class="modal-title">' . $row->package->title . ' (' . $row->title . ')<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></h4>
         </div>
          <form action="' . route('store_package_order') . '" method="POST" enctype="multipart/form-data">  
          <input type="hidden" name="_token" value="' . csrf_token() . '" > 
         <div class="modal-body"> 
               <div class="col-md-12"> 
               <div class="form-group row">  
                     <label class="col-md-4 col-form-label">Message</label>
                      <div class="col-md-8">
                         <input type="text" name="message" class="form-control"> 
                    </div> 
               </div>  
            </div> 
            <input type="hidden" name="user_id" value="' . $user->id . '"> 
            <input type="hidden" name="username" value="' . $user->username . '"> 
            <input type="hidden" name="email" value="' . $user->email . '"> 
            <input type="hidden" name="package_id" value="' . $row->package->id . '"> 
            <input type="hidden" name="package_title" value="' . $row->package->title . '"> 
            <input type="hidden" name="pack_title" value="' . $row->title . '"> 
            <input type="hidden" name="package_detail_id" value="' . $row->id . '">
            <input type="hidden" name="package_type" value="' . $row->id . '">
            <input type="hidden" name="package_detail_type" value="' . $row->id . '"> 
            <input type="hidden" name="rate" value="' . $row->price . '"> 
            <input type="hidden" name="qty" value="1"> 
            <input type="hidden" name="total" value="' . $row->price . '"> 
            <input type="hidden" name="net_total" value="' . $row->price . '"> 
            <input type="hidden" name="created_by" value="1"> 
         </div>
            <div class="modal-footer">
               <button type="button" id="close" class="btn btn-danger" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-success pull-right" id="btn">Submit</button>
            </div>
            </form> ';
            } else {
                $output .= 'false';
            }
            echo $output;
        }
    }

    public function store_package_order(Request $request)
    {
        $this->validate($request, [
            // 'name' => 'required',
            // 'email' => 'required|email',
            // 'image' => 'required|mimes:jpeg,bmp,png,jpg,pdf,docx,doc,pdf'
        ]);
        // $contact = new 
        Order::create($request->all());
        // $contact->career_id = Input::get('career_id');
        // $contact->name = Input::get('name');
        // $contact->email = Input::get('email');        

        //    Mail::to( $request->email )
        // ->queue( new ContactMail( (object) $request->all() ) );

        Mail::to($request->email)
            ->queue(new PackageOrderMail((object) $request->all()));

        return back()->with('flash_message', 'Your Order Complete. We will contact you as soon as possible.');
    }


    /**
     * Show search information
     *
     * @param Request $request
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function search(Request $request)
    {
        if ($request->method() == 'POST') {
            $this->validate($request, [
                'search_type' => 'required',
                'search_text' => 'required'
            ]);
            $search_type = $request->input('search_type');
            $search_text = $request->input('search_text');
            $list = '';
            if ($search_type == 'Package') {
                $list .= $this->getPackageSearchData($search_text);
            } else if ($search_type == 'Blog') {
                $list .= $this->getBlogSearchData($search_text);
            } else if ($search_type == 'Case') {
                $list .= $this->getCaseSearchData($search_text);
            } else if ($search_type == 'Service') {
                $list .= $this->getServiceSearchData($search_text);
            } else {
                $list .= $this->getBlogSearchData($search_text);
                $list .= $this->getCaseSearchData($search_text);
                $list .= $this->getServiceSearchData($search_text);
            }
            echo $list;
            exit();
        } else {
            $search_type = $data["type"] = $request->input('type', "Package");
            $search_text = $data["s"] = $request->input('s', "");
            $data["results"] = array();
            if (trim($search_text) != '') {
                if ($search_type == 'Package') {
                    $data["results"] = $this->getPackageSearchData($search_text, false);
                } else if ($search_type == 'Blog') {
                    $data["results"] = $this->getBlogSearchData($search_text, false);
                } else if ($search_type == 'Case') {
                    $data["results"] = $this->getCaseSearchData($search_text, false);
                } else if ($search_type == 'Service') {
                    $data["results"] = $this->getServiceSearchData($search_text, false);
                }
            }

            return view('frontend.page.search', $data);
        }
    }

    /**
     * Get blog search info by text
     *
     * @param $text string search text
     * @param bool $isHtmlReturn
     *
     * @return string
     */
    private
    function getBlogSearchData($text, $isHtmlReturn = true)
    {
        $list = '';
        $blogs = Blog::where("title", "like", "%" . $text . "%")
            ->orWhere("short_description", "like", "%" . $text . "%")
            ->orWhere("long_description", "like", "%" . $text . "%")
            ->paginate(config("constant.smPagination"));
        if ($isHtmlReturn) {
            if (count($blogs) > 0) {
                foreach ($blogs as $blog) {
                    $list .= '<a  class="list-group-item" target="_blank" href="' . url('blog/detail/' . $blog->slug) . '">';
                    if ($blog->image != '') {
                        $list .= '<img src="' . SM::sm_get_the_src($blog->image, 80, 80) . '" alt="' . $blog->title . '">';
                    }
                    $list .= $blog->title;
                    $list .= '</a>';
                }
            }

            return $list;
        } else {
            return $blogs;
        }
    }

    /**
     * Blog detail page show by slug
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public
    function blogDetail($slug)
    {
        $data["blog"] = SM::getCache('blog_' . $slug, function () use ($slug) {
            return Blog::with("categories", "user")
                ->where("slug", $slug)
                ->where("status", 1)
                ->first();
        });
        if (!empty($data["blog"])) {
            // if ( count( $data["blog"] ) > 0 ) {
            $data['smAdminBarId'] = $data["blog"]->id;

            $data["blog"]->increment("views");

            $data["relatedBlog"] = SM::getCache('blog_related_blog_' . $slug, function () use ($data) {
                $blog_related_posts_per_page = SM::smGetThemeOption("blog_related_posts_per_page", 2);
                $cats = SM::get_ids_from_data($data['blog']->categories);

                return DB::table("blogs")
                    ->select(
                        'blogs.*',
                        DB::raw("CONCAT(firstname, ' ', lastname) as fname"),
                        'users.username',
                        'users.image as author_image'
                    )
                    ->join("categoryables", function ($join) {
                        $join->on("categoryables.categoryable_id", "=", "blogs.id")
                            ->where("categoryables.categoryable_type", '=', 'App\Model\Common\Blog');
                    })
                    ->join("users", 'blogs.created_by', '=', 'users.id')
                    ->whereIn("categoryables.category_id", $cats)
                    ->where("blogs.id", '!=', $data["blog"]->id)
                    ->where("blogs.status", 1)
                    ->orderBy("blogs.id", "desc")
                    ->limit($blog_related_posts_per_page)
                    ->get();
            });
            /**
             * If related blog not found then show post from all post
             */
            if (count($data["relatedBlog"]) < 1) {
                $data["relatedBlog"] = SM::getCache('blog_related_all_blog_' . $slug, function () use ($data) {
                    $blog_related_posts_per_page = SM::smGetThemeOption("blog_related_posts_per_page", 2);

                    return DB::table("blogs")
                        ->select(
                            'blogs.*',
                            DB::raw("CONCAT(firstname, ' ', lastname) as fname"),
                            'users.username',
                            'users.image as author_image'
                        )
                        ->join("users", 'blogs.created_by', '=', 'users.id')
                        ->where("blogs.id", '!=', $data["blog"]->id)
                        ->where("blogs.status", 1)
                        ->orderBy("blogs.id", "desc")
                        ->limit($blog_related_posts_per_page)
                        ->get();
                });
            }
            $data["commnetsCount"] = SM::getCache('blog_comments_0_count_' . $slug, function () use ($data) {
                return Comment::where("commentable_id", $data["blog"]->id)
                    ->where("commentable_type", 'App\Model\Common\Blog')
                    ->where("p_c_id", 0)
                    ->where("status", 1)
                    ->count();
            }, ['blog_comments_count_' . $slug]);
            $blogId = $data["blog"]->id;
            $data["commnets"] = SM::getCache('blog_comments_0_0_' . $blogId, function () use ($data) {
                return SM::getCommentList($data["blog"]->id, 'App\Model\Common\Blog', 0, 0);
            }, ['blog_comments_' . $blogId]);
            $data['seo_title'] = $data['blog']->seo_title;
            $data["meta_key"] = $data["blog"]->meta_key;
            $data["meta_description"] = $data["blog"]->meta_description;
            $data["image"] = asset(SM::sm_get_the_src($data["blog"]->image, 750, 560));

            return view("frontend.blogs.blog_detail", $data);
        } else {
            return abort(404);
        }
    }

    /**
     * Portfolio  page show
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public
    function Portfolio()
    {
        $data["categoryables"] = DB::table('categoryables')
            ->join('categories', 'categoryables.category_id', '=', 'categories.id')
            ->groupBy('category_id')
            ->orderBy('title', 'ASC')
            ->where(array(['categoryable_type', 'App\Model\Common\Portfolio'], 'category_type' => 2))
            ->get();

        /*$data["portfolios_data"] = DB::table('portfolios')
               ->leftJoin('categoryables', 'categoryables.categoryable_id', '=', 'portfolios.id')
               ->leftJoin('categories', 'categoryables.category_id', '=', 'categories.id')
               ->select('portfolios.*', 'categoryables.category_id','categories.title')
               ->where('categories.category_type', 2)
               // ->groupBy('categoryable_id')
               ->latest()
               ->get();*/

        $data["portfolios_data"] = Portfolio::orderBy('id', 'ASC')->get();
        //        $data["portfolios_data"] = DB::table('portfolios')
        //            ->leftJoin('categoryables', 'categoryables.categoryable_id', '=', 'portfolios.id')
        //            ->select('portfolios.*', 'categoryables.category_id')
        //            // ->groupBy('categoryable_id')
        //            ->latest()
        //            ->get();
        // dd( $data["portfolios_data"]);

        // $data['seo_title']        = SM::smGetThemeOption( "case_seo_title" );
        // $data['meta_description'] = SM::smGetThemeOption( "team_meta_keywords" );
        // $data['meta_description'] = SM::smGetThemeOption( "team_meta_description" );

        return view("frontend.page.portfolio", $data);
    }

    /**
     * Portfolio detail page show by slug
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */

    /**
     * Show case detail page by case slug
     *
     * @param $slug string
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    // public function portfolioDetail( $slug ) {
    //     $data["caseInfo"] = SM::getCache( 'case_' . $slug, function () use ( $slug ) {
    //         return Portfolio::where( "slug", $slug )
    //                     // ->where( 'status', 1 )
    //                     ->first();
    //     } );
    //     if ( !empty( $data["caseInfo"] ) > 0 ) {
    //         $data['smAdminBarId'] = $data["caseInfo"]->id;
    //         $data["caseInfo"]->increment( "views" );
    //         //seo data
    //         $data['seo_title']        = $data['caseInfo']->seo_title;
    //         $data['meta_key']         = $data['caseInfo']->meta_key;
    //         $data['meta_description'] = $data['caseInfo']->meta_description;
    //         $img                      = $data['caseInfo']->image;
    //         if ( ! $image_array = explode( ',', $img ) ) {
    //             $image_array[0] = array( $img );
    //         }
    //         $data["image"] = asset( SM::sm_get_the_src( $image_array[0], 750, 560 ) );
    //          $data["randomposts"]  = Portfolio::take(5)->inRandomOrder()->get();
    //         return view( "frontend.page.portfolio_detail", $data );
    //     } else {
    //         return abort( 404 );
    //     }

    // }
    public
    function portfolioDetail($slug)
    {

        // $data["blog"] = SM::getCache('portfolio_' . $slug, function () use ($slug) {
        //     return Portfolio::with("categories", "tags")
        //         ->where("slug", $slug)
        //         // ->where( "status", 1 )
        //         ->first();
        // });

        // if (!empty($data["blog"])) {
        //     // if ( count( $data["blog"] ) > 0 ) {
        //     $data['smAdminBarId'] = $data["blog"]->id;

        //     $data["blog"]->increment("views");

        //     $data["relatedBlog"] = SM::getCache('portfolio_related_blog_' . $slug, function () use ($data) {
        //         $blog_related_posts_per_page = SM::smGetThemeOption("blog_related_posts_per_page", 2);
        //         $cats = SM::get_ids_from_data($data['blog']->categories);

        //         return DB::table("portfolios")
        //             ->select('portfolios.*')
        //             ->join("categoryables", function ($join) {
        //                 $join->on("categoryables.categoryable_id", "=", "portfolios.id")
        //                     ->where("categoryables.categoryable_type", '=', 'App\Model\Common\Portfolio');
        //             })
        //             ->whereIn("categoryables.category_id", $cats)
        //             ->where("portfolios.id", '!=', $data["blog"]->id)
        //             // ->where( "portfolios.status", 1 )
        //             ->orderBy("portfolios.id", "desc")
        //             ->limit($blog_related_posts_per_page)
        //             ->get();
        //     });
        //     /**
        //      * If related blog not found then show post from all post
        //      */
        //     if (count($data["relatedBlog"]) < 1) {
        //         $data["relatedBlog"] = SM::getCache('blog_related_all_blog_' . $slug, function () use ($data) {
        //             $blog_related_posts_per_page = SM::smGetThemeOption("blog_related_posts_per_page", 2);

        //             return DB::table("portfolios")
        //                 ->select('portfolios.*')
        //                 ->where("portfolios.id", '!=', $data["blog"]->id)
        //                 // ->where( "portfolios.status", 1 )
        //                 ->orderBy("portfolios.id", "desc")
        //                 ->limit($blog_related_posts_per_page)
        //                 ->get();
        //         });
        //     }

        $portfolio = Portfolio::where('slug', '=', $slug)->first();

        if (!empty($portfolio)) {

            $relatedPortfolio = Portfolio::whereHas('categories', function ($q) use ($portfolio) {
                return $q->whereIn('title', $portfolio->categories->pluck('title'));
            })
                ->where('id', '!=', $portfolio->id) // So you won't fetch same post
                ->get();

            //     /**
            //      * If related package not found then show package from all package
            //      */

            if (count($relatedPortfolio) < 1) {
                $relatedPortfolio = Portfolio::latest()->take(5)->get();
            }

            $seo_title = $portfolio->seo_title;
            $meta_key = $portfolio->meta_key;
            $meta_description = $portfolio->meta_description;
            $image = asset(SM::sm_get_the_src($portfolio->image, 750, 560));

            return view('frontend.page.portfolio_detail', compact('portfolio', 'relatedPortfolio', 'seo_title', 'meta_key', 'meta_description', 'image'));
        } else {
            return abort(404);
        }
    }

    /**
     * Save comment info
     *
     * @param Request $request
     *
     * @return \Illuminate\Contracts\Routing\ResponseFactory|\Symfony\Component\HttpFoundation\Response
     */
    public
    function saveComment(Request $request)
    {
        if (Auth::check()) {
            $messages = [
                'unique' => 'Comment must be unique. Don\'t spamming please.',
            ];
            $this->validate($request, [
                'comments' => "required|min:10|max:500|unique:comments",
                'blog_id' => "required|integer",
                'parent_id' => "required|integer",
            ], $messages);

            $blog = Blog::find($request->blog_id);
            // if ( count( $blog ) > 0 ) {
            if (!empty($blog)) {
                $comment = new Comment();
                $comment->commentable_id = $blog->id;
                $comment->commentable_type = 'App\Model\Common\Blog';
                $comment->p_c_id = $request->parent_id;
                $comment->comments = strip_tags($request->comments);
                $comment->created_by = Auth::user()->id;
                $comment->status = 2;
                $comment->save();

                Session::flash('flash_message', 'Blog comment saved successfully! Please wait for approve.');
                return redirect()->back();
                // return response( "Blog comment saved successfully! Please wait for approve.", 200 );
            } else {
                return response("Blog Not Found!", 404);
            }
        } else {
            response("Please login to submit a comment!", 404);
        }
    }

    public
    function replyStore(Request $request)
    {
        // var_dump('dsasdsa');
        // exit();
        $reply = new Comment();
        $reply->comments = $request->get('comment_body');
        $reply->user()->associate($request->user());
        $reply->p_c_id = $request->get('comment_id');
        $post = Blog::find($request->get('post_id'));

        $post->commentspost()->save($reply);
        // dd($reply);
        return back();
    }

    /**
     * Contact page show
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public
    function contact()
    {
        $data['seo_title'] = SM::smGetThemeOption("contact_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("contact_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("contact_meta_description");

        return view("frontend.page.contact", $data);
    }

    /**
     * Contact page Send mail
     *
     * @param Request $request
     *
     * @return \Illuminate\Contracts\Routing\ResponseFactory|\Symfony\Component\HttpFoundation\Response
     */
    public
    function send_mail(Request $request)
    {
        $this->validate($request, [
            "fullname" => "required|min:3|max:40",
            "email"    => ["required", new SmCustomEmail],
            "subject"  => "required|min:3|max:100",
            "message"  => "required|min:5|max:500",
            'g-recaptcha-response' => 'required|captcha',
        ]);
        // Mail::to( $request->email )
        // ->queue( new ContactMail( (object) $request->all() ) );

        Mail::to(SM::get_setting_value("email"))
            ->queue(new ContactMail((object) $request->all()));
        // $contact_form_success_message = SM::smGetThemeOption(
        // 	"contact_form_success_message", "Mail successfully send. We will contact you as soon as possible."
        // );

        // return response( $contact_form_success_message, 200 );

        // $this->validate($request, [
        //     'name' => 'required|min:3|max:40',
        //     'email' => 'required|email',
        //     'subject' => 'min:3',
        //     'message' => 'min:10'
        // ]);

        Contact::create($request->all());

        return back()->with('s_message', 'Mail successfully send. We will contact you as soon as possible.');
    }

    /**
     * Show package list page
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public
    function packages()
    {
        $page = \request()->input('page', 0);
        $key = 'package' . $page;
        $data['packages'] = SM::getCache($key, function () {
            $package_posts_per_page = SM::smGetThemeOption("package_posts_per_page", 12);

            return Package::with('detail')
                ->where("status", 1)
                ->orderBy('id', 'desc')
                ->paginate($package_posts_per_page);
        }, ['package']);
        if (count($data['packages']) > 0) {
            return view('frontend.page.package', $data);
        } else {
            return abort(404);
        }
    }


    /**
     * Show package detail page by Search text
     *
     * @param $url
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public
    function packageDetail($url)
    {

        $portfolio = Package::where('slug', '=', $url)->first();

        $data["relatedPackage"] = Portfolio::whereHas('categories', function ($q) use ($portfolio) {
            return $q->whereIn('title', $portfolio->categories->pluck('title'));
        })
            ->where('id', '!=', $portfolio->id) // So you won't fetch same post
            ->get();

        //     /**
        //      * If related package not found then show package from all package
        //      */
        if (count($data["relatedPackage"]) < 1) {
            $data["relatedPackage"] = Portfolio::latest()->take(5)->get();
        }



        $data["packageInfo"] = SM::getCache('package_' . $url, function () use ($url) {
            return Package::where('slug', $url)
                ->where('status', 1)
                ->first();
        });
        // if ( count( $data["packageInfo"] ) > 0 ) {
        if (!empty($data["packageInfo"])) {
            $data['smAdminBarId'] = $data["packageInfo"]->id;
            $data["extra"] = (object)SM::sm_unserialize($data["packageInfo"]->extra);
            //seo data
            $data['seo_title'] = $data['packageInfo']->seo_title;
            $data['meta_key'] = $data['packageInfo']->meta_key;
            $data['meta_description'] = $data['packageInfo']->meta_description;
            $key = 'package_detail_' . $url;
            $data["packageInfo"]->detail = SM::getCache($key, function () use ($data) {
                return Package_detail::where("package_id", $data['packageInfo']->id)
                    ->orderBy('sorting_position', 'asc')
                    ->get();
            });

            return view('frontend.page.package_detail', $data);
        } else {
            return abort(404);
        }
    }

    function page($url)
    {
        $data['page'] = SM::getCache('page_' . $url, function () use ($url) {
            return Page_model::where('slug', $url)->where('status', 1)->first();
        });
        if (isset($data['page']->id)) {
            $data['smAdminBarId'] = $data["page"]->id;
            //view increment
            $data['page']->increment('views');
            //seo data
            $data['meta_key'] = $data['page']->meta_key;
            $data['meta_description'] = $data['page']->meta_description;
            $data['sidebar'] = 1;

            return view('frontend.page.page', $data);
        } else {
            return abort(404);
        }
    }

    public
    function faq()
    {
        $data['seo_title'] = SM::smGetThemeOption("faq_seo_title");
        $data['meta_description'] = SM::smGetThemeOption("faq_meta_keywords");
        $data['meta_description'] = SM::smGetThemeOption("faq_meta_description");

        return view("frontend.page.faq", $data);
    }

    public
    function careerAppy($slug)
    {
        $data['slug'] = $slug;
        return view("frontend.page.apply_career", $data);
    }



    public
    function chairmanMessage()
    {
        return view("frontend.page.chairman_message");
    }
    public
    function missionVission()
    {
        return view("frontend.page.mission_vission");
    }
}
