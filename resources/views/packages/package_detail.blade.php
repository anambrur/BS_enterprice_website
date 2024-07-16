<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/8/17
 * Time: 12:15 PM
 */
?>
@extends('master')
@section('title', $packageInfo->title)
@section('content')

    <!--BREADCRUMB START-->
    <section class="page-banner-section">
        @empty(!$packageInfo->image)
            <div class="ab-page-banner-section-inner">
                <img src="{!! SM::sm_get_the_src( $packageInfo->image ) !!}" alt="{{ $packageInfo->title }}">
            </div>
        @endempty

        @if(SM::smGetThemeOption( "package_detail_is_breadcrumb_enable", false ))
			<?php
			$pagination = [
				[
					"title"   => "Packages",
					"segment" => "packages"
				],
				[
					"title" => $packageInfo->title
				]
			];
			?>
            <div class="page-breadcrumb-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-breadcrumb">
                                <ul>
                                    <li><a href="{{url("/")}}">Home</a></li>
                                    @if(isset($pagination))
                                        @foreach($pagination as $pg)
                                            @if(isset($pg["segment"]))
                                                <li><a href="{{url($pg["segment"])}}">{{$pg['title']}}</a></li>
                                            @else
                                                <li>{{$pg['title']}}</li>
                                            @endif
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </section>
    <!--BREADCRUMB END-->
    <section class="common-section package-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ab-page-title text-center">
                        <h1><span>{{ $packageInfo->title }}</span></h1>
                    </div>
                    <div class="single_package_btn">
                        <a href="#mrks_package_content" class="scrolls_pakg">
                            @empty(!$packageInfo->mover_img)
                                <div class="packge-btn-img">
                                    <img src="{!! SM::sm_get_the_src( $packageInfo->mover_img ) !!}"
                                         alt="{{ $packageInfo->title }}">
                                </div>
                            @endempty
                            <div class="package-btn-content">
                                <span>Go to Our</span>
                                <h4>Great</h4>
                                <p>Packages</p>
                                <i class="fa fa-angle-double-down"></i>
                            </div>
                        </a>
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
                @else
                    @include('packages.package_type_1', ['packageInfo'=>$packageInfo, 'mainIteration'=>0])
                @endif
            </div>
        </div>
    </section>
    <?php
    $step1_image = SM::smGetThemeOption( "step1_image", "" );
    $step1_title = SM::smGetThemeOption( "step1_title", "" );
    $step1_description = SM::smGetThemeOption( "step1_description", "" );

    $step3_image = SM::smGetThemeOption( "step3_image", "" );
    $step3_title = SM::smGetThemeOption( "step3_title", "" );
    $step3_description = SM::smGetThemeOption( "step3_description", "" );
    ?>
    <section class="package-footer-sec">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="package-pfooter clearfix">
                        <div class="pkg-single-feacture one">
                            <img src="{!! SM::sm_get_the_src($step1_image) !!}" alt="{{ $step1_title }}">
                            <h2>{{ $step1_title }}</h2>
                            <p>{{ $step1_description }}</p>
                        </div>
                        <div class="pkg-single-feacture two">
                            @if($extra)
                                @isset($extra->step_image)
                                    <img src="{!! SM::sm_get_the_src($extra->step_image) !!}"
                                         alt="{{ $packageInfo->title }}">
                                @endisset
                                @isset($extra->step_title)
                                    <h2>{{ $extra->step_title }}</h2>
                                @endisset
                                @isset($extra->step_subtitle)
                                    <p>{{ $extra->step_subtitle }}</p>
                                @endisset
                            @endif
                        </div>
                        <div class="pkg-single-feacture three">
                            <img src="{!! SM::sm_get_the_src($step3_image) !!}" alt="{{ $step3_title }}">
                            <h2>{{ $step3_title }}</h2>
                            <p>{{ $step3_description }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
