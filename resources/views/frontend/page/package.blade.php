@extends("frontend.master")
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
<!-- Breacrumb Area -->
 @include("frontend.common.breadcrumb", $breadcrumb)
<!--//Breacrumb Area -->
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
            <section class="common-section  @if($loop->iteration%2==0){{ 'bg-gray2' }}@endif package-section section-{{$mainIteration}}">
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
                     @include('packages.package_type_6', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration]) 

                </div>
            </section>
        @endforeach
    @endif
@endsection