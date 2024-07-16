<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<?php
	$site_name = SM::sm_get_site_name();
	$site_name = SM::sm_string( $site_name ) ? $site_name : 'Doodle Digital';

	$seo_title = stripslashes(
		(
			isset( $seo_title )
			&& SM::sm_string( $seo_title )
		)
			? $seo_title
			: SM::get_setting_value( 'seo_title' )
	);
	$meta_key = stripslashes(
		(
			isset( $meta_key )
			&& SM::sm_string( $meta_key )
		)
			? $meta_key
			: SM::get_setting_value( 'site_meta_keywords' )
	);
	$meta_description = stripslashes(
		(
			isset( $meta_description )
			&& SM::sm_string( $meta_description )
		)
			? $meta_description
			: SM::get_setting_value( 'site_meta_description' )
	);
	$image = ( isset( $image ) ) ? $image
		: asset( SM::sm_get_the_src( SM::get_setting_value( 'site_screenshot' ) ) );


	?><title>{{ $seo_title }}</title>
    <meta name="keywords" content="{!!$meta_key!!}">
    <meta name="description" content="{!! $meta_description !!}"/>

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{$seo_title}}">
    <meta itemprop="description" content="{!! $meta_description !!}">
    <meta itemprop="image" content="{!!$image!!}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="{{$site_name}}">
    <meta name="twitter:title" content="{{ $seo_title }}">
    <meta name="twitter:description" content="{!! $meta_description !!}">
    <meta name="twitter:image:src" content="{!!$image!!}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $seo_title }}"/>
    <meta property="og:type" content="article"/>
    <meta property="og:image" content="{!!$image!!}"/>
    <meta property="og:description" content="{!! $meta_description !!}"/>
    <meta property="og:site_name" content="{{$site_name}}"/>
    <link rel="icon" href="<?php echo SM::sm_get_the_src( SM::sm_get_site_favicon(), 30, 30 ); ?>" type="image/x-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:200,300,400,500,600,700,800,900&amp;subset=latin-ext,tamil"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
	<?php
	SM::smGetSystemFrontEndCss( [
		"bootstrap.min",
		"font-awesome.min",
		"swiper.min",
		"animate.min",
		"magnific-popup.min",
		"video-js",
	] );
	?>
    @yield("header_style")
	<?php
	SM::smGetSystemFrontEndCss( [
		"style",
//		"style.min",
		"responsive",
//		"responsive.min",
	] );
	SM::smGetSystemFrontEndJs( [
		"jquery-3.2.1.min",
		"state"
	] );
	$method = strtolower( SM::current_method() );
	?>
    <script type="text/javascript">
        var url = '<?php echo url( '' ) . '/'; ?>';
        var method = '<?php echo $method; ?>';
    </script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    {!! SM::smGetThemeOption( "google_analytic_code"); !!}
    <style type="text/css">
        {!! SM::smGetThemeOption( "mrks_theme_custom_css"); !!}
    </style>
</head>

<body>
@include("common.popup")
<!--Admin Bar Start-->
@include("common.admin_bar")
<?php
//echo "<pre>";
//print_r(Session::all());
//echo "</pre>";
?>
<!--Admin Bar End-->
<!--HEADER TOP START-->
<div class="header-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-sm-12">
                <ul class="header-top-phone">
					<?php
					$mobile = SM::get_setting_value( 'mobile' );
					$email = SM::get_setting_value( 'email' );
	                $address = SM::get_setting_value( 'address' );
	                ?>
                    <li><i class="fa fa-map-marker"></i> {{ trim(stripslashes($address)) }}</li>
                </ul>
            </div>
            <div class="col-lg-6 col-sm-12">
                <ul class="header-top-account text-right " id="auth_ul">
					<?php
					if ( Auth::check() ) {
					?>
                    <li><a href="{{ url("/dashboard") }}" class="profile-img"><?php echo Auth::user()->username ?></a>
                    </li>
                    <li><a href="{{url( '/logout' )}}"><i class="fa fa-sign-in"></i>Logout</a></li>
					<?php
					} else if(Session::has( "guest" )){
					$guest = Session::get( "guest" );
					?>
                    <li><a href="{{ url("/dashboard") }}" class="profile-img"><?php echo $guest->username ?></a>
                    </li>
                    <li><a href="{{url( '/logout' )}}"><i class="fa fa-sign-in"></i>Logout</a></li>
					<?php
					}else {
					?>
                    <li><a href="" class="loginFormShow"><i class="fa fa-user"></i>Login </a></li>
                    <li><a href="" class="signUpFormShow"><i class="fa fa-sign-in"></i>Sign Up </a></li>
					<?php
					}
					?>
                    <li><a href="{!! url('dashboard/tickets/add') !!}"><i class="fa fa-support"></i> Submit Ticket
                        </a></li>
                    <li><a class="searchIcon" href="#"><img src="{{ asset('images/search.png')}}"
                                                            alt="Doodle Search Icon"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--HEADER TOP END-->
<!--Menu Start-->
@include('partials.menu')
<!--Menu End-->
@if(Session::has("w_message"))
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-warning margin-top-20">
                    <i class="fa fa-warning"></i> {{ Session::get("w_message") }}
                </div>
            </div>
        </div>
    </div>
	<?php
	Session::forget( "w_message" );
	Session::save();
	?>
@endif
@if(Session::has("s_message"))
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-success margin-top-20">
                    <i class="fa fa-check"></i> {{ Session::get("s_message") }}
                </div>
            </div>
        </div>
    </div>
	<?php
	Session::forget( "s_message" );
	Session::save();
	?>
@endif
@if(session("status"))
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-success margin-top-20">
                    <i class="fa fa-check"></i> {{ session("status") }}
                </div>
            </div>
        </div>
    </div>
@endif
@section("content")
@show
<!--footer Start-->
@include('partials.footer')
<!--footer End-->
<?php
SM::smGetSystemFrontEndJs( [
"bootstrap.min",
"modernizr",
"swiper.jquery.min",
"mixitup.min",
"jquery.magnific-popup.min",
"wow.min",
"jquery.appear.min",
"video"
] );
SM::smGetSystemFrontEndJs( [
"https://unpkg.com/sweetalert/dist/sweetalert.min.js"
], 1 );
?>
@yield("footer_script")
<?php
SM::smGetSystemFrontEndJs( [
"sm-validation",
//	"sm-validation.min",
"main",
//"main.min",
"doodle_digital",
//	"doodle_digital.min",
] );
?>

<script type="text/javascript">
    {!! SM::smGetThemeOption( "mrks_theme_custom_js"); !!}
</script>
</body>

</html>