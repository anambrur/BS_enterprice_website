<?php
    $testimonialTitle = SM::smGetThemeOption("testimonial_title");
    $testimonialSubTitle = SM::smGetThemeOption("testimonial_subtitle");
    $testimonials = SM::smGetThemeOption("testimonials");
?>

<section class="testimonial-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12  col-lg-12  col-12 ">
                <div class="section-title text-center">
                    <h2 class="testimonial-title"><?php echo e($testimonialTitle); ?></h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="testimonial-wrap testimonial-style-1 testimonial-slider-active cr-slider-dots-1">
                    <?php $__currentLoopData = $testimonials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $testimonial): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="testimonial text-center">
                            <div class="testimonial-thumb">
                                <img src="<?php echo SM::sm_get_the_src($testimonial["testimonial_image"]); ?>"  alt="<?php echo e($testimonial["title"]); ?>">
                            </div>
                            <div class="testimonial-content">
                                <?php if(empty(!$testimonial["description"])): ?>
                                    <p><?php echo e($testimonial["description"]); ?></p>
                                <?php endif; ?>
                                <div class="testimonial-author">
                                    <h6><?php echo e($testimonial["title"]); ?></h6>
                                    <p><?php echo e($testimonial["company_name"]); ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
