<?php
$blogSecondLoop = 1;
$countBlogPost = count( $blogPost );
?>
@if($countBlogPost > 0)
@foreach($blogPost as $blog)
 <!-- Single Blog -->
<div class="col-lg-6 col-md-6">
    <article class="blog">
        <div class="blog-thumb">
            <?php
                $sdTitle = strip_tags( stripslashes( $blog->title ), "<br><span><i><b>" );
                $sdSubTitle = substr( $sdTitle, 0, 50 );
                $sdTitle = ( strlen( $sdTitle ) > 50 ) ? $sdSubTitle . " ....." : $sdSubTitle;
                $likeInfo['id'] = $blog->id;
                $likeInfo['type'] = 'blog';

                $blogUrl = url( "blog/detail/" . $blog->slug );
            ?>

            <a href="{!! $blogUrl !!}">
                <img src="{!! SM::sm_get_the_src($blog->image, 370, 280 ) !!}" alt="{{ $sdTitle }}">
            </a>
        </div>
        <div class="blog-content"> 
            <div class="blog-meta">
               <span><a href="javascript:0" class="mrks_like"
                       data-id="{{ urlencode(base64_encode($blog->id)) }}"
                       data-type="blog">
                        <i class="fa fa-heart"></i>
                        {{ SM::getCountTitle($blog->likes, 'Like') }}
                    </a></span>
                      
                    <span><a href="{{ $blogUrl }}">
                        <i class="fa fa-comments"></i>
                        {{ SM::getCountTitle($blog->comments, 'Comment') }}
                    </a>
                    </span>
                    <span> <a href="{{ $blogUrl }}">
                        <i class="fa fa-eye"></i>
                        {{ SM::getCountTitle($blog->views, 'View') }}
                    </a>
                    </span>
            </div>
            <div class="blog-meta">
               <span>{{ Carbon\Carbon::parse($blog->created_at)->format('j M, Y') }}</span>
                     <?php
                        $fname = $blog->user->firstname . ' ' . $blog->user->lastname;
                        $fname = ( $fname != '' ) ? $fname : $blog->user->username;
                     ?>
                    <span>By
                        <a href="">{{ $fname }}</a>
                    </span>
            </div>
            <h5>
                <a href="{!! $blogUrl !!}"> {!! $sdTitle  !!} </a> 
            </h5>
           <?php
                $des = $blog->short_description;
                $des = ( $des != '' ) ? $des : $blog->long_description;
                $sd = strip_tags( stripslashes( $des ), "<br><b>" );
                $sdSub = substr( $sd, 0, 140 );
                $sd = ( strlen( $sd ) > 140 ) ? $sdSub . " ....." : $sdSub;
            ?>
            <p>{!! $sd !!}</p>
            <a href="{!! $blogUrl !!}" class="cr-readmore">Read More</a>
        </div>
    </article>
</div>
<!--// Single Blog -->
@endforeach
<div class="col-lg-12">
    {!! $blogPost->links('common.pagination') !!}
</div>
@else
<div class="col-lg-12 alert alert-info"><i class="fa fa-info"></i> No Blog Post Found!</div>
@endif
