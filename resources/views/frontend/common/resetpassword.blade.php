@extends("frontend.master")
@section("title", "Reset Password -")
@section("content")
    <?php
    $title = 'Forgot Password';
    $subtitle = 'Forgot your Password';
    $bannerImage = SM::smGetThemeOption("contact_banner_image");
    ?>
    <!--BREADCRUMB START-->
    <div class="breadcrumb-option"
         style="background:url( {!! SM::sm_get_the_src( 'blog-details-banner_1.jpg' ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
                 background-attachment: scroll;
                 background-size: cover; " data-black-overlay="7">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                    <div class="cr-breadcrumb text-center">
                        @empty(!$title)
                            <h1>{{$title}}</h1>
                        @endempty
                        @if(isset($subtitle) && $subtitle != '')
                            <p>{{$subtitle}}</p>
                        @endif
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
                                Reset Password
                            </h3>
                        </div>
                        <?php
                        $authCheck = Auth::check();
                        ?>
                        <form method="post" class="smAuthForm" id="resetPassword"
                              action="{{ url('/password/update') }}">
                            {!! csrf_field() !!}
                            <?php
                            $isshowResetForm = SM::current_method() == "showResetForm" ? true : false;
                            ?>
                            <div class="row no-gutters">
                                <div class="col-lg-6 col-md-6">
                                    <div class="single-input">
                                        <input type="hidden" name="token" value="{{$token}}">
                                        {!! Form::email("email",  null, ["id"=>"email", 'class'=>'form-control', 'required','placeholder'=>'Please enter your email']) !!}
                                        <span class="error-notice"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="single-input">
                                        <input name="password" class="form-control"
                                               placeholder="Enter your new password" id="password" type="password">
                                        <span class="error-notice"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="single-input">
                                        <input name="password_confirmation" class="form-control"
                                               placeholder="Enter your new confirmation password"
                                               id="password_confirmation" type="password">
                                        <span class="error-notice"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="single-input">
                                        {!! app('captcha')->display() !!}
                                        @if ($errors->has('g-recaptcha-response'))
                                            <span class="help-block">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                                        @endif
                                        <span class="error-notice"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single-input">
                                        <button class="cr-btn" type="submit">
                                            <span>Reset Now</span>
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
@endsection