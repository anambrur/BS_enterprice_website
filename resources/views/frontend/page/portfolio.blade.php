@extends("frontend.master")
@section("title", "About")
@section("content") 
    <?php
    $title = SM::smGetThemeOption("case_banner_title");
    $subtitle = SM::smGetThemeOption("case_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("case_banner_image"); 
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
    <?php
    $case_title = SM::smGetThemeOption("case_title", "");
    $case_subtitle = SM::smGetThemeOption("case_subtitle", "");
    ?>
    <!-- Portfolio Area -->
    <section class="portfolio-area section-padding-lg bg-white">

        <div class="portfolio-wrap">
            <!-- Poftfolio Filters -->
            <div class="portfolio-filters">
                {{-- <button class="active is-checked" data-filter="*">ALL</button> --}}

                @foreach($categoryables as $category)
                    <button data-filter=".cat_{{$category->id}}" class="">{{ $category->title }}</button>
                @endforeach
            </div>
            <!--// Poftfolio Filters -->

            <!-- Portfolios -->
            <div class="row no-gutters portfolios portfolios-style-3 portfolios-zoom-button-holder" data-show="20"
                 data-load="8">

<?PHP
// dd($portfolios_data);
// exit();



?>

            @foreach($portfolios_data as $portfolio)
                <!-- Single Portfolio -->
                <div style="padding: 2px;" class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 portfolio-single
                 @foreach($portfolio->categories as  $cat)
                            cat_{{ $cat->id }}
                    @endforeach">
                        <div class="portfolio">

                            
                            <a href="{{ URL::to('/portfolio/detail/'.$portfolio->slug)}}">
                            {{-- <a href="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}" data-lightbox="roadtrip"> --}}
                            <div class="portfoilo-thumb">
                                <img src="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}"
                                     alt="{{ $portfolio->title }}">

                                     
                            </div>
                            <div class="portfolio-content">
                                <div class="portfolio-content-inner text-center">
                                   <!--  <a href="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}"
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
                        </div>
                    </div>
                    <!--// Single Portfolio -->
                @endforeach

            </div>
            <!--// Portfolios -->

            <div class="portfolio-load-more-button text-center">
                <button class="load-more-toggle cr-btn cr-btn">
                    <span>Load More</span>
                </button>
            </div>

        </div>

    </section>
    <!--// Portfolio Area -->
@endsection