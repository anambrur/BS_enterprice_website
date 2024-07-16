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

<?php if($logosCount>0): ?>
    <div id="brand-logo-area" class="brand-logo-area section-padding-lg wow slideInUp" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h2 class="testimonial-title"><?php echo e($branding_title); ?></h2>
                        <!-- <p class="testimonial-subtitle"><?php echo e($branding_subtitle); ?></p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="brand-logos brand-logo-carousel-activation cr-slider-navigation-2">
                        <?php $__currentLoopData = $logos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $logo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($logo): ?>
                                <div class="brand-logo">
                                    <a href="#">
                                        <img src="<?php echo SM::sm_get_the_src($logo); ?>" alt="brand logo thumb">
                                    </a>
                                </div>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>