 <?php
    $teamTitle = SM::smGetThemeOption("team_title");
    $teamSubtitle = SM::smGetThemeOption("team_subtitle");
    $teams = SM::smGetThemeOption("teams");
    $teamCount = count($teams);
    $class = isset($class) ? $class : '';
    $is_home = isset($is_home) ? $is_home : 0;

    $count = 0;

    ?>
    <!-- Team Area -->
    <section class="team-area section-padding-lg bg-grey">
        <div style="margin-bottom: 35px;" class="container">
            
            <div class="row">
                <div class="col-md-12">
                    @foreach($teams as $team)
                        @if($team['department'] == $slug)
                            <?php  $management = $team['department'] ?>
                        @endif
                    @endforeach
                    <div class="pkg-pricing-title text-center">
                        <h3>{{$management}} Team</h3>
                    </div>
                </div>
            </div>
            <div class="row team-wrap justify-content-center">
                <!-- Single Team -->
                @foreach($teams as $team)
                    @if($team['department'] == $slug)
                        <!-- <div class="col-lg-3 col-md-6 col-sm-12 col-12"> -->
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="single-team single-team-style-2">
                                <div class="team-thumb">
                                    <a href="#">
                                        <img src="{!! SM::sm_get_the_src($team["team_image"], 370, 400) !!}"
                                             alt="{{ $team["title"] }}">
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
                @endif
            @endforeach
            <!--// Single Team -->
            </div>
        </div>
        
       
    </section>
    <!--// Team Area -->