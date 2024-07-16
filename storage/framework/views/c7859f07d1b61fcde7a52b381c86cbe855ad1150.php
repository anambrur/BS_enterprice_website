<!-- NAVIGATION : This navigation is also responsive

  To make this navigation dynamic please make sure to link the node
  (the reference to the nav > ul) after page load. Or the navigation
  will not initialize.
-->
<nav id="admin_main_nav">
    <!-- NOTE: Notice the gaps after each icon usage <i></i>..
    Please note that these links work a bit different than
    traditional href="" links. See documentation for details.
    -->

    <ul>
        <li ctrl="dashboard">
            <a href="<?php echo e(url(url(SM::smAdminSlug()))); ?>" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i>
                <span class="menu-item-parent">Dashboard</span>
            </a>
        </li>
        <li ctrl="media">
            <a href="<?php echo e(url(url(SM::smAdminSlug('media')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-picture-o"></i>
                <span class="menu-item-parent">Media Gallery</span>
            </a>
        </li>
        <!-- Blog -->
        <?php if (SM::check_this_contoller_access('blogs')): ?>
        <li ctrl="blogs">
            <a href="#"><i class="fa fa-lg fa-fw fa-university"></i> <span class="menu-item-parent">
                        Blogs
                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('blogs', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('blogs/create'))); ?>">
                        Add Blogs
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('blogs', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('blogs'))); ?>">
                        Blogs List
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('sliders')): ?>
        <li ctrl="sliders">
            <a href="#"><i class="fa fa-lg fa-fw fa-sliders"></i> <span class="menu-item-parent">
                    Sliders
                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('sliders', 'add_slider')): ?>
                <li mtd="add_slider">
                    <a href="<?php echo e(url(SM::smAdminSlug('sliders/add_slider'))); ?>">
                        <?php echo e(__("menu.addSlider")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('sliders', 'sliders')): ?>
                <li mtd="sliders">
                    <a href="<?php echo e(url(SM::smAdminSlug('sliders'))); ?>">
                        <?php echo e(__("menu.sliders")); ?>

                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('categories')): ?>
        <li ctrl="categories">
            <a href="#"><i class="fa fa-lg fa-fw fa-list"></i> <span
                        class="menu-item-parent">Category</span></a>
            <ul>
                <?php if (SM::check_this_method_access('categories', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('categories/create'))); ?>">Add category</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('categories', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('categories'))); ?>">All Categories</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('tags')): ?>
        <!--<li ctrl="tags">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-tags"></i> <span-->
        <!--                class="menu-item-parent">Tag</span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('tags', 'create')): ?>-->
        <!--        <li mtd="create">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('tags/create'))); ?>">Add Tag</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->

        <!--        <?php if (SM::check_this_method_access('tags', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('tags'))); ?>">All Tag</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('page')): ?>
        <!--<li ctrl="page">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-pagelines"></i> <span-->
        <!--                class="menu-item-parent">Page</span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('page', 'add_page')): ?>-->
        <!--        <li mtd="add_page">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('pages/add_page'))); ?>">Add Page</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->

        <!--        <?php if (SM::check_this_method_access('page', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('pages'))); ?>">All Page</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>
       
        <?php if (SM::check_this_contoller_access('appearance')): ?>
        <li ctrl="appearance">
            <a href="#"><i class="fa fa-lg fa-fw fa-eye"></i> <span class="menu-item-parent">
                        <?php echo e(__("menu.appearance")); ?>

                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('appearance', 'smthemeoptions')): ?>
                <li mtd="smthemeoptions">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/smthemeoptions'))); ?>">
                        <?php echo e(__("menu.themeOption")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('appearance', 'menus')): ?>
                <li mtd="menus">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/menus'))); ?>">
                        <?php echo e(__("menu.menus")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('appearance', 'editor')): ?>
                <li mtd="editor">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/editor'))); ?>">
                        <span class="menu-item-parent">Editor</span></a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php
        endif;
        ?>

        <?php if (SM::check_this_contoller_access('packages')): ?>
        <!--<li ctrl="packages">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-heart"></i> <span-->
        <!--                class="menu-item-parent">Package</span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('packages', 'create')): ?>-->
        <!--        <li mtd="create">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('packages/create'))); ?>">Add Package</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--        <?php if (SM::check_this_method_access('packages', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('packages'))); ?>">All Package</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>

        <?php if (SM::check_this_contoller_access('users')): ?>
        <li ctrl="users">
            <a href="#"><i class="fa fa-lg fa-fw fa-user"></i> <span class="menu-item-parent">
                        Users
                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('users', 'add_user')): ?>
                <li mtd="add_user">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/add_user'))); ?>">
                        <?php echo e(__("menu.addUser")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('users'))); ?>">
                        <?php echo e(__("menu.allUser")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'add_role')): ?>
                <li mtd="add_role">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/add_role'))); ?>">
                        Add Role
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'roles')): ?>
                <li mtd="roles">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/roles'))); ?>">
                        User Roles
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('customers')): ?>
        <!--<li ctrl="customers">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">-->
        <!--                Customers-->
        <!--            </span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('customers', 'add_customer')): ?>-->
        <!--        <li mtd="add_customer">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('customers/add_customer'))); ?>">-->
        <!--                Add Customer-->
        <!--            </a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--        <?php if (SM::check_this_method_access('customers', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('customers'))); ?>">-->
        <!--                Customer List-->
        <!--            </a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>
    <!-- Portfolio -->
        <?php if (SM::check_this_contoller_access('portfolios')): ?>
        <li ctrl="portfolios">
            <a href="#"><i class="fa fa-lg fa-fw fa-briefcase"></i> <span class="menu-item-parent">
                        Gallery
                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('portfolios', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('portfolios/create'))); ?>">
                        Add Gallery
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('portfolios', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('portfolios'))); ?>">
                        Gallery List
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
    <!-- /Portfolio --> 
    <!-- /Portfolio -->
     <?php if (SM::check_this_contoller_access('careers')): ?>
        <!--<li ctrl="careers">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-pagelines"></i> <span-->
        <!--                class="menu-item-parent">Career</span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('page', 'add_page')): ?>-->
        <!--        <li mtd="create">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('careers/create'))); ?>">Add Career</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->

        <!--        <?php if (SM::check_this_method_access('careers', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('careers'))); ?>">All Career</a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>
           <!-- careerapplys -->
        <?php if (SM::check_this_contoller_access('careerapplys')): ?>
       <!--<li ctrl="careerapplys">-->
       <!--     <a href="<?php echo e(url(url(SM::smAdminSlug('careerapplys')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-tasks"></i>-->
       <!--         <span class="menu-item-parent"> Jobs Apply</span>-->
       <!--     </a>-->
       <!-- </li> -->
        <?php endif; ?>        
        <!-- careerapplys -->
         <!-- orders -->
        <?php if (SM::check_this_contoller_access('orders')): ?>
       <!--<li ctrl="orders">-->
       <!--     <a href="<?php echo e(url(url(SM::smAdminSlug('orders')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-shopping-cart"></i>-->
       <!--         <span class="menu-item-parent"> Orders</span>-->
       <!--     </a>-->
       <!-- </li> -->
        <?php endif; ?>        
        <!-- orders -->
       
        <!-- contacts -->
        <?php if (SM::check_this_contoller_access('contacts')): ?>
       <!--<li ctrl="contacts">-->
       <!--     <a href="<?php echo e(url(url(SM::smAdminSlug('contacts')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-phone"></i>-->
       <!--         <span class="menu-item-parent"> Contacts List</span>-->
       <!--     </a>-->
       <!-- </li> -->
        <?php endif; ?>
    <!-- /Contact -->
    <!-- Subscribers -->
     <!--<li ctrl="subscribers">-->
     <!--       <a href="<?php echo e(url(url(SM::smAdminSlug('subscribers')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-users"></i>-->
     <!--           <span class="menu-item-parent">Subscribers</span>-->
     <!--       </a>-->
     <!--   </li>-->
        <!-- //Subscribers -->
        <!-- Services -->
        <?php if (SM::check_this_contoller_access('services')): ?>
        <!--<li ctrl="services">-->
        <!--    <a href="#"><i class="fa fa-lg fa-fw fa-university"></i> <span class="menu-item-parent">-->
        <!--                Services-->
        <!--            </span></a>-->
        <!--    <ul>-->
        <!--        <?php if (SM::check_this_method_access('services', 'create')): ?>-->
        <!--        <li mtd="create">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('services/create'))); ?>">-->
        <!--                Add Services-->
        <!--            </a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--        <?php if (SM::check_this_method_access('services', 'index')): ?>-->
        <!--        <li mtd="index">-->
        <!--            <a href="<?php echo e(url(SM::smAdminSlug('services'))); ?>">-->
        <!--                Services List-->
        <!--            </a>-->
        <!--        </li>-->
        <!--        <?php endif; ?>-->
        <!--    </ul>-->
        <!--</li>-->
        <?php endif; ?>
    
    <!-- /Services -->
        <?php if (SM::check_this_contoller_access('products')): ?>
        <li ctrl="products">
            <a href="#"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">
                        Product Management
                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('products', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('products/create'))); ?>">
                        Add Product
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('products', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('products'))); ?>">
                        Product List
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('setting')): ?>
        <li ctrl="setting">
            <a href="#"><i class="fa fa-lg fa-fw fa-cog"></i> <span class="menu-item-parent">
                        <?php echo e(__("menu.setting")); ?>

                    </span></a>
            <ul>
                <?php if (SM::check_this_method_access('setting', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('setting'))); ?>"><i class="fa fa-lg fa-fw fa-cogs"></i>
                        <span class="menu-item-parent"><?php echo e(__("menu.generalSetting")); ?></span></a>
                </li>
                <?php endif; ?>

            </ul>
        </li>
        <?php endif; ?>
    </ul>
</nav>
<span class="minifyme" data-action="minifyMenu">
    <i class="fa fa-arrow-circle-left hit"></i>
</span>