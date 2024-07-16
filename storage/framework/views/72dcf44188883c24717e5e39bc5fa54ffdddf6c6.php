<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title> <?php echo SM::sm_get_site_name(); ?> - <?php echo $__env->yieldContent('title'); ?> </title>
    <meta name="description" content="">
    <meta name="author" content="Engr. Rubel Howlader <rubelm6776@gmail.com>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/smartadmin-production.min.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/smartadmin-skins.min.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/demo.min.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/hover.css')); ?>">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/bootstrap-datetimepicker.min.css')); ?>">

    <?php $__env->startSection("header_style"); ?>
    <?php echo $__env->yieldSection(); ?>
    <style type="text/css">

        .modal-header {
            padding: 10px 15px; 
        } 

        .modal-footer {
            margin-top: 15px;
            padding: 6px 7px 1px; 
        }

        .modal-body {
            position: relative;
            padding: 13px;
        }

    </style>

    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo e(asset('sm-admin/css/admin.css')); ?>">
    <link rel="shortcut icon" href="<?php echo SM::sm_get_the_src( SM::sm_get_site_favicon(), 30, 30 ); ?>"  type="image/x-icon">
    <link rel="icon" href="<?php echo SM::sm_get_the_src( SM::sm_get_site_favicon(), 30, 30 ); ?>" type="image/x-icon">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">
    <link rel="apple-touch-icon" href="<?php echo e(asset('sm-admin/img/splash/sptouch-icon-iphone.png')); ?>">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo e(asset('sm-admin/img/splash/touch-icon-ipad.png')); ?>">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo e(asset('sm-admin/img/splash/touch-icon-iphone-retina.png')); ?>">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo e(asset('sm-admin/img/splash/touch-icon-ipad-retina.png')); ?>">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="apple-touch-startup-image" href="<?php echo e(asset('sm-admin/img/splash/ipad-landscape.png')); ?>" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
    <link rel="apple-touch-startup-image" href="<?php echo e(asset('sm-admin/img/splash/ipad-portrait.png')); ?>"  media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
    <link rel="apple-touch-startup-image" href="<?php echo e(asset('sm-admin/img/splash/iphone.png')); ?>" media="screen and (max-device-width: 320px)">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

    <script>
        if (!window.jQuery) {
            document.write('<script src="<?php echo asset( 'sm-admin/js/libs/jquery-2.0.2.min.js' );?>"><\/script>');
        }
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

    <script>
        if (!window.jQuery.ui) {
            document.write('<script src="<?php echo asset( 'sm-admin/js/libs/jquery-ui-1.10.3.min.js' );?>"><\/script>');
        }
    </script>

    <script src="<?php echo e(asset('sm-admin/js/plugin/ckeditor/ckeditor.js')); ?>"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        var url = '<?php echo url( '' ) . '/'; ?>';
        var smAdminUrl = '<?php echo url( config( 'constant.smAdminSlug' ) ) . '/'; ?>';
        var controller = '<?php echo strtolower( SM::current_controller() ); ?>';
        var method = '<?php echo strtolower( SM::current_method() ); ?>';
    </script>

</head>

<body class="smart-style-1">

<header id="header">

    <input type="hidden" name="_token" id="table_csrf_token" value="<?php echo csrf_token(); ?>">
    <div id="logo-group">
        <span id="logo">
            <a href="<?php echo e(url(SM::smAdminSlug())); ?>">
                <h4><?php echo SM::get_setting_value( 'site_name' ); ?></h4>
            </a>
        </span>
    </div>

    <div class="pull-right">
        <div id="logout" class="btn-header transparent pull-right">
            <span> <a href="<?php echo e(url(SM::smAdminSlug("logout"))); ?>" title="Sign Out" data-action="userLogout"
            data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
            class="fa fa-sign-out"></i></a> </span>
        </div>
        <div id="" class="btn-header pull-right">
            <span> <a href="<?php echo e(url('')); ?>" title="View site" target="_blank"><i class="fa fa-eye"></i></a> </span>
        </div>

        <div id="" class="btn-header pull-right">
            <span> <a href="<?php echo e(url(SM::smAdminSlug("flush-cache"))); ?>" title="Flush Cache"><i
            class="fa fa-trash-o"></i></a> </span>
        </div>

        <div id="hide-menu" class="btn-header pull-right">
            <span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i
            class="fa fa-reorder"></i></a> </span>
        </div>

        <ul id="mobile-profile-img" class="header-dropdown-list hidden-xs padding-5">
            <li class="">
                <a href="#" class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown">
					<?php
					$current_user_first_lastname = SM::current_user_first_lastname();
					$currentUserImage = SM::current_user_image();
					?>
                    <img src="<?php echo SM::sm_get_the_src( $currentUserImage, 30, 30 ); ?>"
                    alt="<?php echo e($current_user_first_lastname); ?>" class="online"/>
                </a>

                <ul class="dropdown-menu pull-right">
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0"><i
                        class="fa fa-cog"></i> Setting</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="profile.html" class="padding-10 padding-top-0 padding-bottom-0"> <i
                        class="fa fa-user"></i> <u>P</u>rofile</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0"
                        data-action="toggleShortcut"><i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0"
                        data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i> Full <u>S</u>creen</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="<?php echo e(url(SM::smAdminSlug("logout"))); ?>" class="padding-10 padding-top-5 padding-bottom-5"
                        data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i> <strong><u>L</u>ogout</strong></a>
                    </li>
                </ul>
            </li>
        </ul>
        <div id="search-mobile" class="btn-header transparent pull-right">
            <span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
        </div>

        <div id="fullscreen" class="btn-header transparent pull-right">
            <span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i
            class="fa fa-arrows-alt"></i></a> </span>
        </div>
    </div>
