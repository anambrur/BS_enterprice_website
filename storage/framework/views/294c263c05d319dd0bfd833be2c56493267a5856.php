

<?php $__env->startSection("title", "Blog"); ?>

<?php $__env->startSection("content"); ?>

<?php $__env->startPush('css'); ?>



<?php $__env->stopPush(); ?>

	<?php

	$countStickyPost = count( $stickyBlogPost );

	$isBreadcrumbEnable = SM::smGetThemeOption( "blog_is_breadcrumb_enable", false );



	$pagination = [

		[

			"title" => "Blog"

		]

	];

	$title = SM::smGetThemeOption( "blog_banner_title" );

	$subtitle = SM::smGetThemeOption( "blog_banner_subtitle" );

	$bannerImage = SM::smGetThemeOption( "blog_banner_image" );

	?>



<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;

        background-attachment: scroll;

        background-size: cover; " data-black-overlay="7">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="cr-breadcrumb text-center">

                     <?php if(empty(!$title)): ?>

                        <h1><?php echo e($title); ?></h1>

                    <?php endif; ?>

                    <?php if(isset($subtitle) && $subtitle != ''): ?>

                        <p><?php echo e($subtitle); ?></p>

                    <?php endif; ?> 

                </div>

            </div>

        </div>

    </div>

</div>

<!--//Breacrumb Area -->

<!-- Blog List -->

<div class="pg-blog-list-area section-padding-lg bg-white">

    <div class="container">

        <div class="row">



            <!-- Blog Grid -->

            <div class="col-lg-8">

                <div class="row blog-grid"> 

                	<!--Single Blog -->

                   <?php echo $__env->make('frontend.blogs.blog_list_item', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 

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