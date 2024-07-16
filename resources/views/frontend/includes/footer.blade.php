<?php
    $footer_logo = SM::smGetThemeOption("footer_logo", "");
    $footer_widget2_title = SM::smGetThemeOption('footer_widget2_title', "Seo Services");
    $footer_widget2_description = SM::smGetThemeOption('footer_widget2_description', "");
    $footer_widget3_title = SM::smGetThemeOption('footer_widget3_title', "Company");
    $footer_widget3_description = SM::smGetThemeOption('footer_widget3_description', "");
    $footer_widget4_title = SM::smGetThemeOption('footer_widget4_title', "Technology");
    $footer_widget4_description = SM::smGetThemeOption('footer_widget4_description', "");
    $contact_branches = SM::smGetThemeOption("contact_branches");
?>



<footer id="footer" class="footer-area">
    <div class="footer-top-area bg-dark-light">
        <div class="container">
            <div class="footer-widgets widgets">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="single-widget widget-quick-links">
                            <h5 class="footer-widget-title"> About Eco Colour Chem </h5>
                            <p style="color: #fff;
                            font-size: 14px;
                            padding-right: 20px;
                            text-align: justify;">
                            {{ SM::smGetThemeOption("footer_content") }}</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="single-widget widget-quick-links">
                            <h5 class="footer-widget-title">{{ $footer_widget4_title }}</h5>
                            {!! stripslashes($footer_widget4_description) !!}
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="single-widget widget-quick-contact">
                            <h5 class="footer-widget-title">{{ $footer_widget3_title }}</h5>
                            <div class="single-widget widget-newsletter">
                                {!! Form::open(["method"=>"post", "action"=>'Front\Page@subscribe', 'id'=>"newsletterForm", 'class' => 'newsletter-widget-form']) !!}
                                <input name="email" type="email" placeholder="Your Email Address">
                                <button type="submit" class="btn readMoreBtn" id="newsletterFormSubmit">
                                    Subscribe
                                </button>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom-area bg-dark">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="footer-location">
                        <div class="doodle_footer-socail" style="text-align: left;">
                            @empty(!SM::smGetThemeOption("social_facebook"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_facebook") }}" class="face"><i class="fa fa-facebook"></i>
                                    <span class="fa fa-facebook"></span>
                                </a>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_twitter"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_twitter") }}" class="twi"><i class="fa fa-twitter"></i>
                                    <span class="fa fa-twitter"></span>
                                </a>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_google_plus"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_google_plus") }}" class="goo"><i class="fa fa-google-plus"></i>
                                    <span class="fa fa-google-plus"></span>
                                </a>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_linkedin"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_linkedin") }}" class="link"><i class="fa fa-linkedin"></i>
                                    <span class="fa fa-linkedin"></span>
                                </a>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_github"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_github") }}" class="git"><i class="fa fa-github"></i>
                                </a>
                                <span class="fa fa-github"></span>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_pinterest"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_pinterest") }}" class="pin"><i class="fa fa-pinterest-p"></i>
                                    <span class="fa fa-pinterest-p"></span>
                                </a>
                            @endempty
                            @empty(!SM::smGetThemeOption("social_youtube"))
                                <a target="_blank" href="{{ SM::smGetThemeOption("social_youtube") }}" class="you"><i class="fa fa-youtube-play"></i>
                                <span class="fa fa-youtube-play"></span>
                                </a>
                            @endempty
                        </div>
                    </div>
                    {{--<ul class="footer-social">--}}
                    {{--@empty(!SM::smGetThemeOption("social_facebook"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_facebook") }}">Facebook</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_twitter"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_twitter") }}">Twitter</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_google_plus"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_google_plus") }}">Google+</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_linkedin"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_linkedin") }}">Linkedin</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_github"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_github") }}">GitHub</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_pinterest"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_pinterest") }}">Pinterest</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--@empty(!SM::smGetThemeOption("social_youtube"))--}}
                    {{--<li>--}}
                        {{--<a href="{{ SM::smGetThemeOption("social_youtube") }}">YouTube</a>--}}
                    {{--</li>--}}
                    {{--@endempty--}}
                    {{--</ul>--}}
                </div>
                <div class="col-lg-6">
                    <p class="footer-copyright" style="margin-bottom: 0px;color: #fff"> {{ SM::smGetThemeOption("copyright") }}</p>
                </div>
            </div>
        </div>
    </div>
</footer>