</header>

<aside id="left-panel">
    <div class="login-info">
        <span> 
            <a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
                <img src="<?php echo SM::sm_get_the_src( $currentUserImage, 30, 30 ); ?>"
                    alt=" <?php echo e($current_user_first_lastname); ?>"
                    class="online"/>
                <span>
                    <?php echo e($current_user_first_lastname); ?>

                </span>
                <i class="fa fa-angle-down"></i>
            </a>
        </span>
    </div>
    <?php echo $__env->make('sm-admin.common.common.menus', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</aside>

<div id="main" role="main">
    <div id="ribbon">
        <span class="ribbon-button-alignment">
            <span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh" rel="tooltip"
                    data-placement="bottom"
                    data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings."
                    data-html="true">
                <i class="fa fa-refresh"></i>
            </span>
        </span>

        <!-- breadcrumb -->
        <ol class="breadcrumb">
			<?php
	        $controller = SM::current_controller();
	        $method = str_replace( '_', ' ', SM::current_method() );
	        $url = $controller == 'Dashboard' ? SM::smAdminSlug() : SM::smAdminSlug(strtolower( $controller ));
	        $controllerTitle = title_case(str_replace('_', ' ', snake_case($controller)));
	        $methodTitle = title_case(str_replace('_', ' ', snake_case($method)));
	        ?>
            <li><a href="<?php echo e(url(SM::smAdminSlug())); ?>">Home</a></li>
            <li><a href="<?php echo e(url($url)); ?>"><?php echo e($controllerTitle); ?></a></li>
            <?php echo $method=='index'? '':'<li>'.$methodTitle.'</li>'; ?>

        </ol>
    </div>

    <div id="content">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-lg-4">
                <h1 class="page-title txt-color-blueDark">
                    <?php echo $__env->yieldContent('title'); ?>
                    <span>
                        <?php echo $__env->yieldContent('subtitle'); ?>
                     </span>
                </h1>
            </div>

            <div class="col-xs-12 col-sm-6 col-lg-8">
                <div id="smddtech_ads">
                    <br>
                    <?php if(isset($rightButton["text"]) && isset($rightButton["link"])): ?>
                        <a href="<?php echo e(url(SM::smAdminSlug($rightButton["link"]))); ?>" class="btn btn-success pull-right">
                            <?php if(isset($rightButton["iconClass"])): ?>
                                <i class="<?php echo e($rightButton["iconClass"]); ?>"></i>
                            <?php endif; ?>
                            <?php echo e($rightButton["text"]); ?>

                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </div>

        <?php if(Session::has('w_message')): ?>
            <div class="alert alert-danger warning">
                <i class="fa fa-warning"></i> <?php echo Session::get('w_message'); ?>

            </div>
			<?php
			Session::forget( "w_message" );
			Session::save();
			?>
        <?php endif; ?>

        <?php if(Session::has('s_message')): ?>
            <div class=" alert alert-success success">
                <i class="fa fa-check"></i> <?php echo Session::get('s_message'); ?>

            </div>
            <?php
            Session::forget( "s_message" );
            Session::save();
            ?>
        <?php endif; ?>

        <?php $__env->startSection('content'); ?>
        <?php echo $__env->yieldSection(); ?>
    </div>
</div>

<div class="page-footer">
    <div class="row">
        <div class="col-xs-12">
            <p class="txt-color-white text-center">&copy; <?php echo date( 'Y' ); ?> by
            <b><?php echo e(SM::sm_get_site_name()); ?></b> | All
            rights reserved. Design and Developed By : <a target="_blank" 
            href="https://nextpagetl.com"><b>Next Page Technology Ltd.</b></a></p>
        </div>
    </div>
</div>

<div id="shortcut">
    <ul>
        <li>
            <a href="<?php echo e(url(config('constant.smAdminSlug').'/profile')); ?>" class="jarvismetro-tile big-cubes  bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-eye fa-4x"></i> <span>View My Profile </span> </span> </a>
        </li>
        <li>
            <a href="<?php echo e(url(config('constant.smAdminSlug').'/edit_profile')); ?>" class="jarvismetro-tile big-cubes bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-pencil fa-4x"></i> <span>Edit My Profile </span> </span> </a>
        </li>
    </ul>
</div>

<div class="displayNone change_status_notification">
    <i class="fa fa-check-circle"></i> <br><span class="text">Status updated successfully!</span>
</div>



<div id="dataModalR" class="modal fade" tabindex="-1" data-focus-on="input:first">
    <div class="modal-dialog">
        <div class="modal-content" id="employee_detailR">
        </div>
    </div>
</div>



<script data-pace-options='{ "restartOnRequestAfter": true }' src="<?php echo e(asset('sm-admin/js/plugin/pace/pace.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/bootstrap/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/notification/SmartNotification.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/smartwidgets/jarvis.widget.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/sparkline/jquery.sparkline.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/jquery-validate/jquery.validate.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/masked-input/jquery.maskedinput.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/select2/select2.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/colorpicker/bootstrap-colorpicker.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/bootstrap-slider/bootstrap-slider.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/msie-fix/jquery.mb.browser.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/fastclick/fastclick.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/datatables/jquery.dataTables.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/datatables/dataTables.colVis.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/datatables/dataTables.tableTools.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/datatables/dataTables.bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/jquery-nestable/jquery.nestable.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/demo.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/jqueryPrint.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/state.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/app.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/jquery.appear.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/dropzone/dropzone.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/plugin/superbox/superbox.min.js')); ?>"></script>
<script src="<?php echo e(asset('sm-admin/js/bootstrap-datetimepicker.min.js')); ?>"></script>
<script type="text/javascript">

    $(document).ready(function () {
        pageSetUp();

        /* TABLETOOLS */

        $('.data_table').dataTable({

            "order": []

        });

        /* END TABLETOOLS */



        Dropzone.autoDiscover = false;

        $("#mydropzone").dropzone({

//url: "/file/post",

            addRemoveLinks: false,

            maxFilesize: 100,

            dictResponseError: 'Error uploading file!',

            success: function (file, response) {

                if ($(".superbox").length > 0) {

                    $(".superbox").prepend(response);

                    $(".dz-progress").fadeOut();

                    $(".dz-success-mark").fadeIn();

                }

            }

        });

        $('.superbox').SuperBox();

        $(document).ready(ajustamodal);

        $(window).resize(ajustamodal);



        function ajustamodal() {

            var mx_height = $(window).height() - 165; //value corresponding to the modal heading + footer

            $(".modal-body").css({"max-height": mx_height, "overflow-y": "auto"});

        }

    });

    /*menu*/





</script>



<!-- Your GOOGLE ANALYTICS CODE Below -->

<script type="text/javascript">

    var _gaq = _gaq || [];

    _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);

    _gaq.push(['_trackPageview']);

    (function () {

        var ga = document.createElement('script');

        ga.type = 'text/javascript';

        ga.async = true;

        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';

        var s = document.getElementsByTagName('script')[0];

        s.parentNode.insertBefore(ga, s);

    })();</script>

