
<?php $__env->startSection("title", $portfolio->title); ?>
<?php $__env->startSection("content"); ?>
    <?php 
    $title = SM::smGetThemeOption("case_detail_banner_title");
    $subtitle = SM::smGetThemeOption("case_detail_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("case_detail_banner_image");  
    ?>
    <!-- Breacrumb Area -->
    <div class="breadcrumb-option"
         style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
                 background-attachment: scroll;
                 background-size: cover; " data-black-overlay="7">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
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

      <!-- Page Content -->
    <main class="page-content">

        <div class="pg-service-area bg-white section-padding-lg">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                       <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pg-service-title"><?php echo e($portfolio->title); ?></h2>
                        </div>
                        <!--<div class="col-lg-7">-->
                        <!--    <div class="pg-portfolio-images cr-slider-navigation-3 center">-->
                        <!--        <a href="<?php echo e(SM::sm_get_the_src($portfolio->image, 1600, 1200)); ?>">-->
                        <!--            <img src="<?php echo e(SM::sm_get_the_src($portfolio->image, 670, 391)); ?>" alt="<?php echo e($portfolio->title); ?>">-->
                        <!--        </a>-->
                        <!--    </div>-->
                        <!--</div>                      -->
                    </div>
                    

                    <div class="gallary-items-img">
                    <?php 
                        $gallerys = $portfolio->image_gallery;    
                        $gallerys_decode = json_decode($gallerys);
                        if($gallerys_decode){
                            foreach ($gallerys_decode as $key => $gallery) {
                                if($gallery){
                        ?>
                        <a class="gallary-items-box" href="<?php echo e(SM::sm_get_the_src($gallery, 1600, 1200)); ?>" data-lightbox="roadtrip">
                            <div class="portfoilo-thumb">
                                <img src="<?php echo e(SM::sm_get_the_src($gallery, 1600, 1200)); ?>"
                                        alt="<?php echo e($portfolio->title); ?>">

                                        
                            </div>
                            <div class="portfolio-content">
                                <div class="portfolio-content-inner text-center">
                                    <!--  <a href="<?php echo e(SM::sm_get_the_src($gallery, 1600, 1200)); ?>"
                                        class="portfolio-zoom-trigger">
                                        <i class="flaticon-interface"></i>
                                    </a> -->
                                    <h3>
                                        <?php echo e($portfolio->title); ?>

                                    </h3>
                                    <div class="pic-caption">
                                        <ul>
                                            <?php $__currentLoopData = $portfolio->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li>
                                                    <h6>
                                                    <img src="<?php echo e(SM::sm_get_the_src($category->image, 20, 20)); ?>" alt="<?php echo e($category->title); ?>"> <?php echo e($category->title); ?>

                                                </h6>
                                                </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            </a>
                        <?php
                                }
                            }
                        }
                        ?>
</div>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <!--// Page Content --> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>