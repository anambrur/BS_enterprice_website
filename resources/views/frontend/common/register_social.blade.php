<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 12/3/17
 * Time: 12:04 PM
 */
?>
<?php
$fb_api_enable = SM::get_setting_value( 'fb_api_enable' ) == 'on' ? true : false;
$gp_api_enable = SM::get_setting_value( 'gp_api_enable' ) == 'on' ? true : false;
$tt_api_enable = SM::get_setting_value( 'tt_api_enable' ) == 'on' ? true : false;
$li_api_enable = SM::get_setting_value( 'li_api_enable' ) == 'on' ? true : false;
?>
@if($fb_api_enable || $gp_api_enable || $tt_api_enable || $li_api_enable)
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
    </div>
@endif
