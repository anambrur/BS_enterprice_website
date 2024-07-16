@extends("frontend.master")
@section("title", $portfolio->title)
@section("content")
    <?php 
    $title = SM::smGetThemeOption("case_detail_banner_title");
    $subtitle = SM::smGetThemeOption("case_detail_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("case_detail_banner_image");  
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
    <!--//Breacrumb Area -->

      <!-- Page Content -->
    <main class="page-content">

        <div class="pg-service-area bg-white section-padding-lg">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                       <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pg-service-title">{{ $portfolio->title }}</h2>
                        </div>
                        <!--<div class="col-lg-7">-->
                        <!--    <div class="pg-portfolio-images cr-slider-navigation-3 center">-->
                        <!--        <a href="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}">-->
                        <!--            <img src="{{SM::sm_get_the_src($portfolio->image, 670, 391)}}" alt="{{ $portfolio->title }}">-->
                        <!--        </a>-->
                        <!--    </div>-->
                        <!--</div>                      -->
                    </div>
                    

                    <div class="gallary-items-img">
                    <?php 
                        $gallerys = $portfolio->image_gallery;    
                        $gallerys_decode = json_decode($gallerys);
                        if($gallerys_decode){
                            foreach ($gallerys_decode as $key => $gallery) {
                                if($gallery){
                        ?>
                        <a class="gallary-items-box" href="{{SM::sm_get_the_src($gallery, 1600, 1200)}}" data-lightbox="roadtrip">
                            <div class="portfoilo-thumb">
                                <img src="{{SM::sm_get_the_src($gallery, 1600, 1200)}}"
                                        alt="{{ $portfolio->title }}">

                                        
                            </div>
                            <div class="portfolio-content">
                                <div class="portfolio-content-inner text-center">
                                    <!--  <a href="{{SM::sm_get_the_src($gallery, 1600, 1200)}}"
                                        class="portfolio-zoom-trigger">
                                        <i class="flaticon-interface"></i>
                                    </a> -->
                                    <h3>
                                        {{ $portfolio->title }}
                                    </h3>
                                    <div class="pic-caption">
                                        <ul>
                                            @foreach($portfolio->categories as $category)
                                                <li>
                                                    <h6>
                                                    <img src="{{SM::sm_get_the_src($category->image, 20, 20)}}" alt="{{ $category->title }}"> {{ $category->title }}
                                                </h6>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            </a>
                        <?php
                                }
                            }
                        }
                        ?>
</div>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <!--// Page Content --> 
@endsection