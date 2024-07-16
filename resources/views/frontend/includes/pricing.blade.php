 <section class="pricing-area section-padding-lg bg-white">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
                <div class="section-title text-center">
                    <h2>Our Pricing</h2>
                    <h6>Karbar Pricing</h6>
                </div>
            </div>
        </div>

        <div class="row justify-content-center cr-pricebox-gallery">

            <!-- Single Price box -->
            <div class="col-lg-4 col-md-6">
                <article class="cr-pricebox">
                    <h6>Primary</h6>
                    <h4>It’s Totally Free For This Item</h4>
                    <ul>
                        <li>Unlimited Storage</li>
                        <li>Contrary to popular belief</li>
                        <li>Unlimited download</li>
                        <li>500 GB hard disk space</li>
                    </ul>
                    <a href="#" class="cr-btn cr-btn-sm cr-btn-round">
                        <span>Buy Now</span>
                    </a>
                </article>
            </div>
            <!--// Single Price box -->

            <!-- Single Price box -->
            <div class="col-lg-4 col-md-6">
                <article class="cr-pricebox is-active">
                    <h6>Secondary</h6>
                    <h4>Per Month $500 Only This Item</h4>
                    <ul>
                        <li>Unlimited Storage</li>
                        <li>Contrary to popular belief</li>
                        <li>Unlimited download</li>
                        <li>500 GB hard disk space</li>
                    </ul>
                    <a href="#" class="cr-btn cr-btn-sm cr-btn-round">
                        <span>Buy Now</span>
                    </a>
                </article>
            </div>
            <!--// Single Price box -->

            <!-- Single Price box -->
            <div class="col-lg-4 col-md-6">
                <article class="cr-pricebox">
                    <h6>Premium</h6>
                    <h4>Per Month $1000 Only This Item</h4>
                    <ul>
                        <li>Unlimited Storage</li>
                        <li>Contrary to popular belief</li>
                        <li>Unlimited download</li>
                        <li>500 GB hard disk space</li>
                    </ul>
                    <a href="#" class="cr-btn cr-btn-sm cr-btn-round">
                        <span>Buy Now</span>
                    </a>
                </article>
            </div>
            <!--// Single Price box -->

        </div>
    </div>
</section>

<?php
    $step1_image = SM::smGetThemeOption( "step1_image", "" );
    $step1_title = SM::smGetThemeOption( "step1_title", "" );
    $step1_description = SM::smGetThemeOption( "step1_description", "" );
    $step2_image = SM::smGetThemeOption( "step2_image", "" );
    $step2_title = SM::smGetThemeOption( "step2_title", "" );
    $step2_description = SM::smGetThemeOption( "step2_description", "" );
    $step3_image = SM::smGetThemeOption( "step3_image", "" );
    $step3_title = SM::smGetThemeOption( "step3_title", "" );
    $step3_description = SM::smGetThemeOption( "step3_description", "" );
    $countPackage = count( $packages );
    ?>
    @if($countPackage>0)
        @foreach($packages as $packageInfo)
            <?php
            $mainIteration = $loop->iteration;
            ?>
            <section class="common-section  @if($loop->iteration%2==0){{ 'bg-gray2' }}@endif package-section section-{{$mainIteration}}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ab-page-title text-center">
                                <h3><span>{{ $packageInfo->title }}</span></h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="package-pheader sm-content">
                                <?php
                                echo stripslashes( $packageInfo->description );
                                $pricing_detail = $packageInfo->detail;
                                $count_pricing_detail = count( $pricing_detail );
                                $detail = SM::sm_unserialize( $packageInfo->pricing_detail );
                                $pricing_title = ( isset( $detail['pricing_title'] ) && $detail['pricing_title'] != '' ) ? $detail['pricing_title'] : 'Website Content Writing';
                                ?>
                            </div>
                        </div>
                    </div>
                     @include('packages.package_type_6', ['packageInfo'=>$packageInfo, 'mainIteration'=>$mainIteration]) 

                </div>
            </section>
        @endforeach
    @endif