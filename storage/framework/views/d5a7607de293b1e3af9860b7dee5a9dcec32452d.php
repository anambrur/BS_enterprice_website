

<?php $__env->startSection("title", $blog->title); ?>

<?php $__env->startSection("content"); ?>

<?php

   if ( $blog->comments == 1 ) {

       $commentTitle = '1 Comment';

   } elseif ( $blog->comments > 1 ) {

       $commentTitle = $blog->comments . ' Comments';

   } else {

       $commentTitle = 'No Comments';

   }

   if ( $blog->views == 1 ) {

       $viewsTitle = '1 View';

   } elseif ( $blog->views > 1 ) {

       $viewsTitle = $blog->views . ' Views';

   } else {

       $viewsTitle = 'No View';

   }

   if ( $blog->likes == 1 ) {

       $likesTitle = '1 Like';

   } elseif ( $blog->likes > 1 ) {

       $likesTitle = $blog->likes . ' Likes';

   } else {

       $likesTitle = 'No Likes';

   }

   

   $blogUrl = ( url( "blog/detail/$blog->slug" ) );

   $bannerImage=SM::smGetThemeOption( "blog_detail_banner_image" );

   ?>

<!-- <style>

   .display-comment .display-comment {

       margin-left: 40px

   }

   </style> -->

