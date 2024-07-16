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
				<div class="col-xl-12 col-lg-12 col-12">
					<div class="section-title text-center">
						<h2 class="team-title"> Products Category </h2>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<?php
				// foreach($categories as $row){
				// 	echo $row->title.'<br/>';
				// }
				$isHomePage = url('/new_home_page');
				$Request_url=Request::url();
				?>
				@foreach($categories as $key => $team)
				
                <a href="{{url('productview/'.$team->slug)}}">
				<div class="col-lg-3 col-md-3 col-sm-12 col-12">
					<div class="single-team single-team-style-2">
						<div class="team-thumb"> 
							<img src="{!! SM::sm_get_the_src($team->image) !!}" style="margin: 0 auto;display: block;">
						</div>
						<div class="team-content text-center">
							<div class="team-conetnt-info">
								<h5>
									<a href="{{url('productview/'.$team->slug)}}">{{ $team["title"] }}</a>
								</h5>
								@empty(!$team["designation"])
								<h6>{{ $team["designation"] }}</h6>
								@endif
							</div>
						</div>
					</div>
				</div>
				</a>
				<?php $count++; ?>
				@endforeach
			</div>
		</div>
	</div>
 </section>



 



