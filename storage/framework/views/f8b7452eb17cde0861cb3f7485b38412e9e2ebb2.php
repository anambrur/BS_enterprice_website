<?php if(isset($sliders) && count($sliders)>0): ?>
<?php
$slider_change_autoplay = (int)SM::smGetThemeOption("slider_change_autoplay", 4);
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
            text-align:center;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        }

        /* SLICK: ARROWS */
        .slick-custom-arrow {
            position: absolute;
            transform: translateY(-50%);
            z-index:100;
            padding:20px 16px;
        }
        .slick-custom-arrow:hover{
            
        }
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
            display:flex;
            align-items:center; 

            margin:0 4px;
            padding:0;

            height: 20px;
            width: 20px;
        }
        .slick-dots button {
            background-color:rgba(255,255,255,0);
            border: 1px solid #fff;
            border-radius:50%;
            opacity: 1;
            display: block;
            height: 18px;
            width: 18px;
            outline: none;
            line-height: 0px;
            font-size: 0px;
            cursor: pointer;
        }
        .slick-dots button:hover, :focus {
            
            }
        .slick-active button{
            border: 0;
            height: 15px;
            width: 15px;
            background-color:#ffffff;
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
        .slick-dotted.slick-slider{
            margin-bottom: 0 !important;
        }
        
    </style>

    <div id="thm-mart-slideshow" class="thm-mart-slideshow">
        <div class="main-slider-section">
            <div class="site">
                <div class="slider">
                    <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="slick-slide" >
                            <img src="<?php echo SM::sm_get_the_src($slider->image, 1920, 932); ?>" width=100%; alt="">
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>            
            
    <script>

        $(document).ready(function(){
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
