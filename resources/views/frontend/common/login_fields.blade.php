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
{{--<p>Have an account with Next Page Technology Ltd. ? Please log into your account, experience our offers and enhance your digital marketing experience with us.</p>--}}
<div class="form-input">
    <label for="login-email">Email Address<span>*</span></label>
    {!! Form::text("username",  null, ['required' => 'true']) !!}
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
    <a class=" pull-right" href="{{url('/forgot-password')}}">Forgot Your Password?</a>
</div>

<?php
$fb_api_enable = SM::get_setting_value('fb_api_enable') == 'on' ? true : false;
$gp_api_enable = SM::get_setting_value('gp_api_enable') == 'on' ? true : false;
$tt_api_enable = SM::get_setting_value('tt_api_enable') == 'on' ? true : false;
$li_api_enable = SM::get_setting_value('li_api_enable') == 'on' ? true : false;
?>
@if($fb_api_enable || $gp_api_enable || $tt_api_enable)
    <div class="login-socail-form">
        <span class="or">OR</span>
        <div class="doodle_footer-socail">
            @if($fb_api_enable)
                <a href="{!! url("login/facebook") !!}" class="face">
                    <i class="fa fa-facebook"></i>
                    <span class="fa fa-facebook"></span>
                </a>
            @endif
            @if($gp_api_enable)
                <a href="{!! url("login/google") !!}" class="goo"><i class="fa fa-google-plus"></i>
                    <span class="fa fa-google-plus"></span>
                </a>
            @endif
            @if($tt_api_enable)
                <a href="{!! url("login/twitter") !!}" class="twi"><i class="fa fa-twitter"></i>
                    <span class="fa fa-twitter"></span>
                </a>
            @endif
            @if($li_api_enable)
                <a href="{!! url("login/linkedin") !!}" class="link"><i class="fa fa-linkedin"></i>
                    <span class="fa fa-linkedin"></span>
                </a>
            @endif
        </div>
        @if(Session::has("w_message_social_login"))
            <div class="clearfix text-center">
                <span class="error-notice">{{ Session::get("w_message_social_login") }}</span>
            </div>
            <?php
            Session::forget("w_message_social_login");
            ?>
        @endif
    </div>
@endif
