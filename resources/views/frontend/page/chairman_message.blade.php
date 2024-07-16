@extends("frontend.master")

@section("title", "Chairman Message")

@section("content")

<?php

    $chairman_message_description = SM::smGetThemeOption("chairman_message_description");

    $chairman_message__image = SM::smGetThemeOption("chairman_message__image");

    $chairman_message_banner_image = SM::smGetThemeOption("chairman_message_banner_image");

    $chairman_message_qoutas = SM::smGetThemeOption("chairman_message_qoutas");
    
    
    $chairman_message_title = SM::smGetThemeOption("chairman_message_title");
    
    $chairman_message_subhead = SM::smGetThemeOption("chairman_message_subhead");
    
    $chairman_name = SM::smGetThemeOption("chairman_name");
    
    $chairman_message_designation = SM::smGetThemeOption("chairman_message_designation");


?>

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $chairman_message_banner_image ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

        background-attachment: scroll;

        background-size: cover; " data-black-overlay="7">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="cr-breadcrumb text-center">

                        @empty(!$chairman_message_title)

                        <h1>{{$chairman_message_title}}</h1>
                        @endempty

               

                    
                        @if(isset($chairman_message_subhead) && $chairman_message_subhead != '')

                            <p>{{$chairman_message_subhead}}</p>

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

            <div class="col-md-5">
                <div class="chiaman-message-content">
                    @empty(!$chairman_message_title)

                        <h3>{{$chairman_message_title}}</h3>
                    @endempty
                    <img src="{{SM::sm_get_the_src( $chairman_message__image )}}" class="img-responsive">
                     @empty(!$chairman_name)
                        <h4>{{$chairman_name}}</h4>
                    @endempty
                     @empty(!$chairman_message_designation)
                        <b>{{$chairman_message_designation}}</b>
                    @endempty
                        <hr>
                        <p> {{$chairman_message_description}}</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="chairman-qouta chiaman-message-content">
                    <h3>Chairman Qoutas</h3>
                    @if($chairman_message_qoutas)
                    
                        @foreach($chairman_message_qoutas as $value)
                            <div class="media">
                              <div class="media-body">
                                <h4 class="media-heading">{{$value['title']}}</h4>
                                <p>{{$value['answer']}}</p>
                              </div>
                            </div>
                        @endforeach
                    @endif
                   
                </div>
            </div>
            

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