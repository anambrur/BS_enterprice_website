<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/26/17
 * Time: 10:49 AM
 */
?>
@extends("master")
@section("title", $tagInfo->title)
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
				"title" => 'Tag'
			]
		],
		"title"              => $tagInfo->title,
		"subtitle"           => "Tag",
		"image"              => SM::smGetThemeOption( "blog_detail_banner_image" ),
	];
	?>
    @include("common.breadcrumb", $breadcrumb)
    <section class="common-section blog-page-section category-post-sec">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    @if(trim($tagInfo->description)!='' || $tagInfo->image != '')
                        <div class="single-blog-post-big single-blog-page category-post-item">
                            @empty(!$tagInfo->image)
                                <div class="blog-img">
                                    <img src="{!! SM::sm_get_the_src( $tagInfo->image , 748, 436) !!}"
                                         alt="{{ $tagInfo->title }}">
                                </div>
                            @endempty
                            @if(trim($tagInfo->description)!='')
                                <div class="blog-dec2 sm-content">
                                    {!! $tagInfo->description !!}
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