<script src="<?php echo e(asset('js/sm-validation.js')); ?>"></script>

<script src="<?php echo e(asset('sm-admin/js/admin.js')); ?>"></script>

<!-- drop down Category by Sub Category -->

<script type="text/javascript">  

   $(document).ready(function () { 

       $(document).on('change', '.selectMCategories', function () {

           //console.log("hmm its change");

           var id = $(this).val();

           //console.log(id);

           var div = $(this).parent().parent();

           var showSubCategory = " ";

           $.ajax({

               type: 'get',

               url: '<?php echo URL::to('admin/services/findSubCategory'); ?>',

               data: {'id': id},

               success: function (sub_category_data) { 

                   showSubCategory += '<option value="" selected>---Sub Category---</option>';

                   for (var i = 0; i < sub_category_data.length; i++) {

                       showSubCategory += '<option value="' + sub_category_data[i].id + '">' + sub_category_data[i].title + '</option>';

                   } 

                   div.find('.selectSCategories').html(" ");

                   div.find('.selectSCategories').append(showSubCategory);

               },

               error: function () {

   

               }

           });

       });

   });



   $('.selectMCategories' ).on( 'load', function() {

         //console.log("hmm its change");

           var id = 10;

           var id = $(this).val();

           //console.log(id);

           var div = $(this).parent().parent();

           var showSubCategory = " ";

           $.ajax({

               type: 'get',

               url: '<?php echo URL::to('admin/services/findSubCategory'); ?>',

               data: {'id': id},

               success: function (sub_category_data) { 

                   showSubCategory += '<option value="" selected>---Sub Category---</option>';

                   for (var i = 0; i < sub_category_data.length; i++) {

                       showSubCategory += '<option value="' + sub_category_data[i].id + '">' + sub_category_data[i].title + '</option>';

                   } 

                   div.find('.selectSCategories').html(" ");

                   div.find('.selectSCategories').append(showSubCategory);

               },

               error: function () {

   

               }

           });

        // console.log( "window loaded" );

    });



</script>

<!-- /drop down Category by Sub Category -->

<?php $__env->startSection("footer_script"); ?>

<?php echo $__env->yieldSection(); ?>

</body>



</html>