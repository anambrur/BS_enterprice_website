 <?php
 $teamTitle    = SM::smGetThemeOption( "team_title" );
 $teamSubtitle = SM::smGetThemeOption( "team_subtitle" );
 $teams        = SM::smGetThemeOption( "teams" );
 $teamCount    = count( $teams );
 $class        = isset( $class ) ? $class : '';
 $is_home      = isset( $is_home ) ? $is_home : 0;

 $count = 0;

 ?>
 <!-- Team Area -->
 <section class="team-area section-padding-lg bg-grey">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
                <div class="section-title text-center">
                    <h2>{{ $teamTitle }}</h2>
                    <p>{{ $teamSubtitle }}</p>
                </div>
            </div>
        </div>
        <div class="row team-wrap justify-content-center">
            <div class="col-12">
                <div class="testimonial-wrap testimonial-style-1 testimonial-slider-active cr-slider-dots-1">
                    <!-- Single Team --> 
                    @foreach($teams as $key => $team) 
                    <div class="col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="single-team single-team-style-2">
                            <div class="team-thumb">
                                <a href="team-details.html">
                                    <img src="{!! SM::sm_get_the_src($team["team_image"], 370, 400) !!}" alt="{{ $team["title"] }}"> 
                                </a>
                            </div>
                            <div class="team-content text-center">
                                <div class="team-conetnt-info">
                                    <h5>
                                        <a href="#">{{ $team["title"] }}</a>
                                    </h5>
                                    @empty(!$team["designation"])
                                    <h6>{{ $team["designation"] }}</h6>
                                    @endif 
                                </div>
                                <div class="team-social-icons">
                                    <ul>
                                        @empty(!$team["facebook"])
                                        <li class="facebook">
                                            <a target="_blank" href="{{ $team["facebook"] }}">
                                                <i class="bi bi-facebook"></i>
                                            </a>
                                        </li>
                                        @endif
                                        @empty(!$team["twitter"])
                                        <li class="twitter">
                                            <a target="_blank" href="{{ $team["twitter"] }}">
                                                <i class="bi bi-twitter-bird"></i>
                                            </a>
                                        </li>
                                        @endif
                                        @empty(!$team["google_plus"])
                                        <li class="google-plus">
                                            <a target="_blank" href="{{ $team["google_plus"] }}">
                                                <i class="bi bi-google"></i>
                                            </a>
                                        </li>
                                        @endif
                                        @empty(!$team["linkedin"])
                                        <li class="linkedin">
                                            <a target="_blank" href="{{ $team["linkedin"] }}">
                                                <i class="bi bi-linkedin"></i>
                                            </a>
                                        </li>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> 
                    @endforeach 
                    <!--// Single Team -->
                </div>
            </div>
        </div>
    </div>
 </section>
<!--// Team Area -->
