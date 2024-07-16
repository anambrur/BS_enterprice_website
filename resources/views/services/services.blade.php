@extends("master")
@section("title", "Services")
@section("content")
	<?php
	$breadcrumb = [
		"isBreadcrumbEnable" => SM::smGetThemeOption( "services_is_breadcrumb_enable", false ),
		"pagination"         => [
			[
				"title" => "Services"
			]
		],
		"title"              => SM::smGetThemeOption( "service_banner_title" ),
		"subtitle"           => SM::smGetThemeOption( "service_banner_subtitle" ),
		"image"              => SM::smGetThemeOption( "service_banner_image" ),
	];
	$service_title = SM::smGetThemeOption( "service_title" );
	$service_subtitle = SM::smGetThemeOption( "service_subtitle" );

	$service_seo_image = SM::smGetThemeOption( "service_seo_image" );
	$service_seo_title = SM::smGetThemeOption( "service_seo_title" );
	$service_seo_description = SM::smGetThemeOption( "service_seo_description" );
	$service_seo_link = SM::smGetThemeOption( "service_seo_link" );
	?>
    @include("common.breadcrumb",$breadcrumb)
    <section class="common-section service-section">
        <div class="container">

            <div class="row" id="sm_list">
                @include('services.service_list_item')
            </div>
        </div>
    </section>
    @include("common.newslatter")
@endsection