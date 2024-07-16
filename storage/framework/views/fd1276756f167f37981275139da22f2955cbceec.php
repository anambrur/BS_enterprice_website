<?php if(isset($sliders) && count($sliders) > 0): ?>
    <?php
    $slider_change_autoplay = (int) SM::smGetThemeOption('slider_change_autoplay', 4);
    $slider_change_autoplay *= 3000;
    ?>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">

    <style>
        /* THEME: VARS */
        .slider {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }

        .slick-slide {
            height: auto;
            text-align: center;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }

        /* SLICK: ARROWS */
        .slick-custom-arrow {
            position: absolute;
            transform: translateY(-50%);
            z-index: 100;
            padding: 20px 16px;
        }

        .slick-custom-arrow:hover {}

        /* SLICK: DOTS */
        .slick-dots {
            list-style: none;
            margin: 0;
            padding: 0;
            position: absolute;
            bottom: 30px;
            left: 96%;
            transform: translateX(-50%);
            display: flex;
            align-items: center;
        }

        .slick-dots li {
            display: flex;
            align-items: center;

            margin: 0 4px;
            padding: 0;

            height: 20px;
            width: 20px;
        }

        .slick-dots button {
            background-color: rgba(255, 255, 255, 0);
            border: 1px solid #fff;
            border-radius: 50%;
            opacity: 1;
            display: block;
            height: 18px;
            width: 18px;
            outline: none;
            line-height: 0px;
            font-size: 0px;
            cursor: pointer;
        }

        .slick-dots button:hover,
        :focus {}

        .slick-active button {
            border: 0;
            height: 15px;
            width: 15px;
            background-color: #ffffff;
        }

        .slick-custom-arrow.slick-custom-arrow-right.slick-arrow {
            position: absolute;
            right: 0;
            top: 50%;
            color: #fff;
            font-size: 20px;
        }

        .slick-custom-arrow.slick-custom-arrow-left.slick-arrow {
            position: absolute;
            left: 0;
            top: 50%;
            color: #fff;
            font-size: 20px;
        }

        .slick-custom-arrow:hover {
            background: #c658d9;
            transition: all .3s linear;
            cursor: pointer;
        }

        .slick-dotted.slick-slider {
            margin-bottom: 0 !important;
        }

        :root {
            --dark-green: #9cc675;
            --dark-yellow: #e89a3d;
            --extra-light-brown: #fdf0d7;
            --light-brown: #ecd5ab;
            --dark-brown: #915b40;
            --light-yellow: #f8e3a8;
            --light-red: #f3ac99;
            --light-teal: #a6c8cc;
            --light-gray: #ddd5d6;
        }

        .single-view-content {
            background: var(--light-red);
            width: 30%;
            overflow-y: auto;
            position: relative;
        }

        .swiper-container {
            width: 100%;
            height: 100%;
            padding-top: 100px;
        }

        .btn.btn-main {
            background: var(--dark-green);
            color: #fff;
            font-size: 16px;
            font-weight: 400;
            outline: none;
            border: none;
            position: relative;
            padding: 15px 40px;
        }

        .btn.btn-main:before {
            content: '';
            width: 5px;
            background: var(--dark-brown);
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }

        .flex-box-wrap {
            display: flex;
            width: 100%;
            height: 100vh;
            flex-wrap: wrap;
            justify-content: space-between;
            z-index: 999;
        }

        .main-single-view {
            flex-basis: 500px;
            width: 70%;
        }

        .swiper-slide {
            width: 400px;
        }

        .team-info {
            padding: 0;
            list-style: none;
            position: relative;
        }

        .team-info .team-info-item {
            font-size: 22px;
            padding: 15px 30px;
            display: none;
            position: absolute;
        }

        .team-info .team-info-item.active {
            display: block;
        }

        @-webkit-keyframes team-info-item {
            from {
                opacity: 0;
                -webkit-transform: translate3d(0, 50px, 0);
            }

            to {
                opacity: 1;
                -webkit-transform: translate3d(0, 0, 0);
            }
        }

        .team-info-item.active .heading,
        .team-info-item.active .content {
            -webkit-animation-name: team-info-item;
            animation-name: team-info-item;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
            -webkit-animation-delay: 0s;
        }

        .team-info-item.active .content {
            -webkit-animation-delay: .2s;
        }

        .heading {
            margin: 0;
        }

        .content {
            font-size: 19px;
            font-weight: 300;
            line-height: 1.5;
            color: #000;
            margin-top: 15px;
        }

        .fsocial {
            list-style: none;
            padding: 0;
            display: flex;
        }

        .fsocial li {
            margin: 5px 15px;
            margin-bottom: 50px;
        }

        .fsocial li:first-child {
            margin-left: 0;
        }

        .fsocial li img {
            width: 30px;
            filter: invert(1);
        }

        .exp-time {
            list-style: none;
            border-left: 2px solid #000;
            padding-left: 20px;
            margin-left: 0px;
        }

        .exp-time li {
            position: relative;
            margin-bottom: 50px;
        }

        .exp-time li:before {
            content: '';
            height: 10px;
            width: 10px;
            background: #000;
            display: block;
            position: absolute;
            left: -26px;
        }

        .fw300 {
            font-weight: 300;
        }

        .exp-time h4,
        .exp-time h2,
        .exp-time p {
            margin: 0;
        }

        .swiper-slide:hover {
            cursor: ew-resize;
        }

        .arrow-box {
            position: fixed;
            width: 30%;
            right: 0;
            bottom: 0;
            display: flex;
            justify-content: space-between;
            background: rgba(0, 0, 0, 0.16);
            padding: 5px 50px;
        }

        .arrow-box .slideNext,
        .arrow-box .slidePrev {
            transition: all .3s;
            cursor: pointer;
        }

        .arrow-box .slidePrev:hover {
            transform: translateX(-10px);
        }

        .arrow-box .slideNext:hover {
            transform: translateX(10px);
        }

        .arrow-box svg {
            width: 30px;
        }
    </style>

    <div id="thm-mart-slideshow" class="thm-mart-slideshow">
        <div class="main-slider-section">
            <div class="container">
                <div class="row">
                    <div class="flex-box-wrap">
                        <main class="main-single-view">
                            <div class="swiper-container" dir="rtl">
                                <div class="swiper-wrapper">
                                    <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="swiper-slide">
                                            <img src="<?php echo e(asset('storage/uploads/' . $slider->image)); ?>"
                                                alt="Slider image">
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </main>
                        <aside class="single-view-content">
                            <ul class="team-info">
                                <li class="team-info-item active">
                                    <h1 class="heading">Hi, my name is Aqil </h1>
                                    <article class="content">
                                        <p>
                                            Computers have been my passion from ever. I could spend hours learning about
                                            coding and designing. However, this passion got wings when I grabbed a job
                                            as a UI/UX designer and developer. Though money cannot be totally ignored,
                                            even if it wasn’t there, I couldn’t be separated from designing and coding.
                                            I think I can totally relate to how

                                        </p>
                                        <h4>Experience</h4>
                                        <ul class="exp-time">
                                            <li>
                                                <h4 class="fw300">1-1 -2015 to 4-11-2017</h4>
                                                <h2 class="fw300">Edunuts.com</h2>
                                                <p class="lead">
                                                    Lead UI/UX Developer
                                                </p>
                                            </li>
                                            <li>
                                                <h4 class="fw300">6-11-2017 to Present</h4>
                                                <h2 class="fw300">bigly.io</h2>
                                                <p class="lead">
                                                    Lead UI/UX Developer
                                                </p>
                                            </li>
                                        </ul>


                                        <ul class="fsocial">
                                            <li>
                                                <a href="https://www.facebook.com/profile.php?id=100011049845433">
                                                    <img src="http://beeknock.com/img/facebook.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.linkedin.com/in/md-aqil-09430a109/"
                                                    target="_blank">
                                                    <img src="http://beeknock.com/img/linkedin.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://github.com/md-aqil" title="github">
                                                    <img width="35" src="http://beeknock.com/img/github-sign.svg"
                                                        alt="">
                                                </a>
                                            </li>

                                            <li>
                                                <a href="tel:7210562014" title="7210562014">
                                                    <img src="http://beeknock.com/img/whatsapp (1).svg" alt="">
                                                </a>
                                            </li>

                                        </ul>

                                    </article>

                                </li>
                                <li class="team-info-item">
                                    <h1 class="heading">Hi, my name is Aqil2 </h1>
                                    <article class="content">
                                        <p>
                                            Computers have been my passion from ever. I could spend hours learning about
                                            coding and designing. However, this passion got wings when I grabbed a job
                                            as a UI/UX designer and developer. Though money cannot be totally ignored,
                                            even if it wasn’t there, I couldn’t be separated from designing and coding.
                                            I think I can totally relate to how

                                        </p>


                                        <ul class="fsocial">
                                            <li>
                                                <a href="https://www.facebook.com/profile.php?id=100011049845433">
                                                    <img src="http://beeknock.com/img/facebook.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.linkedin.com/in/md-aqil-09430a109/"
                                                    target="_blank">
                                                    <img src="http://beeknock.com/img/linkedin.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://github.com/md-aqil" title="github">
                                                    <img width="35" src="http://beeknock.com/img/github-sign.svg"
                                                        alt="">
                                                </a>
                                            </li>

                                            <li>
                                                <a href="tel:7210562014" title="7210562014">
                                                    <img src="http://beeknock.com/img/whatsapp (1).svg" alt="">
                                                </a>
                                            </li>

                                        </ul>

                                    </article>
                                </li>
                                <li class="team-info-item">
                                    <h1 class="heading">Hi, my name is Aqil3 </h1>
                                    <article class="content">
                                        <p>
                                            Computers have been my passion from ever. I could spend hours learning about
                                            coding and designing. However, this passion got wings when I grabbed a job
                                            as a UI/UX designer and developer. Though money cannot be totally ignored,
                                            even if it wasn’t there, I couldn’t be separated from designing and coding.
                                            I think I can totally relate to how

                                        </p>

                                        <ul class="fsocial">
                                            <li>
                                                <a href="https://www.facebook.com/profile.php?id=100011049845433">
                                                    <img src="http://beeknock.com/img/facebook.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.linkedin.com/in/md-aqil-09430a109/"
                                                    target="_blank">
                                                    <img src="http://beeknock.com/img/linkedin.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://github.com/md-aqil" title="github">
                                                    <img width="35" src="http://beeknock.com/img/github-sign.svg"
                                                        alt="">
                                                </a>
                                            </li>

                                            <li>
                                                <a href="tel:7210562014" title="7210562014">
                                                    <img src="http://beeknock.com/img/whatsapp (1).svg" alt="">
                                                </a>
                                            </li>

                                        </ul>

                                    </article>
                                </li>
                                <li class="team-info-item">
                                    <h1 class="heading">Hi, my name is Aqil4 </h1>
                                    <article class="content">
                                        <p>
                                            Your Information Here....

                                        </p>
                                        <h4>Experience</h4>
                                        <ul class="exp-time">
                                            <li>
                                                <h4 class="fw300">1-1 -2015 to 4-11-2017</h4>


                                                <h2 class="fw300">Edunuts.com</h2>
                                                <p class="lead">
                                                    Lead UI/UX Developer

                                                </p>

                                            </li>
                                            <li>
                                                <h4 class="fw300">6-11-2017 to Present</h4>


                                                <h2 class="fw300">bigly.io</h2>
                                                <p class="lead">
                                                    Lead UI/UX Developer

                                                </p>

                                            </li>

                                        </ul>


                                        <ul class="fsocial">
                                            <li>
                                                <a href="https://www.facebook.com/profile.php?id=100011049845433">
                                                    <img src="http://beeknock.com/img/facebook.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.linkedin.com/in/md-aqil-09430a109/"
                                                    target="_blank">
                                                    <img src="http://beeknock.com/img/linkedin.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://github.com/md-aqil" title="github">
                                                    <img width="35" src="http://beeknock.com/img/github-sign.svg"
                                                        alt="">
                                                </a>
                                            </li>

                                            <li>
                                                <a href="tel:7210562014" title="7210562014">
                                                    <img src="http://beeknock.com/img/whatsapp (1).svg"
                                                        alt="">
                                                </a>
                                            </li>

                                        </ul>

                                    </article>
                                </li>
                                <li class="team-info-item">
                                    <h1 class="heading">Hi, my name is Aqil5 </h1>
                                    <article class="content">
                                        <p>
                                            Computers have been my passion from ever. I could spend hours learning about
                                            coding and designing. However, this passion got wings when I grabbed a job
                                            as a UI/UX designer and developer. Though money cannot be totally ignored,
                                            even if it wasn’t there, I couldn’t be separated from designing and coding.
                                            I think I can totally relate to how

                                        </p>

                                        <ul class="fsocial">
                                            <li>
                                                <a href="https://www.facebook.com/profile.php?id=100011049845433">
                                                    <img src="http://beeknock.com/img/facebook.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.linkedin.com/in/md-aqil-09430a109/"
                                                    target="_blank">
                                                    <img src="http://beeknock.com/img/linkedin.svg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://github.com/md-aqil" title="github">
                                                    <img width="35" src="http://beeknock.com/img/github-sign.svg"
                                                        alt="">
                                                </a>
                                            </li>

                                            <li>
                                                <a href="tel:7210562014" title="7210562014">
                                                    <img src="http://beeknock.com/img/whatsapp (1).svg"
                                                        alt="">
                                                </a>
                                            </li>

                                        </ul>

                                    </article>
                                </li>
                            </ul>
                            <div class="arrow-box">
                                <div class="slidePrev">
                                    <svg x="0px" y="0px" viewBox="0 0 31.494 31.494"
                                        style="enable-background:new 0 0 31.494 31.494;" xml:space="preserve">
                                        <path style="fill:#1E201D;"
                                            d="M10.273,5.009c0.444-0.444,1.143-0.444,1.587,0c0.429,0.429,0.429,1.143,0,1.571l-8.047,8.047h26.554
                                    c0.619,0,1.127,0.492,1.127,1.111c0,0.619-0.508,1.127-1.127,1.127H3.813l8.047,8.032c0.429,0.444,0.429,1.159,0,1.587
                                    c-0.444,0.444-1.143,0.444-1.587,0l-9.952-9.952c-0.429-0.429-0.429-1.143,0-1.571L10.273,5.009z" />
                                    </svg>
                                </div>
                                <div class="slideNext">
                                    <svg version="1.1" x="0px" y="0px" viewBox="0 0 31.49 31.49"
                                        style="enable-background:new 0 0 31.49 31.49;" xml:space="preserve">
                                        <path style="fill:#1E201D;"
                                            d="M21.205,5.007c-0.429-0.444-1.143-0.444-1.587,0c-0.429,0.429-0.429,1.143,0,1.571l8.047,8.047H1.111
                                        C0.492,14.626,0,15.118,0,15.737c0,0.619,0.492,1.127,1.111,1.127h26.554l-8.047,8.032c-0.429,0.444-0.429,1.159,0,1.587
                                        c0.444,0.444,1.159,0.444,1.587,0l9.952-9.952c0.444-0.429,0.444-1.143,0-1.571L21.205,5.007z" />
                                        <g>
                                    </svg>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
            <div class="nk-ovm mask-b mask-contain-bottom"></div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('.slider').slick({
                dots: true,
                speed: 1000,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 3000,
                nextArrow: '<div class="slick-custom-arrow slick-custom-arrow-right"><i class="fa fa-angle-right"></i></div>',
                prevArrow: '<div class="slick-custom-arrow slick-custom-arrow-left"><i class="fa fa-angle-left"></i></div>',
            });
        });
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<?php endif; ?>
