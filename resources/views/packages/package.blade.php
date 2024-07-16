<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/8/17
 * Time: 5:14 PM
 */
?>
@extends("master")
@section("title", "Packages")
@section("content")
	<?php
	$breadcrumb = [
		"isBreadcrumbEnable" => SM::smGetThemeOption( "package_is_breadcrumb_enable", false ),
		"pagination" => [
			[
				"title" => "Packages"
			]
		],
		"title"      => SM::smGetThemeOption( "package_banner_title" ),
		"subtitle"   => SM::smGetThemeOption( "package_banner_subtitle" ),
		"image"      => SM::smGetThemeOption( "package_banner_image" ),
	];
	?>
    @include("common.breadcrumb",$breadcrumb)
	<?php
	$step1_image = SM::smGetThemeOption( "step1_image", "" );
	$step1_title = SM::smGetThemeOption( "step1_title", "" );
	$step1_description = SM::smGetThemeOption( "step1_description", "" );
	$step2_image = SM::smGetThemeOption( "step2_image", "" );
	$step2_title = SM::smGetThemeOption( "step2_title", "" );
	$step2_description = SM::smGetThemeOption( "step2_description", "" );
	$step3_image = SM::smGetThemeOption( "step3_image", "" );
	$step3_title = SM::smGetThemeOption( "step3_title", "" );
	$step3_description = SM::smGetThemeOption( "step3_description", "" );
	$countPackage = count( $packages );
	?>
    @if($countPackage>0)
        @foreach($packages as $packageInfo)
			<?php
			$mainIteration = $loop->iteration;
			?>
            <section
                    class="common-section  @if($loop->iteration%2==0){{ 'bg-gray2' }}@endif package-section section-{{$mainIteration}}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ab-page-title text-center">
                                <h3><span>{{ $packageInfo->title }}</span></h3>
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
                {{--  @if ( $packageInfo->type == 2 )
                        @include('packages.package_type_2', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @elseif ( $packageInfo->type == 3 )
                        @include('packages.package_type_3', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @elseif ( $packageInfo->type == 4 )
                        @include('packages.package_type_4', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @elseif ( $packageInfo->type == 5 )
                        @include('packages.package_type_5', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @elseif ( $packageInfo->type == 6 )
                        @include('packages.package_type_6', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @else
                        @include('packages.package_type_1', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    @endif--}} 
                    
                      @include('packages.package_type_6', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration])
                    
<!--                    <div class="row">
                        <div class="col-lg-12">
                            <div class="package-pfooter clearfix">
                                <div class="pkg-single-feacture one">
                                    <img src="{!! SM::sm_get_the_src($step1_image) !!}" alt="{{ $step1_title }}">
                                    <h2>{{ $step1_title }}</h2>
                                    <p>{{ $step1_description }}</p>
                                </div>
                                <div class="pkg-single-feacture two">
                                    <img src="{!! SM::sm_get_the_src($step2_image) !!}" alt="{{ $step2_title }}">
                                    <h2>{{ $step2_title }}</h2>
                                    <p>{{ $step2_description }}</p>
                                </div>
                                <div class="pkg-single-feacture three">
                                    <img src="{!! SM::sm_get_the_src($step3_image) !!}" alt="{{ $step3_title }}">
                                    <h2>{{ $step3_title }}</h2>
                                    <p>{{ $step3_description }}</p>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
            </section>
        @endforeach
<!--        @if ($packages->hasPages())
            <section class="common-section package-section package-pagination">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            {!! $packages->links('common.pagination') !!}
                        </div>
                    </div>
                </div>
            </section>
        @endif-->
    @endif
@endsection