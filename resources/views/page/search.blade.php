<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/11/17
 * Time: 3:00 PM
 */
?>
@extends('master')
@section("title", "Search result for '".htmlentities($s)."'")
@section("content")
    <!--BREADCRUMB START-->
    <section class="page-banner-section ab-banner-sec">
        <div class="page-banner-section-inner">
            <div class="container">
                <div class="row">
                    <div class="page-banner-content text-center">
                        <div class="error-search-form">
                            <form action="{!! url("search") !!}" method="get">
                                <input name="s" type="search" placeholder="Search your keyword..."
                                       value="{!! htmlentities($s) !!}">
                                <button type="submit"><i class="fa fa-search"></i></button>
                                <div class="error-select-opt">
                                    {!! Form::select("type", ["Package"=>"Package", "Blog"=>"Blog", "Service"=>"Service", "Case"=>"Case"], $type,["id"=>"search_type"]) !!}
                                </div>
                            </form>
                        </div>

                    </div>
                    <div class="page-banner-img">
                        <img src="{{ asset('images/breadcumb2.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="ab-page-breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-breadcrumb text-center">
                            <h2 class="ab-search-result-title">SEARCH RESULTS FOR "{!! htmlentities($s) !!}"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--BREADCRUMB END-->
    <section class="common-section contact-us-section">
        <div class="container">
            @if(count($results)>0)
                @foreach($results as $single)
					<?php
					$singleInfo['info'] = $single;
					if ( $type == 'Package' ) {
						$singleInfo["image"] = "";
						$singleInfo["description"] = $single->description;
						$singleInfo['url']   = url( 'packages/detail/' . $single->slug );
					} else if ( $type == 'Blog' ) {
						$singleInfo["description"] = $single->short_description;
						$singleInfo["image"] = SM::sm_get_the_src( $single->image, 358, 263 );
						$singleInfo['url']   = url( 'blog/detail/' . $single->slug );
					} else if ( $type == 'Service' ) {
						$singleInfo["description"] = $single->short_description;
						$singleInfo["image"] = SM::sm_get_the_src( $single->image, 358, 263 );
						$singleInfo['url']   = url( 'services/detail/' . $single->slug );
					} else if ( $type == 'Case' ) {
						$singleInfo["image"] = "";
						$singleInfo["description"] = $single->description;
						if ( $single->image != '' ) {
							$img = $single->image;
							if ( ! $image_array = explode( ',', $img ) ) {
								$image_array[0] = array( $img );
							}
							$singleInfo["image"] = SM::sm_get_the_src( $image_array[0],  358, 263 );
						}
						$singleInfo['url'] = url( 'cases/detail/' . $single->slug );
					} else {
						$singleInfo["description"] = "";
						$singleInfo["image"] = "";
						$singleInfo['url']   = "";
					}
					?>
                    @include("common.search_item", $singleInfo)
                @endforeach
            @else
                <div class="alert alert-info">
                    <i class="fa fa-info"></i> No Results Found!
                </div>
            @endif
        </div>
    </section>
@endsection
