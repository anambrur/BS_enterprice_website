
<?php $__env->startSection("title", "About"); ?>
<?php $__env->startSection("content"); ?>
<?php
$title = SM::smGetThemeOption( "team_banner_title" );
$subtitle = SM::smGetThemeOption( "team_banner_subtitle" );
$bannerImage = SM::smGetThemeOption( "team_banner_image" );
?>

<!-- Breacrumb Area -->
<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
background-attachment: scroll;
background-size: cover; " data-black-overlay="7">
<div class="container">
    <div class="row">
        <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
            <div class="cr-breadcrumb text-center">
               <?php if(empty(!$title)): ?>
               <h1><?php echo e($title); ?></h1>
               <?php endif; ?>
               <?php if(isset($subtitle) && $subtitle != ''): ?>
               <p><?php echo e($subtitle); ?></p>
               <?php endif; ?> 
           </div>
       </div>
   </div>
</div>
</div>
<!--//Breacrumb Area -->

<!-- Blog List -->
<div class="pg-blog-list-area section-padding-lg bg-white">
    <div class="container">
        <div class="row"> 

            <!-- Search Data show -->
           <div class="col-lg-8">
                <div class="widgets widgets-leftside">

                    <!-- Single Widget -->
                    <div class="single-widget widget-recent-post">
                        <h5 class="widget-title">SEARCH RESULTS FOR "<?php echo htmlentities($s); ?>"</h5>
                        <ul>
                             <?php if(count($results)>0): ?>
                                <?php $__currentLoopData = $results; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $single): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                    $info = $single;
                                     if ( $type == 'Blog' ) {
                                        $description = $single->short_description;
                                        $image = SM::sm_get_the_src( $single->image, 358, 263 );
                                        $url  = url( 'blog/detail/' . $single->slug );
                                    } else {
                                        $description = "";
                                        $image = "";
                                        $url   = "";
                                    }
                                    ?> 

                            <div class="row border-bottom padd-marg-bottom30">
                                <?php if(empty(!$image)): ?> 

                                    <div class="col-md-4 col-sm-6">
                                        <div class="single-search-result-thimb">
                                           <li>
                                    <a href="blog-details.html" class="widget-recent-post-thumb">
                                        <img src="<?php echo $image; ?>" alt="footer latest blog">
                                    </a>
                                </li>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                <div class="<?php echo (empty(!$image) ? "col-md-8 col-sm-6" : "col-md-12"); ?> ">
                                    <div class="single-search-result-content">
                                        <a href="<?php echo $url; ?>"><h2 class="search-result-title"><?php echo e($info->title); ?></h2></a>
                                       
                                       <div class="widget-recent-post-meta">
                                            <span><?php echo e(date('F d, Y', strtotime($info->created_at))); ?></span> |
                                            <span><i class="fa fa-eye"></i><?php echo e($info->views); ?></span>
                                        </div> 
                                        <p>
                                            <?php
                                            $str = strip_tags( stripslashes( $description ) );
                                            ?>
                                            <?php echo substr($str, 0, 250) . (strlen($str)>250 ? "...": ""); ?>

                                        </p> 
                                        <a href="<?php echo $url; ?>" class="cr-readmore">Read More</a> 
                                    </div>
                                </div>
                                </div>

                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              <?php else: ?>
                                <div class="alert alert-info">
                                    <i class="fa fa-info"></i> No Results Found!
                                </div>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <!--// Single Widget --> 

                </div>
            </div>
            <!--// Search Data show -->
            <!-- Sidebar -->
            <div class="col-lg-4"> 
             <?php echo $__env->make('frontend.blogs.blog_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
             </div>
            <!--// Sidebar -->
        </div>
    </div>
</div>
<!--// Blog List -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>