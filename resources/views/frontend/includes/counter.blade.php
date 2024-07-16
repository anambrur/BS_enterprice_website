<?php

$achievement_title = SM::smGetThemeOption( "achievement_title", "" );

$achievement_description = SM::smGetThemeOption( "achievement_description", "" );

$achievement_image = SM::smGetThemeOption( "achievement_image", "" );

$total_active_client = SM::smGetThemeOption( "total_active_client", 50 );

$total_success_rate = SM::smGetThemeOption( "total_success_rate", 100 );

$total_commitment = SM::smGetThemeOption( "total_commitment", 30 );

$total_project = SM::smGetThemeOption( "total_project", 98 );

?>

<style type="text/css">

    .plus_counter::after{

        content: '+';

    }

    .percent_counter::after{

        content: '%';

    }

</style>



<!-- Counter Area -->

<div class="counter-area section-padding-lg">
    <div class="container">
        @empty(!$achievement_title && !$achievement_description)
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-12">
                <div class="section-title text-center">
                    @empty(!$achievement_title)
                        <h2 class="team-title">{{ $achievement_title }}</h2>
                    @endempty
                    <!-- @empty(!$achievement_description)
                        <p class="team-subtitle">{!! strip_tags($achievement_description, "<br><span><i><b>") !!}</p>
                    @endempty -->
                </div>
            </div>
        </div>
        @endempty
        <div class="counter-area-inner counter-style-2">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                    <div class="counter text-center">
                        <h1 class="plus_counter counter-active">{{ $total_active_client }}</h1> 
                        <h6>Total Supplier</h6>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                    <div class="counter text-center">
                        <h1 class="plus_counter counter-active">{{ $total_success_rate }}</h1> 
                        <h6>Total Partner</h6>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                    <div class="counter text-center">
                        <h1 class="plus_counter counter-active">{{ $total_commitment }}</h1> 
                        <h6>Total Employee</h6>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                    <div class="counter text-center">
                        <h1 class="percent_counter counter-active">{{ $total_project }}</h1> 
                        <h6>SUCCESS RATE</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--// Counter Area -->