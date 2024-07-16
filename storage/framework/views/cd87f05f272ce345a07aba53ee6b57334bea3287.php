<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 10/30/17
 * Time: 12:29 PM
 */
?>


<?php $__env->startSection('title','Reset Password'); ?>

<?php $__env->startSection('reff_page_link'); ?>
    <span id="extr-page-header-space"> <span class="hidden-mobile">Already registered?</span> <a href="<?php echo e(url(config('constant.smAdminSlug').'/login')); ?>" class="btn btn-danger">Sign In</a> </span>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="well no-padding">
        <form class="smart-form client-form" id="smart-form-reset"  role="form" method="POST" action="<?php echo e(url('admin/password/reset')); ?>">
            <?php echo csrf_field(); ?>


            <header>
                Reset Password
            </header>

            <fieldset>
                <?php if(session('status')): ?>
                    <div class="alert alert-success">
                        <?php echo e(session('status')); ?>

                    </div>
                <?php endif; ?>
                <?php if(Session::has('message')): ?>
                    <div class="warning">
                        <?php echo e(Session::get('message')); ?>

                    </div>
                <?php endif; ?>
                <?php if(Session::has('s_message')): ?>
                    <div class="success">
                        <?php echo e(Session::get('s_message')); ?>

                    </div>
                <?php endif; ?>

                <section>
                    <label class="input<?php echo e($errors->has('email') ? ' state-error' : ''); ?>">
                        <i class="icon-append fa fa-envelope"></i>
                        <input type="email" name="email" class="<?php echo e($errors->has('email') ? ' invalid' : ''); ?>" placeholder="Email address" value="<?php echo e(old('email')); ?>">
                        <b class="tooltip tooltip-bottom-right">Enter your email</b> </label>
                    <?php if($errors->has('email')): ?>
                        <em class="invalid" for="email"><?php echo e($errors->first('email')); ?></em>
                    <?php endif; ?>
                </section>
            </fieldset>


            <footer>
                <button type="submit" class="btn btn-primary">
                    Send Password Reset Link
                </button>
            </footer>
        </form>

    </div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('validation_script'); ?>

    <script type="text/javascript">
        runAllForms();
        // Validation
        $(function () {
// Validation
            $("#smart-form-reset").validate({
// Rules for form validation
                rules: {
                    email: {
                        required: true,
                        email: true
                    }
                },
// Messages for form validation
                messages: {
                    email: {
                        required: 'Please enter your email address',
                        email: 'Please enter a VALID email address'
                    }
                },
// Ajax form submition
                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        success: function () {
                            $("#smart-form-register").addClass('submited');
                        }
                    });
                },
// Do not change code below
                errorPlacement: function (error, element) {
                    error.insertAfter(element.parent());
                }
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('sm-admin/Auth/AuthLayout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>