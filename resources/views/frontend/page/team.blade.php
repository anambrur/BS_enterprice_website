@extends("frontend.master")

@section("title", "About")

@section("content")

    <?php

    $title = SM::smGetThemeOption("team_banner_title");

    $subtitle = SM::smGetThemeOption("team_banner_subtitle");

    $bannerImage = SM::smGetThemeOption("team_banner_image");

    ?>



    <!-- Breacrumb Area -->

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

    <!--//Breacrumb Area -->



   <!-- Team Area -->

@include('frontend.includes.team1') 

 <!--// Team Area -->

@endsection