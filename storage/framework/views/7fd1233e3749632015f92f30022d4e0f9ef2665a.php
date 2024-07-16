
<?php $__env->startSection("title", "About"); ?>
<?php $__env->startSection("content"); ?>
    <?php
        $contact_form_title = SM::smGetThemeOption("contact_form_title");
        $contact_title = SM::smGetThemeOption("contact_title");
        $contact_subtitle = SM::smGetThemeOption("contact_subtitle");
        $contact_des_title = SM::smGetThemeOption("contact_des_title");
        $contact_description = SM::smGetThemeOption("contact_description");
        $title = SM::smGetThemeOption("contact_banner_title");
        $subtitle = SM::smGetThemeOption("contact_banner_subtitle");
        $bannerImage = SM::smGetThemeOption("contact_banner_image");
    ?>

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

    <div class="pg-contact-us-area section-padding-lg bg-gray">
        <div class="container">
            <div class="row">
                <?php if(empty(!$contact_title || !$contact_subtitle)): ?>
                    <div class="col-lg-6 offset-lg-3">
                        <div class="small-title text-center">
                            <?php if(empty(!$contact_title)): ?>
                                <h3><?php echo e($contact_title); ?></h3>
                            <?php endif; ?>
                            <?php if(empty(!$contact_subtitle)): ?>
                                <p><?php echo e($contact_subtitle); ?></p>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="pg-contact-form mr-0 mr-lg-3">
                        <div class="small-title">
                            <?php if(empty(!$contact_form_title)): ?>
                            <?php endif; ?>
                        </div>
                        <?php echo e(Form::open(['url' => 'send_mail', 'method' => 'post', 'id'=>'contactMail'])); ?>

                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                <div class="single-input">
                                    <input name="fullname" type="text" placeholder="Your Name*">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single-input">
                                    <input type="email" name="email" id="contact_email" placeholder="Your E-mail*">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single-input">
                                    <input type="text" name="phone" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single-input">
                                    <input type="text" name="subject" placeholder="Subject">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-input">
                                    <textarea name="message" id="contact_message" cols="10" rows="4" placeholder="Your message"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-input form-group<?php echo e($errors->has('g-recaptcha-response') ? ' has-error' : ''); ?>">
                                    <?php echo app('captcha')->display(); ?>

                                    <?php if($errors->has('g-recaptcha-response')): ?>
                                        <span class="help-block">
                                            <strong><?php echo e($errors->first('g-recaptcha-response')); ?></strong>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="single-input">
                                    <button class="btn sendNowBtn " type="submit">
                                        <span>Send Now</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="pg-contact-details">
                        <?php
                            $contact_branch_image = SM::smGetThemeOption("contact_branch_image");
                            $contact_branch_title = SM::smGetThemeOption("contact_branch_title");
                            $contact_branch_subtitle = SM::smGetThemeOption("contact_branch_subtitle");
                            $contact_branches = SM::smGetThemeOption("contact_branches");
                            $contact_share_title = SM::smGetThemeOption("contact_share_title");
                            $contact_share_image = SM::smGetThemeOption("contact_share_image");
                            $site_name = SM::sm_get_site_name();
                        ?>
                        <?php if($contact_branches): ?>
                            <ul>
                                <?php $__currentLoopData = $contact_branches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $branch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class="single-quick-contact">
                                        <?php if(empty(!$branch['title'])): ?>
                                            <h5><?php echo e($branch['title']); ?></h5>
                                        <?php endif; ?>
                                        <address>
                                            <?php if(empty(!$branch['address'])): ?>
                                                <p><?php echo e($branch['address']); ?></p>
                                            <?php endif; ?>
                                            <?php if(empty(!$branch['email'])): ?>
                                                <p><?php echo e($branch['email']); ?></p>
                                            <?php endif; ?>
                                            <?php if(empty(!$branch['mobile'])): ?>
                                                <p><?php echo e($branch['mobile']); ?></p>
                                            <?php endif; ?>
                                        </address>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <?php
            $contact_location_title = SM::smGetThemeOption("contact_location_title");
            $contact_location_subtitle = SM::smGetThemeOption("contact_location_subtitle");
            $contact_location_latitude = SM::smGetThemeOption("contact_location_latitude", "23.797424");
            $contact_location_longitude = SM::smGetThemeOption("contact_location_longitude", "90.369409");
        ?>
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <iframe src="<?php echo e($contact_location_longitude); ?>" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>