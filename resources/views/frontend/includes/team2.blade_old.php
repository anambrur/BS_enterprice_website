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

 <section class="team-area  service-section wow slideInUp">
 	<div class="section-bg">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
					<div class="section-title text-center">
						<h2 class="team-title"> Products </h2>
						<!-- <p class="team-subtitle">{{ $teamSubtitle }}</p> -->
					</div>
				</div>
			</div>
			<div class="row team-wrap justify-content-center">
				<?php
				$isHomePage = url('/new_home_page');
				$Request_url=Request::url();
				?>
				@foreach($teams as $key => $team)
				@if($team['department'] == 'operational')
				<?php
					if ($key==4) {
						if ( $isHomePage==$Request_url) {
							break;
						}
					}
					if($isHomePage == 4)
				?>

				<div class="col-lg-3 col-md-3 col-sm-12 col-12">
					<div class="single-team single-team-style-2">
						<div class="team-thumb"> 
							<img src="{!! SM::sm_get_the_src($team["team_image"], 370, 400) !!}" alt="{{ $team["title"] }}" style="margin: 0 auto;display: block;">
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
				<?php $count++; ?>
				@endif
				@endforeach
			</div>
		</div>
	</div>
 </section>