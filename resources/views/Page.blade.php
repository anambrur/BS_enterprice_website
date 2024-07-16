<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 8/10/17
 * Time: 4:55 PM
 */
?>
@extends("master")
@section("title",$page->page_title)
@section("content")
	<?php
	$breadcrumb = [
		"pagination" => [
			[
				"title" => $page->page_title
			]
		],
		"title"      => $page->page_title,
		"subtitle"   => $page->page_subtitle,
		"image"      => $page->banner_image,
	];
	?>
    @include("common.breadcrumb", $breadcrumb)
    <section class="terms-privacy-policy">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="sm-content">
						<?php echo stripslashes( $page->content ) ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
