
<?php $__env->startSection("title", "Password Reset -"); ?>
<?php $__env->startSection("content"); ?>
    <?php
    $title = 'Forgot Password';
    $subtitle = 'Forgot your Password';
    $bannerImage = SM::smGetThemeOption("contact_banner_image");
    ?>
    <!--BREADCRUMB START-->
    <div class="breadcrumb-option"
         style="background:url( <?php echo SM::sm_get_the_src( 'blog-details-banner_1.jpg' ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
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
    <!-- Contact Us Area -->
    <div class="pg-contact-us-area section-padding-lg bg-white">

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="pg-contact-form mr-0 mr-lg-3">
                        <div class="small-title">
                            <h3 class="contact-form-title">
                                Forgot Password
                            </h3>
                        </div>
                        <?php
                        $authCheck = Auth::check();
                        ?>
                        <form method="post" action="<?php echo e(url('/password/reset')); ?>" id="forgotPassword"
                              class="forgot-form-wraper  smAuthHide smAuthForm <?php echo e(!$authCheck && SM::current_controller()=="ForgotPassword" && SM::current_method()=="index" ? ' active' : ''); ?>"
                              style="display: <?php echo e(SM::current_controller()=="ForgotPassword" && SM::current_method()=="index" ? 'block' : 'none1'); ?>">
                            <?php echo csrf_field(); ?>

                            <?php
                            $isForgotPassword = SM::current_controller() == "ForgotPassword" ? true : false;
                            ?>
                            <div class="row no-gutters">
                                <div class="col-lg-6 col-md-6">
                                    <div class="single-input">
                                        <?php echo Form::email("email",  null, ["id"=>"forgot-email", 'class'=>'form-control', 'required', 'placeholder'=>'Please enter your email']); ?>

                                        <span class="error-notice"></span>
                                    </div>
                                </div> 
                                <div class="col-lg-12">
                                    <div class="single-input">
                                        <button class="cr-btn" type="submit" id="signupform_email">
                                            <span>Reset Link</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--CONTACT INFO END-->
        </div>
    </div>
    <!--// Contact Us Area -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>