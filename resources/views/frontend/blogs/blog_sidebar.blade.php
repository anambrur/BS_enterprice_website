 <!-- Sidebar -->  
 <div class="widgets widgets-rightside"> 
    <!-- Single Widget -->
      <!--   <div class="single-widget about-widget">
            <div class="about-widget-thumb">
                <img src="{{asset('frontend/images/')}}/others/about-widget-bg.jpg" alt="about widget background">
            </div>
            <div class="about-widget-content text-center">
                <div class="about-widget-person-image">
                    <img src="{{asset('frontend/images/')}}/others/about-widget-person.jpg" alt="about widget person">
                </div>
                <h6>Jonathon Doe</h6>
                <p>Head Of Idea Department</p>
                <div class="social-icons social-icons-large">
                    <ul>
                        <li class="facebook">
                            <a href="#">
                                <i class="bi bi-facebook"></i>
                            </a>
                        </li>
                        <li class="twitter">
                            <a href="#">
                                <i class="bi bi-youtube"></i>
                            </a>
                        </li>
                        <li class="twitter">
                            <a href="#/">
                                <i class="bi bi-twitter-bird"></i>
                            </a>
                        </li>
                        <li class="google-plus">
                            <a href="#">
                                <i class="bi bi-google"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div> -->
        <!--// Single Widget -->

        <!-- Single Widget -->
        <div class="single-widget search-widget">
            <h5 class="widget-title">Search</h5>
            <form action="{!! url("search") !!}" method="GET"> 
              <input name="type" type="hidden" value="Blog">
              <input name="s" type="search" placeholder="Search your text here" autocomplete="off" maxlength="100"> 
              <button type="submit">
                <i class="icofont icofont-search"></i>
            </button>
        </form>
    </div>
    <!--// Single Widget -->
    <?php
    $blog_popular_is_enable = SM::smGetThemeOption( "blog_popular_is_enable", 1 );
    $blog_show_category = SM::smGetThemeOption( "blog_show_category", 1 );
    $blog_show_tag = SM::smGetThemeOption( "blog_show_tag", 1 );
    $blog_sidebar_add = SM::smGetThemeOption( "blog_sidebar_add", 1 );
    ?>
    @if($blog_popular_is_enable==1)
    <?php
    $blog_popular_posts_per_page = SM::smGetThemeOption( "blog_popular_posts_per_page", 3 ); 
    $popularPosts = SM::getPopularBlog( $blog_popular_posts_per_page );
    ?>
    @if(count($popularPosts)>0)
    <!-- Single Widget -->
    <div class="single-widget widget-recent-post">
        <h5 class="widget-title">Popular Post</h5>
        <ul>
         @foreach($popularPosts as $blog)  
         <li>
           <?php
           $blogUrl = url( "blog/detail/$blog->slug" );
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
         ?>
         @empty(!$blog->image)
         <a href="{!! $blogUrl !!}" class="widget-recent-post-thumb"> <img src="{!! SM::sm_get_the_src( $blog->image , 120, 100) !!}" alt="{{$blog->title}}"></a>
         @endempty 
         <div class="widget-recent-post-content">
            <h6>
                <a href="{!! $blogUrl !!}">{{$blog->title}}</a>
            </h6>
            <div class="widget-recent-post-meta">
                <span>{{ date("d, F Y", strtotime($blog->created_at)) }}</span>
            </div>
            <div class="widget-recent-post-meta">
              <span><a href="{!! $blogUrl !!}"><i class="fa fa-comments"></i> {{ $commentTitle }}</a></span>
              <span> <a href="{!! $blogUrl !!}"><i class="fa fa-eye"></i> {{ $viewsTitle }}</a></span> 
          </div> 
      </div>
  </li>
  @endforeach
</ul>
</div>
<!--// Single Widget -->
@endif
@endif
<!-- Single Widget -->
      <!--   <div class="single-widget widget-newsletter">
            <h5 class="widget-title">Newsletter</h5>
            <form action="#">
                <input type="text" placeholder="Enter your E-mail ">
                <button type="submit">
                    <i class="icofont icofont-paper-plane"></i>
                </button>
            </form>
        </div> -->
        <!--// Single Widget --> 

        <!-- Single Widget -->
        <!-- <div class="single-widget widget-social">
            <h5 class="widget-title">Social Network</h5>
            <div class="social-icons social-icons-colorized">
                <ul>
                    <li class="facebook">
                        <a href="#">
                            <i class="icofont icofont-social-facebook"></i>
                        </a>
                    </li>
                    <li class="twitter">
                        <a href="#/">
                            <i class="icofont icofont-social-twitter"></i>
                        </a>
                    </li>
                    <li class="pinterest">
                        <a href="#">
                            <i class="icofont icofont-social-pinterest"></i>
                        </a>
                    </li>
                    <li class="vimeo">
                        <a href="#">
                            <i class="icofont icofont-social-vimeo"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div> -->
        <!--// Single Widget -->

        <!-- Single Widget -->
        @if($blog_show_category==1)
        <?php
        $getCategories = SM::getCategories();
        ?>
        @if(count($getCategories)>0)
        <div class="single-widget widget-categories">
            <h5 class="widget-title">Categories</h5>
            <ul>
            	@foreach($getCategories as $cat)
                <li>
                   <a href="{!! url("blog/category/".$cat->slug) !!}">{{$cat->title}} <span>( {{--$cat->total_posts --}} {{$cat->blogs->count()}} )</span>
                   </a>
               </li>
               @endforeach                            
           </ul>
       </div>
       @endif
       @endif
       <!--// Single Widget -->
       @if($blog_show_tag==1)
       <?php
       $getTags = SM::getTags();
       ?>
       @if(count($getTags)>0)
       
   </div>
   @endif
   @endif
   <?php
   $blog_sidebar_ad_link = SM::smGetThemeOption( "blog_sidebar_ad_link", "#" );
   $blog_sidebar_ad = SM::smGetThemeOption( "blog_sidebar_ad" );
   ?>
  </div> 
<!--// Sidebar -->