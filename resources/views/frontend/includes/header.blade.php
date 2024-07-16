<header class="header header-style-3 megamenu-container bg-white sticky-header bg-white fixed-header">
    <!-- <div class="header-top-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-9 col-md-9 col-12">
                    <div class="header-iconline text-right">
                        <marquee class="li" direction=”right” onmouseover="stop()" onmouseout="start()"> Welcome to Eco Colour Chem . We are Committed to Quality & Service </marquee>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="header-iconline text-left">
                        <ul class="navbar-right">
                            <li>
                                <a href="tel:{{ SM::get_setting_value('mobile') }}">
                                    <i class="fa fa-phone"></i>{{ SM::get_setting_value('mobile') }}
                                </a>
                            </li>
                            <li>
                                <a href="https://webmail.lavender-bd.com/"><i class="fa fa-envelope"></i> WEBMAIL</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> -->

    <div class="header-bottom-area d-none d-lg-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header-inner">
                        <div class="logo">
                            <a href="{{url('/')}}">
                                <img src="{{ SM::sm_get_the_src( SM::get_setting_value( 'logo' ) ) }}" alt="{{ SM::get_setting_value('site_name') }}">
                            </a>
                        </div>
                        <nav class="menu">
                            <?php
                                $menu = array(
                                    'nav_wrapper' => 'ul',
                                    'start_class' => 'menu',
                                    'link_wrapper' => 'li',
                                    'dropdown_class' => 'sub-menu',
                                    'has_dropdown_wrapper_class' => 'cr-dropdown',
                                    'show' => TRUE
                                );
                                SM::sm_get_menu($menu);
                            ?>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mobile-menu-wrapper">
        <div class="container d-block d-lg-none">
            <div class="mobile-menu clearfix">
                <a class="mobile-logo" href="{{url('/')}}">
                    <img src="{{ SM::sm_get_the_src( SM::get_setting_value( 'logo' ) ) }}" alt="{{ SM::get_setting_value('site_name') }}" alt="{{ SM::get_setting_value('site_name') }}">
                </a> 
            </div>
        </div>
    </div>
</header> 
