<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/26/17
 * Time: 10:49 AM
 */
?>
@extends("master")
@section("title", $categoryInfo->title)
@section("content")
	<?php
	$breadcrumb = [
		"isBreadcrumbEnable" => SM::smGetThemeOption( "blog_is_breadcrumb_enable", false ),
		"pagination"         => [
			[
				"title"   => "Blog",
				"segment" => "blog"
			],
			[
				"title" => 'Category'
			]
		],
		"title"              => $categoryInfo->title,
		"subtitle"           => "Category",
		"image"              => SM::smGetThemeOption( "blog_detail_banner_image" ),
	];
	?>
    @include("common.breadcrumb", $breadcrumb)
    <section class="common-section blog-page-section category-post-sec">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    @if(trim($categoryInfo->description)!='' || $categoryInfo->image != '')
                        <div class="single-blog-post-big single-blog-page category-post-item">
                            @empty(!$categoryInfo->image)
                                <div class="blog-img">
                                    <img src="{!! SM::sm_get_the_src( $categoryInfo->image , 748, 436) !!}"
                                         alt="{{ $categoryInfo->title }}">
                                </div>
                            @endempty
                            @if(trim($categoryInfo->description)!='')
                                <div class="blog-dec2 sm-content">
                                    {!! $categoryInfo->description !!}
                                </div>
                            @endif
                        </div>
                    @endif
                    @include('blogs.blog_list_item', ['blogPost'=>$blogs])
                </div>
                <div class="col-sm-4">
                    @include("common.blog_sidebar")
                </div>
            </div>
        </div>
    </section>
@endsection
