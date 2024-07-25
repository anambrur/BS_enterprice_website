<nav id="admin_main_nav">
    <ul>
        <li ctrl="dashboard">
            <a href="{{ url(url(SM::smAdminSlug())) }}" title="Dashboard">
                <i class="fa fa-lg fa-fw fa-home"></i>
                <span class="menu-item-parent">Dashboard</span>
            </a>
        </li>
        <li ctrl="media">
            <a href="{{ url(url(SM::smAdminSlug('media'))) }}" title="Media">
                <i class="fa fa-lg fa-fw fa-picture-o"></i>
                <span class="menu-item-parent">Media Gallery</span>
            </a>
        </li>
        @if (SM::check_this_contoller_access('sliders'))
            <li ctrl="sliders">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-sliders"></i>
                    <span class="menu-item-parent">Sliders</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('sliders', 'add_slider'))
                        <li mtd="add_slider">
                            <a href="{{ url(SM::smAdminSlug('sliders/add_slider')) }}">
                                {{ __('menu.addSlider') }}
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('sliders', 'sliders'))
                        <li mtd="sliders">
                            <a href="{{ url(SM::smAdminSlug('sliders')) }}">
                                {{ __('menu.sliders') }}
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        @if (SM::check_this_contoller_access('categories'))
            <li ctrl="categories">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-list"></i>
                    <span class="menu-item-parent">Category</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('categories', 'create'))
                        <li mtd="create">
                            <a href="{{ url(SM::smAdminSlug('categories/create')) }}">Add category</a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('categories', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('categories')) }}">All Categories</a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        @if (SM::check_this_contoller_access('appearance'))
            <li ctrl="appearance">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-eye"></i>
                    <span class="menu-item-parent">{{ __('menu.appearance') }}</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('appearance', 'smthemeoptions'))
                        <li mtd="smthemeoptions">
                            <a href="{{ url(SM::smAdminSlug('appearance/smthemeoptions')) }}">
                                {{ __('menu.themeOption') }}
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('appearance', 'menus'))
                        <li mtd="menus">
                            <a href="{{ url(SM::smAdminSlug('appearance/menus')) }}">
                                {{ __('menu.menus') }}
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('appearance', 'editor'))
                        <li mtd="editor">
                            <a href="{{ url(SM::smAdminSlug('appearance/editor')) }}">
                                <span class="menu-item-parent">Editor</span>
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        @if (SM::check_this_contoller_access('users'))
            <li ctrl="users">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-user"></i>
                    <span class="menu-item-parent">Users</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('users', 'add_user'))
                        <li mtd="add_user">
                            <a href="{{ url(SM::smAdminSlug('users/add_user')) }}">
                                {{ __('menu.addUser') }}
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('users', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('users')) }}">
                                {{ __('menu.allUser') }}
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('users', 'add_role'))
                        <li mtd="add_role">
                            <a href="{{ url(SM::smAdminSlug('users/add_role')) }}">
                                Add Role
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('users', 'roles'))
                        <li mtd="roles">
                            <a href="{{ url(SM::smAdminSlug('users/roles')) }}">
                                User Roles
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        @if (SM::check_this_contoller_access('portfolios'))
            <li ctrl="portfolios">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-briefcase"></i>
                    <span class="menu-item-parent">Gallery</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('portfolios', 'create'))
                        <li mtd="create">
                            <a href="{{ url(SM::smAdminSlug('portfolios/create')) }}">
                                Add Gallery
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('portfolios', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('portfolios')) }}">
                                Gallery List
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        @if (SM::check_this_contoller_access('products'))
            <li ctrl="products">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-home"></i>
                    <span class="menu-item-parent">Product Management</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('products', 'create'))
                        <li mtd="create">
                            <a href="{{ url(SM::smAdminSlug('products/create')) }}">
                                Add Product
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('products', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('products')) }}">
                                Product List
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
        
        @if (SM::check_this_contoller_access('setting'))
            <li ctrl="setting">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-cog"></i>
                    <span class="menu-item-parent">{{ __('menu.setting') }}</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('setting', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('setting')) }}">
                                <i class="fa fa-lg fa-fw fa-cogs"></i>
                                <span class="menu-item-parent">{{ __('menu.generalSetting') }}</span>
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif

        <!-- Certification Section -->
        @if (SM::check_this_contoller_access('certifications'))
            <li ctrl="certifications">
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-certificate"></i>
                    <span class="menu-item-parent">Certifications</span>
                </a>
                <ul>
                    @if (SM::check_this_method_access('certifications', 'create'))
                        <li mtd="create">
                            <a href="{{ url(SM::smAdminSlug('certifications/create')) }}">
                                Add Certification
                            </a>
                        </li>
                    @endif
                    @if (SM::check_this_method_access('certifications', 'index'))
                        <li mtd="index">
                            <a href="{{ url(SM::smAdminSlug('certifications')) }}">
                                Certification List
                            </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
    </ul>
</nav>
<span class="minifyme" data-action="minifyMenu">
    <i class="fa fa-arrow-circle-left hit"></i>
</span>
