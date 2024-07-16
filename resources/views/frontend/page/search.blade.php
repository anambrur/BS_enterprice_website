@extends("frontend.master")
@section("title", "About")
@section("content")
<?php
$title = SM::smGetThemeOption( "team_banner_title" );
$subtitle = SM::smGetThemeOption( "team_banner_subtitle" );
$bannerImage = SM::smGetThemeOption( "team_banner_image" );
?>

<!-- Breacrumb Area -->
<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
background-attachment: scroll;
background-size: cover; " data-black-overlay="7">
<div class="container">
    <div class="row">
        <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
            <div class="cr-breadcrumb text-center">
               @empty(!$title)
               <h1>{{$title}}</h1>
               @endempty
               @if(isset($subtitle) && $subtitle != '')
               <p>{{$subtitle}}</p>
               @endif 
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
                        <h5 class="widget-title">SEARCH RESULTS FOR "{!! htmlentities($s) !!}"</h5>
                        <ul>
                             @if(count($results)>0)
                                @foreach($results as $single)
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
                                @empty(!$image) 

                                    <div class="col-md-4 col-sm-6">
                                        <div class="single-search-result-thimb">
                                           <li>
                                    <a href="blog-details.html" class="widget-recent-post-thumb">
                                        <img src="{!!$image !!}" alt="footer latest blog">
                                    </a>
                                </li>
                                        </div>
                                    </div>
                                @endempty
                                <div class="{!! (empty(!$image) ? "col-md-8 col-sm-6" : "col-md-12") !!} ">
                                    <div class="single-search-result-content">
                                        <a href="{!! $url !!}"><h2 class="search-result-title">{{ $info->title }}</h2></a>
                                       
                                       <div class="widget-recent-post-meta">
                                            <span>{{ date('F d, Y', strtotime($info->created_at)) }}</span> |
                                            <span><i class="fa fa-eye"></i>{{ $info->views }}</span>
                                        </div> 
                                        <p>
                                            <?php
                                            $str = strip_tags( stripslashes( $description ) );
                                            ?>
                                            {!! substr($str, 0, 250) . (strlen($str)>250 ? "...": "") !!}
                                        </p> 
                                        <a href="{!! $url !!}" class="cr-readmore">Read More</a> 
                                    </div>
                                </div>
                                </div>

                             @endforeach
                              @else
                                <div class="alert alert-info">
                                    <i class="fa fa-info"></i> No Results Found!
                                </div>
                            @endif
                        </ul>
                    </div>
                    <!--// Single Widget --> 

                </div>
            </div>
            <!--// Search Data show -->
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