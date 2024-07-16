<!doctype html>
<html class="no-js" lang="zxx">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php
         $site_name = SM::sm_get_site_name();
         $site_name = SM::sm_string($site_name) ? $site_name : 'Next Page Technology Ltd.';
         
         $seo_title = stripslashes(
             (
                 isset($seo_title)
                 && SM::sm_string($seo_title)
             )
                 ? $seo_title
                 : SM::get_setting_value('seo_title')
         );
         $meta_key = stripslashes(
             (
                 isset($meta_key)
                 && SM::sm_string($meta_key)
             )
                 ? $meta_key
                 : SM::get_setting_value('site_meta_keywords')
         );
         $meta_description = stripslashes(
             (
                 isset($meta_description)
                 && SM::sm_string($meta_description)
             )
                 ? $meta_description
                 : SM::get_setting_value('site_meta_description')
         );
         $image = (isset($image)) ? $image
             : asset(SM::sm_get_the_src(SM::get_setting_value('site_screenshot')));
         
         
         ?>
  <!--<title>Lavender Super Store</title>-->
  <title> @yield('title') <?php echo SM::sm_get_site_name(); ?></title>
  <meta name="keywords" content="{!!$meta_key!!}">
  <meta name="description" content="{!! $meta_description !!}" />
  {{--<!-- Schema.org markup for Google+ -->--}}
  {{--
      <meta itemprop="name" content="{{$seo_title}}">
  --}}
  {{--
      <meta itemprop="description" content="{!! $meta_description !!}">
      --}}
  {{--
      <meta itemprop="image" content="{!!$image!!}">
      --}}
  {{--<!-- Twitter Card data -->--}}
  {{--
      <meta name="twitter:card" content="summary_large_image">
      --}}
  {{--
      <meta name="twitter:site" content="{{$site_name}}">
  --}}
  {{--
      <meta name="twitter:title" content="{{ $seo_title }}">
  --}}
  {{--
      <meta name="twitter:description" content="{!! $meta_description !!}">
      --}}
  {{--
      <meta name="twitter:image:src" content="{!!$image!!}">
      --}}
  {{--<!-- Open Graph data -->--}}
  {{--
      <meta property="og:title" content="{{ $seo_title }}"/>
  --}}
  {{--
      <meta property="og:type" content="article"/>
      --}}
  {{--
      <meta property="og:image" content="{!!$image!!}"/>
      --}}
  {{--
      <meta property="og:description" content="{!! $meta_description !!}"/>
      --}}
  {{--
      <meta property="og:site_name" content="{{$site_name}}"/>
  --}}
  <!-- Favicons -->
  <link rel="shortcut icon" href="{{ SM::sm_get_the_src( SM::sm_get_site_favicon(), 30, 30 ) }}" type="image/x-icon">
  <link rel="icon" href="{{ SM::sm_get_the_src( SM::sm_get_site_favicon(), 30, 30 ) }}" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <!-- Facebook Pixel Code -->
  <script>
    ! function (f, b, e, v, n, t, s) {
      if (f.fbq) return;
      n = f.fbq = function () {
        n.callMethod ?
          n.callMethod.apply(n, arguments) : n.queue.push(arguments)
      };
      if (!f._fbq) f._fbq = n;
      n.push = n;
      n.loaded = !0;
      n.version = '2.0';
      n.queue = [];
      t = b.createElement(e);
      t.async = !0;
      t.src = v;
      s = b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t, s)
    }(window, document, 'script',
      'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '308953933220227');
    fbq('track', 'PageView');
  </script>
  <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=308953933220227&ev=PageView&noscript=1" /></noscript>
  <!-- End Facebook Pixel Code -->
  <noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=your-pixel-id-goes-here&ev=PageView&noscript=1" />
  </noscript>
  <!-- css -->
  <?php
         SM::smGetSystemFrontEndCss( [
             "bootstrap",
         ] );
         ?>
  @include('frontend.includes.css')
  @stack('css')
  <?php
         SM::smGetSystemFrontEndCss([
           "style1",
           "font-awesome.min",
         ]);
         SM::smGetSystemFrontEndJs( [
             "jquery-3.2.1.min",
             "state"
         ] );
         $method = strtolower( SM::current_method() );
         ?>
  <script type="text/javascript">
    var url = '<?php echo url( '
    ' ) . ' / '; ?>';
    var method = '<?php echo $method; ?>';
  </script>
  {!! SM::smGetThemeOption( "google_analytic_code"); !!}
  <style type="text/css">
    {
       ! ! SM: :smGetThemeOption("mrks_theme_custom_css");
       ! !
    }
  </style>
  <style type="text/css">
    .sm-content h2 {
      color: #333333;
    }

    .error-notice {
      color: red;
    }

    .sm-content h2,
    .sm-content h3,
    .sm-content h4,
    .sm-content h5,
    .sm-content h6 {
      color: #333333;
    }

    .ab-page-title h1 {
      transform: skewX(0deg);
    }

    .ab-page-title h1 span {
      transform: skewX(0deg);
    }

    .section-title {
      margin-top: 20px;
    }

    .package-pheader p:last-of-type {
      margin-bottom: 0px;
    }

    .team-wrap {
      margin-top: -45px;
    }

    .package-pheader {
      padding-top: 0px;
    }

    .package-section {
      padding-top: 25px;
    }

    .ab-page-title h1 {
      margin-bottom: 25px;
    }

    .single-team {
      margin-top: 30px;
    }

    /*Blog Sidebar*/
    .widgets:not(.footer-widgets) .search-widget form {
      padding: 0px 5px;
    }

    .widgets:not(.footer-widgets) .single-widget h5.widget-title {
      padding: 6px 25px;
      margin-bottom: 15px;
    }

    /*contact page*/
    .pg-contact-details .single-quick-contact {
      padding-top: 10px;
      padding-bottom: 10px;
    }

    input,
    select {
      height: 40px;
    }

    .cr-breadcrumb {
      padding: 85px 0;
      color: #ffffff;
    }

    /*BUTTON*/
    .cr-btn,
    a.cr-btn,
    button.cr-btn {
      height: 40px;
      line-height: 40px;
      padding: 2px 22px;
      margin-top: 12px;
      font-size: 14px;
      background: #7e0f7c;
      color: #fff;
      border-radius: 10px;
      border-bottom: 6px solid #65055f;
    }

    .testimonial-thumb {
      border-radius: 0%;
    }

    .about-content .cr-btn,
    .about-content button.cr-btn,
    .about-content a.cr-btn {
      margin-top: 0px;
    }



    .tagcloud a {
      height: 35px;
      border: 1px solid #d3d3d3;
      font-size: 14px;
      line-height: 1;
      color: #1d2d5d;
      display: inline-block;
      padding: 10px 15px;
      margin-bottom: 10px;
      margin-right: 6px;
    }

    .section-padding-sm {
      padding: 25px 0;
    }

    .modal {
      z-index: 99999;
    }

    .modal-header {
      display: block;
    }

    .packageFeaturesBox {
      border-radius: 10px;
      border: 1px solid #ddd;
      padding: 10px;
      margin: 10px;
      min-height: 220px;
      align-content: center;
      text-align: center;
    }

    .package-pheader p {
      color: #777777;
    }

    .package-section .package-pheader.sm-content h4 {
      color: #333333;
    }

    .package_margin_top {
      margin-top: 15px;
    }

    .doodle_footer-socail {
      text-align: center;
    }

    .requiredStar:after {
      color: #d00;
      content: "*";
      margin-left: 5px;
    }

    /*----------------Portfolio category image-------------*/
    .pic-caption ul {
      width: 100%;
      padding: 0 0 0 0px !important;
    }

    .pic-caption ul li {
      color: #eaeaea;
      font: 15px/24px proxima_nova_rgregular;
      padding: 0 8px;
      display: inline-block;
    }

    .pg-service-title {
      margin-bottom: 0px;
    }

    .pg-related-portfolios .portfolio {
      margin-top: 0px;
    }

    /*-----------Menu padding-----------------*/

    @media only screen and (max-width: 600px) {
      .header-top-area {
        background-color: lightblue;
      }
    }

    @media screen and (max-width: 600px) {
      .header .header-top-area {
        display: none;
      }
    }

    /*==========================*/
    .loader-wrapper {
      position: fixed;
      top: 0 !important;
      left: 0;
      width: 100%;
      height: 100vh;
      z-index: 99999;
    }

    .loader-wrapper .loader {
      display: block;
      position: relative;
      left: 50%;
      top: 50%;
      width: 100px;
      height: 100px;
      margin-top: -50px;
      margin-left: -50px;
      border: 3px solid transparent;
      border-top-color: #F44336;
      border-radius: 50%;
      z-index: 1001;
      -webkit-animation: spin 1.5s infinite linear;
      animation: spin 1.5s infinite linear;
    }

    .loader-wrapper .loader:before,
    .loader-wrapper .loader:after {
      content: '';
      position: absolute;
      border-radius: 50%;
    }

    .loader-wrapper .loader:before {
      top: 5px;
      left: 5px;
      right: 5px;
      bottom: 5px;
      border: 3px solid transparent;
      border-top-color: #F44336;
      -webkit-animation: spin 2s infinite linear;
      animation: spin 2s infinite linear;
    }

    .loader-wrapper .loader:after {
      top: 15px;
      left: 15px;
      right: 15px;
      bottom: 15px;
      border: 3px solid transparent;
      border-top-color: #F44336;
      -webkit-animation: spin 1s infinite linear;
      animation: spin 1s infinite linear;
    }

    @-webkit-keyframes spin {
      0% {
        -webkit-transform: rotate(0);
        transform: rotate(0);
      }

      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }

    @keyframes spin {
      0% {
        -webkit-transform: rotate(0);
        transform: rotate(0);
      }

      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }

    /*Section */
    .loader-section {
      position: fixed;
      top: 0;
      width: 51%;
      height: 100%;
      background: #7d147d;
      z-index: 9999;
    }

    .loader-section.section-left {
      left: 0;
      -webkit-transition: all 0.5s ease-out;
      transition: all 0.5s ease-out;
    }

    .loader-section.section-right {
      right: 0;
      -webkit-transition: all 0.5s ease-out;
      transition: all 0.5s ease-out;
    }

    /*Finished Loading Styles*/
    .loaded .section-left {
      -webkit-transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
      transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
      -webkit-transform: translateX(-100%);
      transform: translateX(-100%);
    }

    .loaded .section-right {
      -webkit-transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
      transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
      -webkit-transform: translateX(100%);
      transform: translateX(100%);
    }

    .loaded .loader {
      -webkit-transition: all 0.5s ease-out;
      transition: all 0.5s ease-out;
      opacity: 0;
    }

    .loaded .loader-wrapper {
      visibility: hidden;
      -webkit-transform: translateY(-100%);
      transform: translateY(-100%);
      -webkit-transition: all 0.5s 1s ease-out;
      transition: all 0.5s 1s ease-out;
    }

    /*=================================*/
    .carousel-fade .carousel-item {
      opacity: 0;
      transition-duration: .6s;
      transition-property: opacity;
    }

    .carousel-fade .carousel-item.active,
    .carousel-fade .carousel-item-next.carousel-item-left,
    .carousel-fade .carousel-item-prev.carousel-item-right {
      opacity: 1;
    }

    .carousel-fade .active.carousel-item-left,
    .carousel-fade .active.carousel-item-right {
      opacity: 0;
    }

    .carousel-fade .carousel-item-next,
    .carousel-fade .carousel-item-prev,
    .carousel-fade .carousel-item.active,
    .carousel-fade .active.carousel-item-left,
    .carousel-fade .active.carousel-item-prev {
      transform: translateX(0);
      transform: translate3d(0, 0, 0);
    }
  </style>
  <!-- /css -->
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5c4d807ba55bc1f8"></script>
</head>

<body>
  <div class="wrapper" id="wrapper">
    {{--Global Modal Open--}}
    <div id="dataModalR" class="modal fade" tabindex="-1" data-focus-on="input:first">
      <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content" id="employee_detailR">
        </div>
      </div>
    </div>
    {{--Global Modal Open--}}
    <input type="hidden" name="_token" id="table_csrf_token" value="{!! csrf_token() !!}">
    @include('frontend.common.auth')
    @include('frontend.includes.header')
    <!--// Header Style 3 -->
    @include('frontend.page.s_w_message')
    @yield('content')
    <!-- //content -->
    <!-- Footer Area -->
    @include('frontend.includes.footer')
    <!-- //Footer Area -->
  </div>
  <!-- //Main wrapper -->
  <!-- js -->
  @include('frontend.includes.js')
  @stack('js')
  <?php
       
  ?>
  <?php
    SM::smGetSystemFrontEndJs( [
      "sm-validation",
      "main",
      "doodle_digital1",
    ] );
  ?>
  <script type="text/javascript">
    {
      !!SM::smGetThemeOption("mrks_theme_custom_js");
      !!
    }
  </script>
  <script>
    $(document).ready(function () {
      $(".loginFromOpenBtn").click(function () {
        $(".loginModalOpen").modal();
      });

      $(".regFromOpenBtn").click(function () {
        $(".regModalOpen").modal();
      });

      $("#forgotPassBtn").click(function () {
        $("#forgotPassModal").modal();
      });
    });
    $(".callout-success").fadeTo(2000, 500).slideUp(1000, function () {
      $(".callout-success").slideUp(1000);
    });
  </script>
  
  
  

  
  
</body>

</html>