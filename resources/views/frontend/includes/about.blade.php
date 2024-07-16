<?php
    $seo_marketing_subtitle = SM::smGetThemeOption( "seo_marketing_subtitle", "" );
    $seo_marketing_title = SM::smGetThemeOption( "seo_marketing_title", "" );
    $seo_marketing_description = SM::smGetThemeOption( "seo_marketing_description", "" );
    $seo_video_banner = SM::smGetThemeOption( "seo_video_banner", "images/video_bg.png" );
    $seo_video_youtube_link = SM::smGetThemeOption( "seo_video_youtube_link", "" );
?>

<section id="about-area" class="about_content_homepage about-area section-padding-lg">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6 order-2 order-lg-1">
                <div class="about-content wow slideInLeft">
                    <h3>{{ $seo_marketing_title }}</h3>
                    <p>{!! str_limit($seo_marketing_description, 400) !!}</p> 
                    <a href="{{url('/about')}}" class="readMoreBtn btn">
                        Read More
                    </a>
                </div>
            </div>

            <div class="col-xl-6 col-lg-6 order-1 order-lg-2">
                <div class="video-box ml-0 ml-xl-5 wow slideInRight" data-tilt>
                    <div class="video-box-thumb">
                        <img src="{!! SM::sm_get_the_src($seo_video_banner, 622, 360) !!}" alt="{{ $seo_marketing_title }}">
                    </div>
                    {{--<a href="https://www.youtube.com/watch?v=dk9uNWPP7EA" class="play-button">--}}
                    {{--<i class="flaticon-play-button"></i>--}}
                    {{--</a>--}}
                    <a href="{{ $seo_video_youtube_link }}" class="play-button">
                        <i class="flaticon-play-button"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>