<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;

   background-attachment: scroll;

   background-size: cover; " data-black-overlay="7">

   <div class="container">

      <div class="row">

         <div class="col-xl-12">

            <div class="cr-breadcrumb">

               <?php if(empty(!$blog->title)): ?>

               <h1><?php echo e($blog->title); ?></h1>

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

         <!-- Blog Details -->

         <div class="col-lg-8">

            <div class="blog-details">

               <?php if(empty(!$blog->image)): ?>

               <div class="blog-details-thumb">

                  <img src="<?php echo SM::sm_get_the_src( $blog->image , 770, 450); ?>"

                     alt="<?php echo e($blog->title); ?>">

               </div>

               <?php endif; ?> 

               <div class="blog-details-main">

                  <h2 class="blog-details-title"><?php echo e($blog->title); ?></h2>

                  <ul class="blog-details-meta">

                     <li><?php echo e(Carbon\Carbon::parse($blog->created_at)->format('j M, Y')); ?></li>

                     <?php

                        $fname = $blog->user->firstname . ' ' . $blog->user->lastname;

                        $fname = ( $fname != '' ) ? $fname : $blog->user->username;

                        ?>

                     <li>By

                        <a href=""><?php echo e($fname); ?></a>

                     </li>

                     <li>

                        <a href="javascript:0" class="mrks_like"

                           data-id="<?php echo e(urlencode(base64_encode($blog->id))); ?>"

                           data-type="blog">

                        <i class="fa fa-heart"></i>

                        <?php echo e($likesTitle); ?>


                        </a>

                     </li>

                     <li>

                        <a href="<?php echo e($blogUrl); ?>">

                        <i class="fa fa-comments"></i>

                        <?php echo e($commentTitle); ?>


                        </a>

                     </li>

                     <li>

                        <a href="<?php echo e($blogUrl); ?>">

                        <i class="fa fa-eye"></i>

                        <?php echo e($viewsTitle); ?>


                        </a>

                     </li>

                  </ul>

                  <div class="blog-details-content clearfix">

                     <p> <?php echo stripslashes($blog->long_description); ?></p>

                  </div>

               </div>

            </div>

            <div class="blog-details-block blog-details-social">

               <div class="blog-details-tags">

                  <?php

                     $blogAuthor = $blog->user;

                     $fname = $blogAuthor->firstname . " " . $blogAuthor->lastname;

                     $fname = trim( $fname ) != '' ? $fname : $blogAuthor->username;

                     ?> 

                  <h6>By: <?php echo e($fname); ?></h6>

               </div>

               <div class="blog-details-social-icons">

                  <h6>Share: </h6>

                  <div class="social-icons social-icons-rounded social-icons-colorized">

                     <ul>

                        <li class="facebook">

                           <a target="_blank"

                              href="http://www.facebook.com/share.php?u=<?php echo urlencode($blogUrl); ?>&title=<?php echo urlencode($blog->title); ?>">

                           <i class="icofont icofont-social-facebook"></i>

                           </a>

                        </li>

                        <li class="twitter">

                           <a target="_blank"

                              href="http://twitter.com/intent/tweet?status=<?php echo urlencode($blog->title); ?>+<?php echo urlencode($blogUrl); ?>">

                           <i class="icofont icofont-social-twitter"></i>

                           </a>

                        </li>

                        <li class="pinterest">

                           <a target="_blank"

                              href="http://pinterest.com/pin/create/bookmarklet/?url=<?php echo urlencode($blogUrl); ?>&is_video=false&description=<?php echo urlencode($blog->title); ?>">

                           <i class="icofont icofont-social-pinterest"></i>

                           </a>

                        </li>

                        <li class="google-plus">

                           <a target="_blank"

                              href="https://plus.google.com/share?url=<?php echo urlencode($blogUrl); ?>">

                           <i class="icofont icofont-social-google-plus"></i>

                           </a>

                        </li>

                     </ul>

                  </div>

               </div>

            </div>

            <!-- Single Blog -->

             <?php if(count($relatedBlog) > 0): ?>

             <div class="row">

              <div class="col-md-12">

                <div class="section-title" style="margin-bottom: -20px;">

                    <h2>Related Blog</h2>

                </div>

                </div>

                <?php $__currentLoopData = $relatedBlog; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rBlogSingle): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                <!-- Single Blog -->

                <?php

                     $rBlogSingleUrl = url( "blog/detail/$rBlogSingle->slug" );

                     if ( $rBlogSingle->comments == 1 ) {

                         $commentTitle = '1 Comment';

                     } elseif ( $rBlogSingle->comments > 1 ) {

                         $commentTitle = $rBlogSingle->comments . ' Comments';

                     } else {

                         $commentTitle = 'No Comments';

                     }

                     if ( $rBlogSingle->views == 1 ) {

                         $viewsTitle = '1 View';

                     } elseif ( $rBlogSingle->views > 1 ) {

                         $viewsTitle = $rBlogSingle->views . ' Views';

                     } else {

                         $viewsTitle = 'No View';

                     }

                     if ( $rBlogSingle->likes == 1 ) {

                         $likesTitle = '1 Like';

                     } elseif ( $rBlogSingle->likes > 1 ) {

                         $likesTitle = $rBlogSingle->likes . ' Likes';

                     } else {

                         $likesTitle = 'No Likes';

                     }

                     $des = $rBlogSingle->short_description;

                     $des = ( $des != '' ) ? $des : $rBlogSingle->long_description;

                     $sd = strip_tags( stripslashes( $des ), "<br><b>" );

                     $sdSub = substr( $sd, 0, 140 );

                     $sd = ( strlen( $sd ) > 140 ) ? $sdSub . " ....." : $sdSub;

                     ?>



               <div class="col-lg-6 col-md-6">

                   <article class="blog">

                       <div class="blog-thumb"> 

                           <a href="<?php echo $rBlogSingleUrl; ?>">

                               <img src="<?php echo SM::sm_get_the_src($rBlogSingle->image, 370, 280); ?>" alt="<?php echo e($rBlogSingle->title); ?>">

                           </a>

                       </div>

                       <div class="blog-content"> 

                           <div class="blog-meta">

                              <span><a href="javascript:0" class="mrks_like"

                                      data-id="<?php echo e(urlencode(base64_encode($blog->id))); ?>"

                                      data-type="blog">

                                       <i class="fa fa-heart"></i>

                                       <?php echo e($likesTitle); ?>


                                   </a></span>

                                     

                                   <span><a href="<?php echo e($rBlogSingleUrl); ?>">

                                       <i class="fa fa-comments"></i>

                                       <?php echo e($commentTitle); ?>


                                   </a>

                                   </span>

                                   <span> <a href="<?php echo e($rBlogSingleUrl); ?>">

                                       <i class="fa fa-eye"></i>

                                       <?php echo e($viewsTitle); ?>


                                   </a>

                                   </span>

                           </div>

                           <div class="blog-meta">

                              <span><?php echo e(Carbon\Carbon::parse($rBlogSingle->created_at)->format('j M, Y')); ?></span>

                                    <?php

                                    $fname = ( trim( $rBlogSingle->fname ) != '' ) ? $rBlogSingle->fname : $rBlogSingle->username;

                                    ?>

                                   <span>By

                                       <a href=""><?php echo e($fname); ?></a>

                                   </span>

                           </div>

                           <h5>

                              <a href="<?php echo $rBlogSingleUrl; ?>"><?php echo e($rBlogSingle->title); ?></a>

                           </h5>

                          <?php

                               $des = $blog->short_description;

                               $des = ( $des != '' ) ? $des : $blog->long_description;

                               $sd = strip_tags( stripslashes( $des ), "<br><b>" );

                               $sdSub = substr( $sd, 0, 140 );

                               $sd = ( strlen( $sd ) > 140 ) ? $sdSub . " ....." : $sdSub;

                           ?>

                           <p><?php echo e($sd); ?></p>

                           <a href="<?php echo $rBlogSingleUrl; ?>" class="cr-readmore">Read More</a>

                       </div>

                   </article>

               </div>

               <!--// Single Blog -->

               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

               <?php endif; ?>

              <!--// Single Blog -->

            

            <?php if($blog->comment_enable == 1): ?>

            <div class="blog-details-block commentlist">

               <h4 class="small-title">(<?php echo e($blog->commentspost()->count()); ?>) Comments</h4>

               <?php if($blog->commentspost->count() > 0): ?>

               <?php echo $__env->make('frontend.common._comment_replies', ['comments' => $blog->commentspost, 'post_id' => $blog->id], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

               <?php else: ?>

               <div class="alert alert-info"><i class="fa fa-info"></i> No comment posted yet!</div>

               <?php endif; ?>

               <!-- <div class="comment reply">

                  <div class="blog-details-authoriamge">

                      <img src="images/blog/blog-details/blog-details-author-1.png" alt="author image">

                  </div>

                  <div class="comment__content">

                      <div class="comment__content__top">

                          <h6>Julia homas</h6>

                          <span>06 Jun 2017</span>

                      </div>

                      <a href="#" class="reply">Reply</a>

                      <div class="comment__content__bottom">But I must explain to you how all this mistaken idea of denounng pleasure and ising

                          pain borand I will give you a complete</div>

                  </div>

                  </div> --> 

            </div>

            <?php endif; ?>

            <div class="blog-details-block commentbox">

               <?php if(auth()->guard()->guest()): ?>

               <div class="alert alert-info"><i class="fa fa-info"></i> For post a new comment. You need to login first<a class="loginFromOpenBtn" href="#"> Login</a></div>

               <?php else: ?>

               <h4 class="small-title">Leave a Comment</h4>

               <form method="post" action="<?php echo e(url('/saveComment')); ?>">

                  <?php echo csrf_field(); ?>


                  <div class="row">

                     <div class="col-lg-12">

                        <div class="single-input">

                           <label for="commenter-message">Message</label> 

                           <?php echo Form::textarea("comments", null, ["placeholder"=>"Your Comment here..", "id"=>"commenter", "cols" => "30", "rows"=>"5"]); ?> 

                        </div>

                     </div>

                     <div class="col-lg-12">

                        <input type="hidden" value="0" name="parent_id" id="parent_comment_id">

                        <input type="hidden" value="<?php echo e($blog->id); ?>" name="blog_id" id=""> 

                        <div class="single-input">

                           <button type="submit" class="cr-btn">

                           <span>Add Comment</span>

                           </button>

                        </div>

                     </div>

                  </div>

               </form>

               <?php endif; ?>

            </div>

         </div>

         <!--// Blog Details -->

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