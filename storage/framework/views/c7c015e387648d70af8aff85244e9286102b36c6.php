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
    $ourMissionImage = SM::smGetThemeOption( "our_mission_image" );
    $ourVisionImage = SM::smGetThemeOption( "our_vision_image" );
?>



<?php
    $branding_title = SM::smGetThemeOption( "branding_title", "" );
    $branding_subtitle = SM::smGetThemeOption( "branding_subtitle", "" );
    $logosStr = SM::smGetThemeOption( "logos", "" );
    $logos = array();
    if ( $logosStr != "" && ! $logos = explode( ',', $logosStr ) ) {
        $logos[0] = array( $logosStr );
    }
    $logosCount = count( $logos );
?>



<?php $__env->startPush('css'); ?>
<style type="text/css">
    .ab-mis-icon {
        margin-bottom: 15px;
        min-height: 30px;
        padding-left: 47px;
        position: relative;
    }

    .ab-mis-icon h2, .ab-mis-icon h3 {
        font-weight: 600;
        font-size: 26px;
        color: #1c2d5d;
        margin: 0;
        line-height: 32px;        
    }

    .ab-mis-icon img {
        width: 30px;
        height: 30px;
        position: absolute;
        left: 0;
        top: 1px;
    }

</style>

<?php $__env->stopPush(); ?>

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                <div class="cr-breadcrumb text-center">
                     <?php if(empty(!$title)): ?>
                        <h1>Business Partners</h1>
                    <?php endif; ?>
                    <?php if(isset($subtitle) && $subtitle != ''): ?>
                        <p><?php echo e($subtitle); ?></p>
                    <?php endif; ?> 
                </div>
            </div>
        </div>
    </div>
</div>

<?php if($logosCount>0): ?>

<div class="message-our-partner">
    <div class="container">
        <div class="row">
            <?php $__currentLoopData = $logos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $logo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($logo): ?>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <a href="#" target="_blank">
                            <div class="images">
                                <img src="<?php echo SM::sm_get_the_src($logo); ?>" alt="">
                            </div>
                            <div class="company-certificate">
                                <img src="https://wcacert.com/wp-content/uploads/2023/07/ISO_9001-2015_w.jpg" alt="">
                                <img src="https://wcacert.com/wp-content/uploads/2023/07/ISO_9001-2015_w.jpg" alt="">
                                <img src="https://wcacert.com/wp-content/uploads/2023/07/ISO_9001-2015_w.jpg" alt="">
                                <img src="https://wcacert.com/wp-content/uploads/2023/07/ISO_9001-2015_w.jpg" alt="">
                            </div>
                            <div class="company-name">
                                <h4> <?php echo e($branding_title); ?> </h4>
                            </div>
                            <article>
                                <p><?php echo e($branding_subtitle); ?></p>
                            </article>
                        </a>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>

<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>