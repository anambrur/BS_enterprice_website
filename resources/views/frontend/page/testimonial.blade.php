@extends("frontend.master")
@section("title", "About")
@section("content")
    <?php
    $title = SM::smGetThemeOption("testimonial_banner_title");
    $subtitle = SM::smGetThemeOption("testimonial_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("testimonial_banner_image");
    ?>

    <!-- Breacrumb Area -->
    <div class="breadcrumb-option"
         style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
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
    <!--//Testimonial Area -->
    @include('frontend.includes.testimonial')
    <!--// Testimonial Area -->
@endsection