@extends("frontend.master")
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
    
    <!-- Breacrumb Area -->
 @include("frontend.common.breadcrumb", $breadcrumb)
<!--//Breacrumb Area -->
    <section class="services-area section-padding-lg bg-white">
    <div class="container"> 
        <div class="row">

            <!-- Signle Service -->
            <div class="col-lg-12">
                    <div class="about-content"> 
                        <?php echo stripslashes( $page->content ) ?>
                    </div>

<!--     <section class="terms-privacy-policy">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="sm-content">
						<?php echo stripslashes( $page->content ) ?>
                    </div> -->
                </div>
            </div>
        </div>
    </section>
@endsection
