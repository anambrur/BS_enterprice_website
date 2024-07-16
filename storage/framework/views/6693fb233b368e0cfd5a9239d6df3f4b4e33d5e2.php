<!-- login -->
<div id="loginModal" class="modal fade loginModalOpen" tabindex="-1" data-focus-on="input:first">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <?php
                $authCheck = Auth::check();
                ?>

                <div class="commom-form login-form-new">
                    <div class="login-form-new-inner">
                        <div class="row">
                            <div class="col-sm-6">
                                <form id="loginForm1" method="post" action="<?php echo e(url('/login')); ?>"
                                      class="login-form-wraper smAuthHide smAuthForm">
                                    <?php echo csrf_field(); ?>

                                    <?php echo $__env->make('frontend.common.login_fields', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <form method="post" id="registrationForm" class="smAuthForm"
                                      action="<?php echo e(url('/register')); ?>">
                                    <?php echo csrf_field(); ?>

                                    <div class="section-title">
                                        <h2>Create an Account</h2>
                                    </div>
                                    
                                    <div class="form-input">
                                        <label for="username">Username<span>*</span></label>
                                        <?php echo Form::text("username",  null, ["id"=>"username", 'required' => 'true']); ?>

                                        <span class="error-notice"></span>
                                    </div>
                                    <?php
                                    if (Session::has("profile") && count(Session::get("profile")) > 0
                                        && isset(Session::get("profile")->email) && Session::get("profile")->email != '') {
                                        $profile = Session::get("profile");
                                        $email = $profile->email;
                                        $extra = ["id" => "email", "readonly" => ""];
                                    } else {
                                        $email = null;
                                        $extra = ["id" => "email"];
                                    }
                                    ?>
                                    <div class="form-input">
                                        <label for="email">Email Address<span>*</span></label>
                                        <?php echo Form::email("email",  $email, $extra); ?>

                                        <span class="error-notice"></span>
                                    </div>
                                    <div class="form-input">
                                        <label for="password">Password<span>*</span></label>
                                        <input name="password" id="password" required type="password">
                                        <span class="error-notice"></span>
                                    </div>
                                    <div class="form-input">
                                        <label for="password_confirmation">Confirmation
                                            Password<span>*</span></label>
                                        <input name="password_confirmation" required id="password_confirmation"
                                               type="password">
                                        <span class="error-notice"></span>
                                    </div>
                                    <div class="form-input">
                                        <label for="g-recaptcha-response">Recaptcha<span>*</span></label>
                                        <?php echo app('captcha')->display(); ?>

                                        <?php if($errors->has('g-recaptcha-response')): ?>
                                            <span class="help-block">
                                        <strong><?php echo e($errors->first('g-recaptcha-response')); ?></strong>
                                    </span>
                                        <?php endif; ?>
                                        <span class="error-notice"></span>
                                    </div>
                                    <div class="clearfix">
                                        <div class="form-button pull-left">
                                            <button style="margin-top: 20px;" type="submit" class="cr-btn">
                                                <span>Signup Now</span>
                                            </button>
                                        </div>
                                    </div>
                                    <?php echo $__env->make("frontend.common.register_social", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>