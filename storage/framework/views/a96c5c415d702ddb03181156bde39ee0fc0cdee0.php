<nav id="admin_main_nav">
    <ul>
        <li ctrl="dashboard">
            <a href="<?php echo e(url(url(SM::smAdminSlug()))); ?>" title="Dashboard">
                <i class="fa fa-lg fa-fw fa-home"></i>
                <span class="menu-item-parent">Dashboard</span>
            </a>
        </li>
        <li ctrl="media">
            <a href="<?php echo e(url(url(SM::smAdminSlug('media')))); ?>" title="Media">
                <i class="fa fa-lg fa-fw fa-picture-o"></i>
                <span class="menu-item-parent">Media Gallery</span>
            </a>
        </li>
        <?php if(SM::check_this_contoller_access('sliders')): ?>
            <li ctrl="sliders">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-sliders"></i>
                    <span class="menu-item-parent">Sliders</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('sliders', 'add_slider')): ?>
                        <li mtd="add_slider">
                            <a href="<?php echo e(url(SM::smAdminSlug('sliders/add_slider'))); ?>">
                                <?php echo e(__('menu.addSlider')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('sliders', 'sliders')): ?>
                        <li mtd="sliders">
                            <a href="<?php echo e(url(SM::smAdminSlug('sliders'))); ?>">
                                <?php echo e(__('menu.sliders')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        <?php if(SM::check_this_contoller_access('categories')): ?>
            <li ctrl="categories">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-list"></i>
                    <span class="menu-item-parent">Category</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('categories', 'create')): ?>
                        <li mtd="create">
                            <a href="<?php echo e(url(SM::smAdminSlug('categories/create'))); ?>">Add category</a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('categories', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('categories'))); ?>">All Categories</a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        <?php if(SM::check_this_contoller_access('appearance')): ?>
            <li ctrl="appearance">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-eye"></i>
                    <span class="menu-item-parent"><?php echo e(__('menu.appearance')); ?></span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('appearance', 'smthemeoptions')): ?>
                        <li mtd="smthemeoptions">
                            <a href="<?php echo e(url(SM::smAdminSlug('appearance/smthemeoptions'))); ?>">
                                <?php echo e(__('menu.themeOption')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('appearance', 'menus')): ?>
                        <li mtd="menus">
                            <a href="<?php echo e(url(SM::smAdminSlug('appearance/menus'))); ?>">
                                <?php echo e(__('menu.menus')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('appearance', 'editor')): ?>
                        <li mtd="editor">
                            <a href="<?php echo e(url(SM::smAdminSlug('appearance/editor'))); ?>">
                                <span class="menu-item-parent">Editor</span>
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        <?php if(SM::check_this_contoller_access('users')): ?>
            <li ctrl="users">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-user"></i>
                    <span class="menu-item-parent">Users</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('users', 'add_user')): ?>
                        <li mtd="add_user">
                            <a href="<?php echo e(url(SM::smAdminSlug('users/add_user'))); ?>">
                                <?php echo e(__('menu.addUser')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('users', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('users'))); ?>">
                                <?php echo e(__('menu.allUser')); ?>

                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('users', 'add_role')): ?>
                        <li mtd="add_role">
                            <a href="<?php echo e(url(SM::smAdminSlug('users/add_role'))); ?>">
                                Add Role
                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('users', 'roles')): ?>
                        <li mtd="roles">
                            <a href="<?php echo e(url(SM::smAdminSlug('users/roles'))); ?>">
                                User Roles
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        <?php if(SM::check_this_contoller_access('portfolios')): ?>
            <li ctrl="portfolios">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-briefcase"></i>
                    <span class="menu-item-parent">Gallery</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('portfolios', 'create')): ?>
                        <li mtd="create">
                            <a href="<?php echo e(url(SM::smAdminSlug('portfolios/create'))); ?>">
                                Add Gallery
                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('portfolios', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('portfolios'))); ?>">
                                Gallery List
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        <?php if(SM::check_this_contoller_access('products')): ?>
            <li ctrl="products">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-home"></i>
                    <span class="menu-item-parent">Product Management</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('products', 'create')): ?>
                        <li mtd="create">
                            <a href="<?php echo e(url(SM::smAdminSlug('products/create'))); ?>">
                                Add Product
                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('products', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('products'))); ?>">
                                Product List
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>
        
        <?php if(SM::check_this_contoller_access('setting')): ?>
            <li ctrl="setting">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-cog"></i>
                    <span class="menu-item-parent"><?php echo e(__('menu.setting')); ?></span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('setting', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('setting'))); ?>">
                                <i class="fa fa-lg fa-fw fa-cogs"></i>
                                <span class="menu-item-parent"><?php echo e(__('menu.generalSetting')); ?></span>
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endif; ?>

        <!-- Certification Section -->
        <?php if(SM::check_this_contoller_access('certifications')): ?>
            <li ctrl="certifications">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-certificate"></i>
                    <span class="menu-item-parent">Certifications</span>
                </a>
                <ul>
                    <?php if(SM::check_this_method_access('certifications', 'create')): ?>
                        <li mtd="create">
                            <a href="<?php echo e(url(SM::smAdminSlug('certifications/create'))); ?>">
                                Add Certification
                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if(SM::check_this_method_access('certifications', 'index')): ?>
                        <li mtd="index">
                            <a href="<?php echo e(url(SM::smAdminSlug('certifications'))); ?>">
                                Certification List
                            </a>
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
