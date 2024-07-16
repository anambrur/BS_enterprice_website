<style>
    .pic-caption ul {
        width: 100%;
        /*padding-bottom: 10px;*/
        padding: 0 0 0 0px !important;
    }

    .pic-caption ul li {
        color: #eaeaea;
        font: 15px/24px proxima_nova_rgregular;
        padding: 0 8px;
        display: inline-block;
        /*background: url(/images/orange-bulet.png) left 9px no-repeat;*/
    }
</style>
<?php
$case_title = SM::smGetThemeOption("case_title", "");
$case_subtitle = SM::smGetThemeOption("case_subtitle", "");
?>
<!-- Portfolio Area -->
<section class="portfolio-area section-padding-lg">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <!-- <h2>{{ $case_title }}</h2>
                    <p>{{ $case_subtitle }}</p> -->
                    <h2> Event and Gallery </h2>
                </div>
            </div>
        </div>
    </div>

    <div class="portfolio-wrap">
        <!-- Poftfolio Filters -->
        <div class="portfolio-filters">
            <button class="active is-checked" data-filter="*">ALL</button>
            @foreach($categoryables as $category)
                <button data-filter=".cat_{{$category->id}}" class="">{{ $category->title }}</button>
            @endforeach
        </div>
        <!--// Poftfolio Filters -->

        <!-- Portfolios -->
        <div class="row no-gutters portfolios portfolios-style-3 portfolios-zoom-button-holder">
        @foreach($portfolios_data as $portfolio)
            <!-- Single Portfolio -->
                <div style="padding: 2px;" class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 portfolio-single
                 @foreach($portfolio->categories as  $cat)
                        cat_{{ $cat->id }}
                @endforeach">
                    <div class="portfolio">
                        <a href="{{ url("portfolio/detail/" . $portfolio->slug ) }}">
                        <div class="portfoilo-thumb">
                            <img src="{{SM::sm_get_the_src($portfolio->image, 1600, 1200)}}" alt="{{ $portfolio->title }}">
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

        <div class="portfolio-load-more-button text-center" style="margin-top: 50px;"> 
            <a href="{{ url('/portfolio')}}" class="cr-btn">
                <span>View More</span>
            </a>
        </div>

    </div>

</section>
<!--// Portfolio Area -->

