@extends("frontend.master")
@section("title", $tagInfo->title)
@section("content")
    <?php
    $breadcrumb = [
        "isBreadcrumbEnable" => SM::smGetThemeOption( "blog_is_breadcrumb_enable", false ),
        "pagination"         => [
            [
                "title"   => "Blog",
                "segment" => "blog"
            ],
            [
                "title" => 'Tag'
            ]
        ],
        "title"              => $tagInfo->title,
        "subtitle"           => "Tag",
        "image"              => SM::smGetThemeOption( "blog_detail_banner_image" ),
    ];
    ?>
<!-- Breacrumb Area -->
 @include("frontend.common.breadcrumb", $breadcrumb)
<!--//Breacrumb Area -->
<!-- Blog List -->
<div class="pg-blog-list-area section-padding-lg bg-white">
    <div class="container">
        <div class="row">

            <!-- Blog Grid -->
            <div class="col-lg-8">
                <div class="row blog-grid"> 
                    <!--Single Blog --> 
                     @include('frontend.blogs.blog_list_item', ['blogPost'=>$blogs])
                   <!--// Single Blog --> 

                </div> 
            </div>
            <!--// Blog Grid -->

            <!-- Sidebar -->
            <div class="col-lg-4"> 
             @include('frontend.blogs.blog_sidebar') 
             </div>
            <!--// Sidebar -->

        </div>
    </div>
</div>
<!--// Blog List -->
@endsection