
<?php $__env->startSection("title", $categoryInfo->title); ?>
<?php $__env->startSection("content"); ?>
    <?php
    $breadcrumb = [
        "isBreadcrumbEnable" => SM::smGetThemeOption( "blog_is_breadcrumb_enable", false ),
        "pagination"         => [
            [
                "title"   => "Blog",
                "segment" => "blog"
            ],
            [
                "title" => 'Category'
            ]
        ],
        "title"              => $categoryInfo->title,
        "subtitle"           => "Category",
        "image"              => SM::smGetThemeOption( "blog_detail_banner_image" ),
    ];
    ?>
<!-- Breacrumb Area -->
 <?php echo $__env->make("frontend.common.breadcrumb", $breadcrumb, array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<!--//Breacrumb Area -->
<!-- Blog List -->
<div class="pg-blog-list-area section-padding-lg bg-white">
    <div class="container">
          <div class="row">

            <!-- Blog Grid -->
            <div class="col-lg-8">
                <div class="row blog-grid"> 
                    <!--Single Blog --> 
                     <?php echo $__env->make('frontend.blogs.blog_list_item', ['blogPost'=>$blogs], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                   <!--// Single Blog --> 

                </div> 
            </div>
            <!--// Blog Grid -->

            <!-- Sidebar -->
            <div class="col-lg-4"> 
             <?php echo $__env->make('frontend.blogs.blog_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
             </div>
            <!--// Sidebar -->

        </div>
    </div>
</div>
<!--// Blog List -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>