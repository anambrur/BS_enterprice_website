<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/14/17
 * Time: 2:18 PM
 */
?>
<div class="section-title">
    <h2>Registered Customers</h2>
</div>

<div class="form-input">
    <label for="login-email">Email Address<span>*</span></label>
    <?php echo Form::text("username",  null, ['required' => 'true']); ?>

    <span class="error-notice"></span>
</div>
<div class="form-input">
    <label for="login-password">Password<span>*</span></label>
    <input name="password" required type="password">
    <span class="error-notice"></span>
</div>
<div class="clearfix">
    <div class="form-button pull-left">
        <span></span><b></b>
        <button style="margin-top: 20px;" type="submit" class="cr-btn">
            <span>login Now</span>
        </button>
        <!-- <input type="submit" value="login Now"> -->
    </div>
    <a class=" pull-right" href="<?php echo e(url('/forgot-password')); ?>">Forgot Your Password?</a>
</div>

<?php
$fb_api_enable = SM::get_setting_value('fb_api_enable') == 'on' ? true : false;
$gp_api_enable = SM::get_setting_value('gp_api_enable') == 'on' ? true : false;
$tt_api_enable = SM::get_setting_value('tt_api_enable') == 'on' ? true : false;
$li_api_enable = SM::get_setting_value('li_api_enable') == 'on' ? true : false;
?>
<?php if($fb_api_enable || $gp_api_enable || $tt_api_enable): ?>
    <div class="login-socail-form">
        <span class="or">OR</span>
        <div class="doodle_footer-socail">
            <?php if($fb_api_enable): ?>
                <a href="<?php echo url("login/facebook"); ?>" class="face">
                    <i class="fa fa-facebook"></i>
                    <span class="fa fa-facebook"></span>
                </a>
            <?php endif; ?>
            <?php if($gp_api_enable): ?>
                <a href="<?php echo url("login/google"); ?>" class="goo"><i class="fa fa-google-plus"></i>
                    <span class="fa fa-google-plus"></span>
                </a>
            <?php endif; ?>
            <?php if($tt_api_enable): ?>
                <a href="<?php echo url("login/twitter"); ?>" class="twi"><i class="fa fa-twitter"></i>
                    <span class="fa fa-twitter"></span>
                </a>
            <?php endif; ?>
            <?php if($li_api_enable): ?>
                <a href="<?php echo url("login/linkedin"); ?>" class="link"><i class="fa fa-linkedin"></i>
                    <span class="fa fa-linkedin"></span>
                </a>
            <?php endif; ?>
        </div>
        <?php if(Session::has("w_message_social_login")): ?>
            <div class="clearfix text-center">
                <span class="error-notice"><?php echo e(Session::get("w_message_social_login")); ?></span>
            </div>
            <?php
            Session::forget("w_message_social_login");
            ?>
        <?php endif; ?>
    </div>
<?php endif; ?>
