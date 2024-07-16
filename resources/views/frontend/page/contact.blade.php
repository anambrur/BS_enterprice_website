@extends("frontend.master")
@section("title", "About")
@section("content")
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
        style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
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

    <div class="pg-contact-us-area section-padding-lg bg-gray">
        <div class="container">
            <div class="row">
                @empty(!$contact_title || !$contact_subtitle)
                    <div class="col-lg-6 offset-lg-3">
                        <div class="small-title text-center">
                            @empty(!$contact_title)
                                <h3>{{ $contact_title }}</h3>
                            @endempty
                            @empty(!$contact_subtitle)
                                <p>{{ $contact_subtitle }}</p>
                            @endempty
                        </div>
                    </div>
                @endempty
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="pg-contact-form mr-0 mr-lg-3">
                        <div class="small-title">
                            @empty(!$contact_form_title)
                            @endempty
                        </div>
                        {{ Form::open(['url' => 'send_mail', 'method' => 'post', 'id'=>'contactMail']) }}
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
                                <div class="single-input form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
                                    {!! app('captcha')->display() !!}
                                    @if ($errors->has('g-recaptcha-response'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                        </span>
                                    @endif
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
                        {!! Form::close() !!}
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
                        @if($contact_branches)
                            <ul>
                                @foreach($contact_branches as $branch)
                                    <li class="single-quick-contact">
                                        @empty(!$branch['title'])
                                            <h5>{{ $branch['title'] }}</h5>
                                        @endempty
                                        <address>
                                            @empty(!$branch['address'])
                                                <p>{{ $branch['address'] }}</p>
                                            @endempty
                                            @empty(!$branch['email'])
                                                <p>{{ $branch['email'] }}</p>
                                            @endempty
                                            @empty(!$branch['mobile'])
                                                <p>{{ $branch['mobile'] }}</p>
                                            @endempty
                                        </address>
                                    </li>
                                @endforeach
                            </ul>
                        @endif
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
                    <iframe src="{{ $contact_location_longitude }}" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
@endsection



