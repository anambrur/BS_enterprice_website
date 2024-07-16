@extends("frontend.master")

@section("title", "About -")

@section("content")

<?php

    $wwrTitle = SM::smGetThemeOption( "wwr_title" );

    $wwrSubtitle = SM::smGetThemeOption( "wwr_subtitle" );

    $wwrDescription = SM::smGetThemeOption( "wwr_description" );

    $ourMission = SM::smGetThemeOption( "our_mission" );

    $ourVision = SM::smGetThemeOption( "our_vision" );

    $histories = SM::smGetThemeOption( "histories" );

    // $historiesCount = count( $histories );

    $title = SM::smGetThemeOption( "about_banner_title" );

    $subtitle = SM::smGetThemeOption( "about_banner_subtitle" );

    $bannerImage = SM::smGetThemeOption( "about_banner_image" );

?>

@push('css')

<style type="text/css">

    .ab-mis-icon {

        margin-bottom: 15px;

        min-height: 30px;

        padding-left: 47px;

        position: relative;

    }

    .ab-mis-icon h2, .ab-mis-icon h3 {

        font-weight: 600;

        font-size: 26px;

        color: #1c2d5d;

        margin: 0;

        line-height: 32px;        

    }

    .ab-mis-icon img {

        width: 30px;

        height: 30px;

        position: absolute;

        left: 0;

        top: 1px;

    }

</style>

@endpush

<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

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

<!-- About Area -->

<section class="services-area section-padding-lg bg-white">

    <div class="container"> 

        <div class="row">



            <!-- Signle Service -->

            <div class="col-lg-4">

                    <div class="about-content" style="margin-bottom: 40px;">

                        <div class="ab-mis-icon">

                            <img src="{{ asset('images/who_we_are.png') }}" alt="about">

                            <h2>{{ $wwrTitle }}</h2>

                        </div>

                        @empty(!$wwrSubtitle)

                            <p class="plead">{{ $wwrSubtitle }}</p>

                        @endempty

                        {!! stripslashes($wwrDescription) !!}

                    </div>
                </div>
                <div class="col-lg-4">

                    @empty(!$ourMission)

                        <div class="about-mission" style="margin-bottom: 40px;">

                            <div class="ab-mis-icon">

                                <img src="{{ asset('images/icon1.png') }}" alt="Mission">

                                <h2>Our Mission</h2>

                            </div>

                            <p>{!! stripslashes($ourMission) !!}</p>

                        </div>

                    @endempty
                </div>
                <div class="col-lg-4">

                    @empty(!$ourVision)

                        <div class="about-mission">

                            <div class="ab-mis-icon">

                                <img src="{{ asset('images/icon2.png') }}" alt="Mission">

                                <h2>Our Vision</h2>

                            </div>

                            <p>{!! stripslashes($ourVision) !!}</p>

                        </div>

                    @endempty
                </div>

                </div>

            <!--// Signle Service -->

        </div>

    </div>

</section>

<!-- //About Area -->



<!-- Team Area -->

{{--@include('frontend.includes.team1') --}}

 <!--// Team Area -->

 <!-- Testimonial Area -->

{{-- @include('frontend.includes.testimonial')  --}}

<!--// Testimonial Area -->



  <!-- Counter Area -->

{{-- @include('frontend.includes.counter') --}}

<!--// Counter Area -->



  <!-- Brand Logo Area -->

@include('frontend.includes.brand') 

<!--// Brand Logo Area -->

@endsection