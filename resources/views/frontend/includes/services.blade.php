 <!-- Services Area -->

 <?php

$home_service_title = SM::smGetThemeOption( "home_service_title", "" );

$home_service_subtitle = SM::smGetThemeOption( "home_service_subtitle", "" );

$services = SM::smGetThemeOption( "services", array() );

?>

@if(count($services)>0)



  <section class="services-area section-padding-lg bg-grey">

    <div class="container">



        <div class="row">

            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">

                <div class="section-title text-center">

                    <h2>{{ $home_service_title }}</h2>

                    <p>{!! strip_tags($home_service_subtitle, "<br><span><i><b>") !!}</p> 

                </div>

            </div>

        </div>



        <div class="row justify-content-center">

            @foreach($services as $service)

                <?php

                    $title = isset( $service["title"] ) ? $service["title"] : "";

                    $description = isset( $service["description"] ) ? $service["description"] : "";

                    $link = isset( $service["link"] ) ? $service["link"] : "";

                    $class = isset( $service["class"] ) ? $service["class"] : "";

                    $service_image = isset( $service["service_image"] ) ? $service["service_image"] : "";

                ?>

            <!-- Signle Service -->

            <div class="col-lg-4 col-md-6 col-12">

             <a href="{!! $link !!}">

                <div class="service service-style-2 text-center">

                    <div class="service-icon">

                       <!-- <img src="{!! SM::sm_get_the_src($service_image, 110, 115) !!}" alt="{{ $title }}"> -->

                        <span>

                            <i class="{!! $class !!}"></i>

                        </span>

                        <span>

                            <i class="{!! $class !!}"></i>

                        </span>

                    </div>

                    <div class="service-content"> 

                        @empty(!$title)                        

                        <h4>{{ $title }}</h4>                      

                         @endempty

                        <p style="color: #777777;">{!! strip_tags($description, "<br><span><i><b>") !!} </p>

                            <a href="{!! $link !!}" class="cr-btn">

                                    <span>Read more</span>

                                </a>

                                

                            <!-- <a style="color: #ddd; margin-top: 12px;" class="btn btn-primary" href="{!! $link !!}">Read more</a> -->

                    </div>

                </div>

                </a>

            </div>

            <!--// Signle Service -->

            @endforeach

        </div>

    </div>

</section>

@endif

<!--// Services Area -->