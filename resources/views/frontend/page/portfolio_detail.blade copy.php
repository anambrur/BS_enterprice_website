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
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                       <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pg-service-title">{{ $portfolio->title }}</h2>
                        </div>
                        <div class="col-lg-7">
                            <div class="pg-portfolio-images cr-slider-navigation-3">
                                <a href="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}">
                                    <img src="{{SM::sm_get_the_src($portfolio->image, 670, 391)}}" alt="{{ $portfolio->title }}">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="pg-service-description section-padding-lg">
                                <div class="small-title">
                                    <h4>Details</h4>
                                </div>
                                <ul>
                                    <li>CATEGORIES :
                                        <?php
                                        $getCategories = $portfolio->categories;
                                        ?>
                                        @if(count($getCategories)>0)
                                            <span>
                                                    @foreach($getCategories as $category)
                                                    @if($category->title == ! '')
                                                        {{$category->title}}
                                                        @if (!$loop->last)
                                                            ,
                                                        @endif
                                                    @endif
                                                @endforeach

                                            </span>
                                        @endif
                                    </li>

                                    <li>DURATION :
                                        <span>{{ $portfolio->duration }}</span>
                                    </li>
                                    <li>LINK :
                                        <span> <a target="_blank" href="{{ $portfolio->link }}">{{ $portfolio->link }}</a> </span>
                                    </li>
                                    <li>Techonology :
                                        <?php
                                        $getTags = $portfolio->tags;
                                        ?>
                                        @if(count($getTags)>0)
                                            <span>
                                                    @foreach($getTags as $tag)
                                                    @if($tag->title == ! '')
                                                        {{$tag->title}}
                                                        @if (!$loop->last)
                                                            ,
                                                        @endif
                                                    @endif
                                                @endforeach

                                            </span>
                                        @endif
                                        {{--<span>Web Development</span>--}}
                                    </li>
                                </ul>
                            </div>
                             @empty(!$portfolio->description)
                            <div class="pg-service-details">
                                <div class="small-title">
                                    <h4>Description</h4>
                                </div>
                                <p>{!! $portfolio->description !!}</p>
                            </div>
                            @endempty
                            <!-- 
                            <div class="pg-service-details">
                                <div class="small-title">
                                    <h4>Description</h4>
                                </div>
                                <p>{!! $portfolio->description !!}</p>
                            </div> -->
                        </div>
                    </div>

                        <!-- Related project -->
                        <div class="pg-related-portfolio-wrap">
                            <h4>Related Project</h4>
                            <div class="pg-related-portfolios cr-slider-navigation-4">
                                 @foreach($relatedPortfolio as $portfolio)
                                <!-- Signle Portfolio -->
                                <div class="portfolio">
                                     <a href="{{ url("portfolio/detail/" . $portfolio->slug ) }}">
                                    <div class="portfoilo-thumb">
                                        <img src="{{SM::sm_get_the_src($portfolio->image, 337, 302)}}"
                                     alt="{{ $portfolio->title }}" alt="{{ $portfolio->title }}">
                                    </div>
                                    <div class="portfolio-content">
                                        <div class="portfolio-content-inner text-center">
                                            <h3>
                                               {{ $portfolio->title }}
                                            </h3>
                                           <div class="pic-caption">
                                            <ul>
                                                @foreach($portfolio->categories as $category)
                                                    <li>
                                                       <h6>
                                                        <img style="display: inline;" src="{{SM::sm_get_the_src($category->image, 20, 20)}}" alt="{{ $category->title }}"> {{ $category->title }}
                                                    </h6>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div> 
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!--// Signle Portfolio --> 
                                  @endforeach
                            </div>
                        </div>
                        <!--// Related project -->

                    </div>
                </div>
            </div>
        </div>

    </main>
    <!--// Page Content --> 
@endsection