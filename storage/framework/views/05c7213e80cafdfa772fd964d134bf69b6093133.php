
<?php $__env->startSection("title", "About"); ?>
<?php $__env->startSection("content"); ?> 
    <?php
    $title = SM::smGetThemeOption("case_banner_title");
    $subtitle = SM::smGetThemeOption("case_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("case_banner_image"); 
    ?>

    <!-- Breacrumb Area -->
    <div class="breadcrumb-option"
         style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
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
    <?php
    $case_title = SM::smGetThemeOption("case_title", "");
    $case_subtitle = SM::smGetThemeOption("case_subtitle", "");
    ?>
    <!-- Portfolio Area -->
    <section class="portfolio-area section-padding-lg bg-white">

        <div class="portfolio-wrap">
            <!-- Poftfolio Filters -->
            <div class="portfolio-filters">
                

                <?php $__currentLoopData = $categoryables; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <button data-filter=".cat_<?php echo e($category->id); ?>" class=""><?php echo e($category->title); ?></button>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <!--// Poftfolio Filters -->

            <!-- Portfolios -->
            <div class="row no-gutters portfolios portfolios-style-3 portfolios-zoom-button-holder" data-show="20"
                 data-load="8">

<?PHP
// dd($portfolios_data);
// exit();



?>

            <?php $__currentLoopData = $portfolios_data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $portfolio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <!-- Single Portfolio -->
                <div style="padding: 2px;" class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 portfolio-single
                 <?php $__currentLoopData = $portfolio->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            cat_<?php echo e($cat->id); ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>">
                        <div class="portfolio">

                            
                            <a href="<?php echo e(URL::to('/portfolio/detail/'.$portfolio->slug)); ?>">
                            
                            <div class="portfoilo-thumb">
                                <img src="<?php echo e(SM::sm_get_the_src($portfolio->image, 1600, 1200)); ?>"
                                     alt="<?php echo e($portfolio->title); ?>">

                                     
                            </div>
                            <div class="portfolio-content">
                                <div class="portfolio-content-inner text-center">
                                   <!--  <a href="<?php echo e(SM::sm_get_the_src($portfolio->image, 1600, 1200)); ?>"
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
                        </div>
                    </div>
                    <!--// Single Portfolio -->
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
            <!--// Portfolios -->

            <div class="portfolio-load-more-button text-center">
                <button class="load-more-toggle cr-btn cr-btn">
                    <span>Load More</span>
                </button>
            </div>

        </div>

    </section>
    <!--// Portfolio Area -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>