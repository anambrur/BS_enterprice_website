@extends("frontend.master")
@section("title", "Product -")
@section("content")

<?php
    $wwrTitle = SM::smGetThemeOption( "wwr_title" );
    $wwrSubtitle = SM::smGetThemeOption( "wwr_subtitle" );
    $wwrDescription = SM::smGetThemeOption( "wwr_description" );
    $ourMission = SM::smGetThemeOption( "our_mission" );
    $ourVision = SM::smGetThemeOption( "our_vision" );
    $histories = SM::smGetThemeOption( "histories" );
    $title = SM::smGetThemeOption( "about_banner_title" );
    $subtitle = SM::smGetThemeOption( "about_banner_subtitle" );
    $bannerImage = SM::smGetThemeOption( "about_banner_image" );
?>

@push('css')

@endpush

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                <div class="cr-breadcrumb text-center">
                 
                        <h1>Our Products</h1>
                        <p>The Story Of A Visionary Community</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="all-product-section">
<div class="container">

        <div class="row">
            <div class="col-md-3">
                <div class="category-sidebar">
                    <div class="nav-title">
                        <h5> Products  </h5>
                    </div>
                    <!-- <nav class = "navbar">
                        <ul>
                            @foreach ($categorys as $Key=> $category )
                                    <li class="nav-item">
                                        <a href="{{url('productview/'.$category->slug)}}" class="nav-link"> {{ $category->title }} </a>
                                    </li>                            
                            @endforeach
                        </ul>
                    </nav> -->

                    <nav class="product-category-sidebar">
                        <ul>
                            @foreach ($categorys as $category)  
                            <li class="category-collapse-btn">
                                <a href="{{url('productview/'.$category->slug)}}"> <span>{{ $category->title }}</span>  <i class="fa fa-angle-right" aria-hidden="true"></i> </a>
                                <ul class="dropdown-menu-collapse d-none">
                                    <li>
                                        <a href="#"> Softener Flakes 1 </a>
                                    </li>
                                    <li>
                                        <a href="#"> Softener Flakes 2 </a>
                                    </li>
                                    <li>
                                        <a href="#"> Softener Flakes 3 </a>
                                    </li>
                                    <li>
                                        <a href="#"> Softener Flakes 4 </a>
                                    </li>
                                    <li>
                                        <a href="#"> Softener Flakes 5 </a>
                                    </li>
                                </ul>
                            </li>
                            @endforeach  
                        </ul>
                    </nav>
                </div>
            </div>



            <div class="col-md-9">
                <div class="category-title">
                    <h4> All Products List </h4>
                </div>
                <!-- <div class="row">  
                    @foreach ($categorys as $category)  
                    <div class="col-md-6" style="padding: 15px; 0">
                        <div class="card">
                            <div class="card-body">
                                <a href="{{url('productview/'.$category->slug)}}">
                                    <div class="single-team single-team-style-2">
                                       
                                        <div class="team-thumb"> 
                                            <img src="{!! SM::sm_get_the_src($category->image) !!}" style="margin: 0 auto;display: block;">
                                        </div>
                                        <div class="team-content ">
                                            <div class="team-conetnt-info">
                                                <h5>
                                                    <a href="{{url('productview/'.$category->slug)}}">{{ $category->title }} </a>
                                                </h5>

                                                <article>
                                                    <p>{!! mb_strimwidth($category->description, 0, 200, ". . .") !!} </p>
                                                </article>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach                  
                </div> -->



                <div class="row">
                    @foreach ($products as $product)  
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <a href="{{url('productview/'.$product->slug)}}">
                                    <div class="product-img">
                                        <img src="{!! SM::sm_get_the_src($product->image) !!}" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> {{ $product->title }} </h4>
                                        <article>
                                            <p> {{$product->description}} </p>
                                        </article>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach  
                    
                </div>
            </div>
        </div>
    </div>
</div>

@endsection