<!-- login -->

<div id="loginModaldd" class="modal fade loginModalOpen" tabindex="-1" data-focus-on="input:first">

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

                                <div class="col-sm-6" style="margin-top: -25px;">

                                     <form id="loginForm1" method="post" action="{{ url('/login') }}"

                                          class="login-form-wraper smAuthHide smAuthForm">

                                        {!! csrf_field() !!}

                                    @include('frontend.common.login_fields')

                                     </form>

                                </div>

                                <div class="col-sm-6" style="margin-top: -25px;">

                                    <form method="post" id="registrationForm" class="smAuthForm"

                                          action="{{ url('/register') }}">

                                        {!! csrf_field() !!}

                                        <div class="section-title">

                                            <h2>Create an Account</h2>

                                        </div>

                                        {{--<p>Please provide the details in the required fields. Your information is safe with us! </p>--}}

                                        <div class="form-input">

                                            <label for="firstname" class="requiredStar">Full Name</label>

                                            {!! Form::text("firstname",  null, ["id"=>"firstname", 'required' => 'true']) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                         <div class="form-input">

                                            <label for="mobile" class="requiredStar">Phone</label>

                                            {!! Form::text("mobile",  null, ["id"=>"mobile", 'required' => 'true']) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                        <?php

                                        if (Session::has("profile") && count(Session::get("profile")) > 0

                                            && isset(Session::get("profile")->email) && Session::get("profile")->email != '') {

                                            $profile = Session::get("profile");

                                            $email = $profile->email;

                                            $extra = ["id" => "email", "readonly" => "", 'required' => 'true'];

                                        } else {

                                            $email = null;

                                            $extra = ["id" => "email", 'required' => 'true'];

                                        }

                                        ?>

                                        <div class="form-input">

                                            <label for="email" class="requiredStar">Email Address</label>

                                            {!! Form::email("email",  $email, $extra) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="form-input">

                                            <label for="password" class="requiredStar">Password</label>

                                            <input name="password" id="password" required type="password">

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="form-input">

                                            <label for="password_confirmation" class="requiredStar">Confirmation

                                                Password</label>

                                            <input name="password_confirmation" required id="password_confirmation"

                                                   type="password">

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="clearfix">

                                            <div class="form-button pull-left">

                                                <button style="margin-top: 20px;" type="submit" class="cr-btn">

                                                    <span>Signup Now</span>

                                                </button>

                                            </div>

                                        </div>

                                        @include("frontend.common.register_social")

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

<!-- Register Modal -->

<div id="regModal" class="modal fade regModalOpen" role="dialog">

    <div class="modal-dialog modal-lg" style="overflow-y: initial !important; width: 120%;">

        <!-- Modal content-->

        <div class="modal-content">

            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h4 class="modal-title"></h4>

            </div>

            <div class="modal-body">

                <div class="singup-form-wraper smAuthHide">

                    <div class="commom-form login-form-new">

                        <div class="login-form-new-inner">

                            <div class="row">

                                <div class="col-sm-12">

                                    @if(Session::has("socialAuthSuccessMessage"))

                                        <div class="alert alert-success">

                                            {{ session( 'socialAuthSuccessMessage' ) }}

                                            <?php

                                            Session::forget("socialAuthSuccessMessage");

                                            Session::save();

                                            ?>

                                        </div>

                                    @endif

                                    @if(Session::has("socialAuthWarningMessage"))

                                        <div class="alert alert-warning">

                                            {{ session( 'socialAuthWarningMessage' ) }}

                                            <?php

                                            Session::forget("socialAuthWarningMessage");

                                            Session::save();

                                            ?>

                                        </div>

                                    @endif

                                </div>

                                <div class="col-md-6">

                                    <form method="post" id="registrationForm" class="smAuthForm"

                                          action="{{ url('/register') }}">

                                        {!! csrf_field() !!}

                                        <div class="section-title">

                                            <h2>Create an Account</h2>

                                        </div>

                                        {{--<p>Please provide the details in the required fields. Your information is safe with us! </p>--}}

                                        <div class="form-input">

                                            <label for="firstname" class="requiredStar">Full Name</label>

                                            {!! Form::text("firstname",  null, ["id"=>"firstname", 'required' => 'true']) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                         <div class="form-input">

                                            <label for="mobile" class="requiredStar">Phone</label>

                                            {!! Form::text("mobile",  null, ["id"=>"mobile", 'required' => 'true']) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                        <?php

                                        if (Session::has("profile") && count(Session::get("profile")) > 0

                                            && isset(Session::get("profile")->email) && Session::get("profile")->email != '') {

                                            $profile = Session::get("profile");

                                            $email = $profile->email;

                                            $extra = ["id" => "email", "readonly" => "", 'required' => 'true'];

                                        } else {

                                            $email = null;

                                            $extra = ["id" => "email", 'required' => 'true'];

                                        }

                                        ?>

                                        <div class="form-input">

                                            <label for="email" class="requiredStar">Email Address</label>

                                            {!! Form::email("email",  $email, $extra) !!}

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="form-input">

                                            <label for="password" class="requiredStar">Password</label>

                                            <input name="password" id="password" required type="password">

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="form-input">

                                            <label for="password_confirmation" class="requiredStar">Confirmation

                                                Password</label>

                                            <input name="password_confirmation" required id="password_confirmation"

                                                   type="password">

                                            <span class="error-notice"></span>

                                        </div>

                                        <div class="clearfix">

                                            <div class="form-button pull-left">

                                                <button style="margin-top: 20px;" type="submit" class="cr-btn">

                                                    <span>Signup Now</span>

                                                </button>

                                            </div>

                                        </div>

                                        @include("frontend.common.register_social")

                                    </form>

                                </div>

                                <div class="col-md-6">

                                    <form method="post" class="smAuthForm" action="{{ url('/login') }}" id="loginForm3">

                                        {!! csrf_field() !!}

                                        <div class="reg-customers hidden-xs hidden-sm">

                                            @include('frontend.common.login_fields')

                                        </div>

                                    </form>

                                </div>

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

<!-- Forgot Pass Modal -->

<div id="forgotPassModal" class="modal fade" role="dialog">

    <div class="modal-dialog modal-lg" style="overflow-y: initial !important; width: 120%;">

        <!-- Modal content-->

        <div class="modal-content">

            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h4 class="modal-title"></h4>

            </div>

            <div class="modal-body">

                <form method="post" action="{{ url('/password/reset') }}" id="forgotPassword"

                      class="forgot-form-wraper  smAuthHide smAuthForm {{ !$authCheck && SM::current_controller()=="ForgotPassword" && SM::current_method()=="index" ? ' active' : '' }}"

                      style="display: {{ SM::current_controller()=="ForgotPassword" && SM::current_method()=="index" ? 'block' : 'none' }}">

                    {!! csrf_field() !!}

                    <!-- <?php

                    $isForgotPassword = SM::current_controller() == "ForgotPassword" ? true : false;

                    ?> -->

                    <div class="commom-form login-form-new">

                        <div class="login-form-new-inner">

                            <div class="row">

                                <div class="col-lg-6">

                                    <div class="section-title">

                                        <h2>Forgot Your Password</h2>

                                    </div>

                                    <p>Can’t remember your log in details? Don’t worry. Follow these simple steps and

                                        get your access to our site back in a moment.</p>

                                    <div class="form-input">

                                        <label for="forgot-email" class="requiredStar">Email Address</label>

                                        {!! Form::email("email",  null, ["id"=>"forgot-email", 'required' => 'true']) !!}

                                        <span class="error-notice"></span>

                                    </div>

                                    <div class="clearfix">

                                        <div class="form-button pull-left">

                                            <span></span><b></b>

                                            <button type="submit" class="cr-btn">

                                                <span>Forgot Password</span>

                                            </button>

                                        </div>

                                    </div>

                                    <div class="clearfix">

                                        <span class="success-notice"></span>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </form>

                @if(SM::current_method()=="showResetForm")

                    <div class="singup-form-wraper  smAuthHide"

                         style="display: block">

                        <div class="commom-form login-form-new">

                            <div class="login-form-new-inner">

                                <a href="#" class="close-icon"><i class="fa fa-times-circle"></i></a>

                                <div class="row">

                                    <div class="col-md-6">

                                        <form method="post" class="smAuthForm" id="resetPassword"

                                              action="{{ url('/password/update') }}">

                                            {!! csrf_field() !!}

                                            <?php

                                            $isshowResetForm = SM::current_method() == "showResetForm" ? true : false;

                                            ?>

                                            <h2>Reset Password Form</h2>

                                            <div class="form-input">

                                                <input type="hidden" name="token" value="{{$token}}">

                                                <label class="requiredStar" for="email">Email Address</label>

                                                {!! Form::email("email",  null, ["id"=>"email", 'required' => 'true']) !!}

                                                <span class="error-notice"></span>

                                            </div>

                                            <div class="form-input">

                                                <label class="requiredStar" for="password">Password</label>

                                                <input name="password" id="password" required type="password">

                                                <span class="error-notice"></span>

                                            </div>

                                            <div class="form-input">

                                                <label class="requiredStar" for="password_confirmation">Confirmation

                                                    Password</label>

                                                <input name="password_confirmation" required id="password_confirmation"

                                                       type="password">

                                                <span class="error-notice"></span>

                                            </div>

                                            <div class="clearfix">

                                                <div class="form-button pull-left">

                                                    <span></span><b></b>

                                                    <input type="submit" value="Reset Now">

                                                </div>

                                            </div>

                                        </form>

                                    </div>

                                    <div class="col-md-6">

                                        <form method="post" class="smAuthForm" id="loginForm2"

                                              action="{{ url('/login') }}">

                                            {!! csrf_field() !!}

                                            <div class="reg-customers hidden-xs hidden-sm">

                                                @include('common.login_fields')

                                            </div>

                                        </form>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                @endif

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

            </div>

        </div>

    </div>

</div>