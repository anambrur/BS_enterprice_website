<?php
    $testimonialTitle = SM::smGetThemeOption("testimonial_title");
    $testimonialSubTitle = SM::smGetThemeOption("testimonial_subtitle");
    $testimonials = SM::smGetThemeOption("testimonials");
?>

<section class="testimonial-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12  col-lg-12  col-12 ">
                <div class="section-title text-center">
                    <h2 class="testimonial-title">{{ $testimonialTitle }}</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="testimonial-wrap testimonial-style-1 testimonial-slider-active cr-slider-dots-1">
                    @foreach($testimonials as $testimonial)
                        <div class="testimonial text-center">
                            <div class="testimonial-thumb">
                                <img src="{!! SM::sm_get_the_src($testimonial["testimonial_image"]) !!}"  alt="{{ $testimonial["title"] }}">
                            </div>
                            <div class="testimonial-content">
                                @empty(!$testimonial["description"])
                                    <p>{{ $testimonial["description"] }}</p>
                                @endif
                                <div class="testimonial-author">
                                    <h6>{{ $testimonial["title"] }}</h6>
                                    <p>{{ $testimonial["company_name"] }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
