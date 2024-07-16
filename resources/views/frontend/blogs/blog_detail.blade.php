@extends("frontend.master")

@section("title", $blog->title)

@section("content")

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

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

   background-attachment: scroll;

   background-size: cover; " data-black-overlay="7">

   <div class="container">

      <div class="row">

         <div class="col-xl-12">

            <div class="cr-breadcrumb">

               @empty(!$blog->title)

               <h1>{{$blog->title}}</h1>

               @endempty 

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

               @empty(!$blog->image)

               <div class="blog-details-thumb">

                  <img src="{!! SM::sm_get_the_src( $blog->image , 770, 450) !!}"

                     alt="{{$blog->title}}">

               </div>

               @endempty 

               <div class="blog-details-main">

                  <h2 class="blog-details-title">{{$blog->title}}</h2>

                  <ul class="blog-details-meta">

                     <li>{{ Carbon\Carbon::parse($blog->created_at)->format('j M, Y') }}</li>

                     <?php

                        $fname = $blog->user->firstname . ' ' . $blog->user->lastname;

                        $fname = ( $fname != '' ) ? $fname : $blog->user->username;

                        ?>

                     <li>By

                        <a href="">{{ $fname }}</a>

                     </li>

                     <li>

                        <a href="javascript:0" class="mrks_like"

                           data-id="{{ urlencode(base64_encode($blog->id)) }}"

                           data-type="blog">

                        <i class="fa fa-heart"></i>

                        {{ $likesTitle }}

                        </a>

                     </li>

                     <li>

                        <a href="{{ $blogUrl }}">

                        <i class="fa fa-comments"></i>

                        {{ $commentTitle }}

                        </a>

                     </li>

                     <li>

                        <a href="{{ $blogUrl }}">

                        <i class="fa fa-eye"></i>

                        {{ $viewsTitle }}

                        </a>

                     </li>

                  </ul>

                  <div class="blog-details-content clearfix">

                     <p> {!! stripslashes($blog->long_description) !!}</p>

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

                  <h6>By: {{ $fname }}</h6>

               </div>

               <div class="blog-details-social-icons">

                  <h6>Share: </h6>

                  <div class="social-icons social-icons-rounded social-icons-colorized">

                     <ul>

                        <li class="facebook">

                           <a target="_blank"

                              href="http://www.facebook.com/share.php?u={!! urlencode($blogUrl) !!}&title={!! urlencode($blog->title) !!}">

                           <i class="icofont icofont-social-facebook"></i>

                           </a>

                        </li>

                        <li class="twitter">

                           <a target="_blank"

                              href="http://twitter.com/intent/tweet?status={!! urlencode($blog->title) !!}+{!! urlencode($blogUrl) !!}">

                           <i class="icofont icofont-social-twitter"></i>

                           </a>

                        </li>

                        <li class="pinterest">

                           <a target="_blank"

                              href="http://pinterest.com/pin/create/bookmarklet/?url={!! urlencode($blogUrl) !!}&is_video=false&description={!! urlencode($blog->title) !!}">

                           <i class="icofont icofont-social-pinterest"></i>

                           </a>

                        </li>

                        <li class="google-plus">

                           <a target="_blank"

                              href="https://plus.google.com/share?url={!! urlencode($blogUrl) !!}">

                           <i class="icofont icofont-social-google-plus"></i>

                           </a>

                        </li>

                     </ul>

                  </div>

               </div>

            </div>

            <!-- Single Blog -->

             @if(count($relatedBlog) > 0)

             <div class="row">

              <div class="col-md-12">

                <div class="section-title" style="margin-bottom: -20px;">

                    <h2>Related Blog</h2>

                </div>

                </div>

                @foreach($relatedBlog as $rBlogSingle)

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

                           <a href="{!! $rBlogSingleUrl !!}">

                               <img src="{!! SM::sm_get_the_src($rBlogSingle->image, 370, 280) !!}" alt="{{$rBlogSingle->title}}">

                           </a>

                       </div>

                       <div class="blog-content"> 

                           <div class="blog-meta">

                              <span><a href="javascript:0" class="mrks_like"

                                      data-id="{{ urlencode(base64_encode($blog->id)) }}"

                                      data-type="blog">

                                       <i class="fa fa-heart"></i>

                                       {{ $likesTitle }}

                                   </a></span>

                                     

                                   <span><a href="{{ $rBlogSingleUrl }}">

                                       <i class="fa fa-comments"></i>

                                       {{ $commentTitle }}

                                   </a>

                                   </span>

                                   <span> <a href="{{ $rBlogSingleUrl }}">

                                       <i class="fa fa-eye"></i>

                                       {{ $viewsTitle }}

                                   </a>

                                   </span>

                           </div>

                           <div class="blog-meta">

                              <span>{{ Carbon\Carbon::parse($rBlogSingle->created_at)->format('j M, Y') }}</span>

                                    <?php

                                    $fname = ( trim( $rBlogSingle->fname ) != '' ) ? $rBlogSingle->fname : $rBlogSingle->username;

                                    ?>

                                   <span>By

                                       <a href="">{{ $fname }}</a>

                                   </span>

                           </div>

                           <h5>

                              <a href="{!! $rBlogSingleUrl !!}">{{$rBlogSingle->title}}</a>

                           </h5>

                          <?php

                               $des = $blog->short_description;

                               $des = ( $des != '' ) ? $des : $blog->long_description;

                               $sd = strip_tags( stripslashes( $des ), "<br><b>" );

                               $sdSub = substr( $sd, 0, 140 );

                               $sd = ( strlen( $sd ) > 140 ) ? $sdSub . " ....." : $sdSub;

                           ?>

                           <p>{{ $sd }}</p>

                           <a href="{!! $rBlogSingleUrl !!}" class="cr-readmore">Read More</a>

                       </div>

                   </article>

               </div>

               <!--// Single Blog -->

               @endforeach

            </div>

               @endif

              <!--// Single Blog -->

            

            @if($blog->comment_enable == 1)

            <div class="blog-details-block commentlist">

               <h4 class="small-title">({{$blog->commentspost()->count()}}) Comments</h4>

               @if($blog->commentspost->count() > 0)

               @include('frontend.common._comment_replies', ['comments' => $blog->commentspost, 'post_id' => $blog->id])

               @else

               <div class="alert alert-info"><i class="fa fa-info"></i> No comment posted yet!</div>

               @endif

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

            @endif

            <div class="blog-details-block commentbox">

               @guest

               <div class="alert alert-info"><i class="fa fa-info"></i> For post a new comment. You need to login first<a class="loginFromOpenBtn" href="#"> Login</a></div>

               @else

               <h4 class="small-title">Leave a Comment</h4>

               <form method="post" action="{{ url('/saveComment') }}">

                  {!! csrf_field() !!}

                  <div class="row">

                     <div class="col-lg-12">

                        <div class="single-input">

                           <label for="commenter-message">Message</label> 

                           {!! Form::textarea("comments", null, ["placeholder"=>"Your Comment here..", "id"=>"commenter", "cols" => "30", "rows"=>"5"]) !!} 

                        </div>

                     </div>

                     <div class="col-lg-12">

                        <input type="hidden" value="0" name="parent_id" id="parent_comment_id">

                        <input type="hidden" value="{{$blog->id}}" name="blog_id" id=""> 

                        <div class="single-input">

                           <button type="submit" class="cr-btn">

                           <span>Add Comment</span>

                           </button>

                        </div>

                     </div>

                  </div>

               </form>

               @endguest

            </div>

         </div>

         <!--// Blog Details -->

         <!-- Sidebar -->

         <div class="col-lg-4"> 

            @include('frontend.blogs.blog_sidebar') 

         </div>

         <!--// Sidebar -->

      </div>

   </div>

</div>

<!--// Blog List --> 

@endsection