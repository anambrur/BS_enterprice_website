<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/12/17
 * Time: 9:37 AM
 */
?>
 <?php 
    if (Auth::check()) {
        $btn_class = 'btn_package_order';
    }else{
        $btn_class = 'loginFromOpenBtn';
    }
?>
@if($count_pricing_detail>0)
    <div class="row">
        <div class="col-lg-12">
            <div class="pkg-pricing-title text-center">
                @isset($extra->pricing_info_title)
                    <h3>{{ $extra->pricing_info_title }}</h3>
                @endisset
            </div>
        </div>
        <div class="col-lg-12">
            <div>
                <ul class="ab-package-tab text-right" role="tablist">
                    @isset($pricing_detail[0])
                        <li role="presentation" class="active"><a href="#monthly" class="doddle-btn fill"
                                                                  aria-controls="monthly" role="tab"
                                                                  data-toggle="tab"><span></span><b></b>Monthly</a>
                        </li>
                    @endif
                    @isset($pricing_detail[3])
                        <li role="presentation"><a href="#quarterly" class="doddle-btn fill"
                                                   aria-controls="quarterly" role="tab"
                                                   data-toggle="tab"><span></span><b></b>Quarterly</a></li>

                    @endif
                    @isset($pricing_detail[6])
                        <li role="presentation"><a href="#halfyearly" class="doddle-btn fill"
                                                   aria-controls="halfyearly" role="tab"
                                                   data-toggle="tab"><span></span><b></b>Half Yearly</a></li>
                    @endif
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    @isset($pricing_detail[0])
                        <div role="tabpanel" class="tab-pane active" id="monthly">
                            <div class="basic-package-table clearfix">
                                <div class="single-pkg-table first-table">
									<?php
									$spd = $pricing_detail[0];
									$details = is_string( $spd->details ) && $spd->details != '' ?
										json_decode( $spd->details ) : [];
									?>
                                    @if(count($details)>0)
                                        @foreach($details as $detail)
                                            <div class="t-dw">
                                                <div class="t-data">{{ $detail->pricing_info_title }}</div>
                                            </div>
                                        @endforeach
                                    @endif


                                </div>
                                <div class="mouse-leave-pointer">
                                    <div class="single-pkg-table package-hover-item ab-basic-particuler">
                                        <div class="pkg-head">
                                            <h3>{{ $spd->title }}</h3>
                                            <span></span>
                                            <h5>${{ $spd->price }}
                                                /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                        </div>
                                        @if(count($details)>0)
                                            @foreach($details as $detail)
                                                <div class="t-dw">
                                                    <div class="t-data">
                                                        <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                            {{ $detail->pricing_info_title }}
                                                        </div>
                                                        @isset($detail->basic)
                                                            {!!  $detail->basic !!}
                                                        @endisset
                                                    </div>
                                                </div>
                                            @endforeach
                                        @endif

                                        <div class="pkg-button">
                                            <button type="button" value="{{ $pricing_detail[0]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>

                            <!-- <a class="{{ $btn_class}} doddle-btn fill"
                                                                   data-type="{{ $packageInfo->type }}"
                                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                <span></span><b></b>order now</a>
 -->                                        </div>
                                    </div>

                                    @isset($pricing_detail[1])
										<?php
										$spd = $pricing_detail[1];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $pricing_detail[1]->details ) : [];
										?>
                                        <div class="single-pkg-table active package-hover-item particular-advnce">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                                <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->silver)
                                                                {!! $detail->silver  !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[1]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                <!-- <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a> -->
                                            </div>
                                        </div>
                                    @endif
                                    @isset($pricing_detail[2])
										<?php
										$spd = $pricing_detail[2];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $spd->details ) : [];
										?>
                                        <div class="single-pkg-table package-hover-item praticular-packge-prof">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->gold)
                                                                {!!   $detail->gold !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif


                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[2]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                <!-- 
                                                <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a> -->
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endif
                    @isset($pricing_detail[3])
                        <div role="tabpanel" class="tab-pane" id="quarterly">
                            <div class="basic-package-table clearfix">
                                <div class="single-pkg-table first-table">
									<?php
									$spd = $pricing_detail[3];
									$details = is_string( $spd->details ) && $spd->details != '' ?
										json_decode( $spd->details ) : [];
									?>
                                    @if(count($details)>0)
                                        @foreach($details as $detail)
                                            <div class="t-dw">
                                                <div class="t-data">{{ $detail->pricing_info_title }}</div>
                                            </div>
                                        @endforeach
                                    @endif


                                </div>
                                <div class="mouse-leave-pointer">
                                    <div class="single-pkg-table package-hover-item ab-basic-particuler">
                                        <div class="pkg-head">
                                            <h3>{{ $spd->title }}</h3>
                                            <span></span>
                                            <h5>${{ $spd->price }}
                                                /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                        </div>
                                        @if(count($details)>0)
                                            @foreach($details as $detail)
                                                <div class="t-dw">
                                                    <div class="t-data">
                                                        <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                            {{ $detail->pricing_info_title }}
                                                        </div>
                                                        @isset($detail->basic)
                                                            {!! $detail->basic !!}
                                                        @endisset
                                                    </div>
                                                </div>
                                            @endforeach
                                        @endif

                                        <div class="pkg-button">
                                            <button type="button" value="{{ $pricing_detail[3]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                             <!-- <a class="{{ $btn_class}} doddle-btn fill"
                                                                   data-type="{{ $packageInfo->type }}"
                                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                <span></span><b></b>order now</a> -->
                                        </div>
                                    </div>

                                    @isset($pricing_detail[4])
										<?php
										$spd = $pricing_detail[4];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $spd->details ) : [];
										?>
                                        <div class="single-pkg-table active package-hover-item particular-advnce">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                                <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->silver)
                                                                {!! $detail->silver !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[4]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                 <a class="{{ $btn_class}} doddle-btn fill" data-type="" href="{!! url("contact") !!}"> <span></span><b></b>Contact Now</a>
                                                 <!-- 
                                                <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a> -->
                                            </div>
                                        </div>
                                    @endif
                                    @isset($pricing_detail[5])
										<?php
										$spd = $pricing_detail[5];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $spd->details ) : [];
										?>
                                        <div class="single-pkg-table package-hover-item praticular-packge-prof">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->gold)
                                                                {!! $detail->gold !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif


                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[5]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                 <!-- 
                                                <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a -->>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endif
                    @isset($pricing_detail[6])
                        <div role="tabpanel" class="tab-pane" id="halfyearly">
                            <div class="basic-package-table clearfix">
                                <div class="single-pkg-table first-table">
									<?php
									$spd = $pricing_detail[6];
									$details = is_string( $spd->details ) && $spd->details != '' ?
										json_decode( $spd->details ) : [];
									?>
                                    @if(count($details)>0)
                                        @foreach($details as $detail)
                                            <div class="t-dw">
                                                <div class="t-data">{{ $detail->pricing_info_title }}</div>
                                            </div>
                                        @endforeach
                                    @endif


                                </div>
                                <div class="mouse-leave-pointer">
                                    <div class="single-pkg-table package-hover-item ab-basic-particuler">
                                        <div class="pkg-head">
                                            <h3>{{ $spd->title }}</h3>
                                            <span></span>
                                            <h5>${{ $spd->price }}
                                                /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                        </div>
                                        @if(count($details)>0)
                                            @foreach($details as $detail)
                                                <div class="t-dw">
                                                    <div class="t-data">
                                                        <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                            {{ $detail->pricing_info_title }}
                                                        </div>
                                                        @isset($detail->basic)
                                                            {!! $detail->basic !!}
                                                        @endisset
                                                    </div>
                                                </div>
                                            @endforeach
                                        @endif

                                        <div class="pkg-button">
                                            <button type="button" value="{{ $pricing_detail[6]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                             <!-- 
                                            <a class="{{ $btn_class}} doddle-btn fill"
                                                                   data-type="{{ $packageInfo->type }}"
                                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                <span></span><b></b>order now</a> -->
                                        </div>
                                    </div>

                                    @isset($pricing_detail[7])
										<?php
										$spd = $pricing_detail[7];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $spd->details ) : [];
										?>
                                        <div class="single-pkg-table active package-hover-item particular-advnce">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                                <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->silver)
                                                                {!! $detail->silver !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[7]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                 <!-- 
                                                <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a> -->
                                            </div>
                                        </div>
                                    @endif
                                    @isset($pricing_detail[8])
										<?php
										$spd = $pricing_detail[8];
										$details = is_string( $spd->details ) && $spd->details != '' ?
											json_decode( $spd->details ) : [];
										?>
                                        <div class="single-pkg-table package-hover-item praticular-packge-prof">
                                            <div class="pkg-head">
                                                <h3>{{ $spd->title }}</h3>
                                                <span></span>
                                                <h5>${{ $spd->price }}
                                                    /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                                            </div>
                                            @if(count($details)>0)
                                                @foreach($details as $detail)
                                                    <div class="t-dw">
                                                        <div class="t-data">
                                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                                {{ $detail->pricing_info_title }}
                                                            </div>
                                                            @isset($detail->gold)
                                                                {!! $detail->gold !!}
                                                            @endisset
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                            <div class="pkg-button">
                                                <button type="button" value="{{ $pricing_detail[8]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                                                 <!-- 
                                                <a class="{{ $btn_class}} doddle-btn fill"
                                                   data-type="{{ $packageInfo->type }}"
                                                   href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                                    <span></span><b></b>order now</a> -->
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endif