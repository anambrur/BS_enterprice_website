
<?php $__env->startSection("title",$page->page_title); ?>
<?php $__env->startSection("content"); ?>
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
 <?php echo $__env->make("frontend.common.breadcrumb", $breadcrumb, array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>