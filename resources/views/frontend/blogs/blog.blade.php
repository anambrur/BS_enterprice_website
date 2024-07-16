@extends("frontend.master")

@section("title", "Blog")

@section("content")

@push('css')



@endpush

	<?php

	$countStickyPost = count( $stickyBlogPost );

	$isBreadcrumbEnable = SM::smGetThemeOption( "blog_is_breadcrumb_enable", false );



	$pagination = [

		[

			"title" => "Blog"

		]

	];

	$title = SM::smGetThemeOption( "blog_banner_title" );

	$subtitle = SM::smGetThemeOption( "blog_banner_subtitle" );

	$bannerImage = SM::smGetThemeOption( "blog_banner_image" );

	?>



<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

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

<!-- Blog List -->

<div class="pg-blog-list-area section-padding-lg bg-white">

    <div class="container">

        <div class="row">



            <!-- Blog Grid -->

            <div class="col-lg-8">

                <div class="row blog-grid"> 

                	<!--Single Blog -->

                   @include('frontend.blogs.blog_list_item') 

                   <!--// Single Blog --> 



                </div> 

            </div>

            <!--// Blog Grid -->



            <!-- Sidebar -->

			<div class="col-lg-4"> 

             @include('frontend.blogs.blog_sidebar') 

        	 </div>

            <!--// Sidebar -->



        </div>

    </div>

</div>

<!--// Blog List -->

@endsection