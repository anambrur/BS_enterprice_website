<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/8/17
 * Time: 12:15 PM
 */
?>
@extends("frontend.master")
@section('title', $packageInfo->title)
@section('content')
 <?php 
    if (Auth::check()) {
        $btn_class = 'btn_package_order';
    }else{
        $btn_class = 'loginFromOpenBtn';
    }
?>
    <!--BREADCRUMB START-->
  {{--  @empty(!$packageInfo->image) --}}
    <div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $packageInfo->image ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                <div class="cr-breadcrumb text-center">
                     @empty(!$packageInfo->title)
                        <h1>{{$packageInfo->title}}</h1>
                        <h5>{{$packageInfo->subtitle}}</h5>
                    @endempty
                </div>
            </div>
        </div>
    </div>
</div>
 {{--@endempty --}}
    <!--BREADCRUMB END-->
    <section class="common-section package-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ab-page-title text-center">
                        <h1><span>{{ $packageInfo->title }}</span></h1>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="package-pheader sm-content">
                        <?php
                        echo stripslashes( $packageInfo->description );
                        $pricing_detail = $packageInfo->detail;
                        $count_pricing_detail = count( $pricing_detail );
                        $detail = SM::sm_unserialize( $packageInfo->pricing_detail );
                        $pricing_title = ( isset( $detail['pricing_title'] ) && $detail['pricing_title'] != '' ) ? $detail['pricing_title'] : 'Website Content Writing';
                        ?>
                    </div>
                </div>
            </div>


            <div id="mrks_package_content">
                @if ( $packageInfo->type == 2 )
                    @include('packages.package_type_2', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @elseif ( $packageInfo->type == 3 )
                    @include('packages.package_type_3', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @elseif ( $packageInfo->type == 4 )
                    @include('packages.package_type_4', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @elseif ( $packageInfo->type == 5 )
                    @include('packages.package_type_5', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @elseif ( $packageInfo->type == 6 )
                    @include('packages.package_type_6', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @elseif ( $packageInfo->type == 8 )
                    @include('packages.package_type_8', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @else
                    @include('packages.package_type_1', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @endif
            </div>
        </div>
  
         <div class="container">
              <!-- Related project -->
            <div class="pg-related-portfolio-wrap">
                <h4 class="section-title">Related Project</h4>
                <div class="pg-related-portfolios cr-slider-navigation-4">
                     @foreach($relatedPackage as $portfolio)
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
                                            <img style="display: inline;" src="{{SM::sm_get_the_src($category->image, 20, 20)}}" alt="portfolio thumb"> {{ $category->title }}
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
    </section>

    @push('js')
    <script type="text/javascript">
    $(document).ready(function () {
        $(document).on('click', '.btn_package_order', function () {
            var payment_id = $(this).val();
            $.ajax({
                url: '{{ route('get_package_order')}}',
                method: 'GET',
                data: {payment_id: payment_id},
                success: function (data) {
                    $('#employee_detailR').html(data);
                    $('#dataModalR').modal('show');
                }
            });
        });
    });
</script>
    @endpush
@endsection
