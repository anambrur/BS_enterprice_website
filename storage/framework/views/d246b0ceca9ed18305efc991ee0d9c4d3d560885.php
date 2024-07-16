
<?php $__env->startSection("title", "Product -"); ?>
<?php $__env->startSection("content"); ?>

<?php
    $wwrTitle = SM::smGetThemeOption( "wwr_title" );
    $wwrSubtitle = SM::smGetThemeOption( "wwr_subtitle" );
    $wwrDescription = SM::smGetThemeOption( "wwr_description" );
    $ourMission = SM::smGetThemeOption( "our_mission" );
    $ourVision = SM::smGetThemeOption( "our_vision" );
    $histories = SM::smGetThemeOption( "histories" );
    $title = SM::smGetThemeOption( "about_banner_title" );
    $subtitle = SM::smGetThemeOption( "about_banner_subtitle" );
    $bannerImage = SM::smGetThemeOption( "about_banner_image" );
?>

<?php $__env->startPush('css'); ?>

<?php $__env->stopPush(); ?>

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                <div class="cr-breadcrumb text-center">
                 
                        <h1>Our Products</h1>
                        <p>The Story Of A Visionary Community</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="all-product-section">
<div class="container">

        <div class="row">
            <div class="col-md-3">
                <div class="nav-title">
                    <h5> Category </h5>
                </div>
                <nav class = "navbar">
                    <ul>
                        <?php $__currentLoopData = $categorys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Key=> $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="nav-item">
                                    <a href="<?php echo e(url('productview/'.$category->slug)); ?>" class="nav-link"> <?php echo e($category->title); ?> </a>
                                </li>                            
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </nav>
            </div>



            <div class="col-md-9">
                <div class="category-title">
                    <h4> All Products Category </h4>
                </div>
                <div class="row">  
                    <?php $__currentLoopData = $categorys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>  
                    <div class="col-md-6" style="padding: 15px; 0">
                        <div class="card">
                            <div class="card-body">
                                <a href="<?php echo e(url('productview/'.$category->slug)); ?>">
                                    <div class="single-team single-team-style-2">
                                       
                                        <div class="team-thumb"> 
                                            <img src="<?php echo SM::sm_get_the_src($category->image); ?>" style="margin: 0 auto;display: block;">
                                        </div>
                                        <div class="team-content ">
                                            <div class="team-conetnt-info">
                                                <h5>
                                                    <a href="<?php echo e(url('productview/'.$category->slug)); ?>"><?php echo e($category->title); ?> </a>
                                                </h5>

                                                <article>
                                                    <p><?php echo mb_strimwidth($category->description, 0, 200, ". . ."); ?> </p>
                                                </article>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                  
                </div>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>