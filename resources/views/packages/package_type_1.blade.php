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
            <div class="basic-package-table ab-particular-package clearfix">
                @isset($pricing_detail[0])
                    <div class="single-pkg-table ab-first-table hidden-xs">
                        <div class="pkg-head">
                            <h3>{{ $packageInfo->pricing_detail }}</h3>
                        </div>
						<?php
						$details = is_string( $pricing_detail[0]->details ) && $pricing_detail[0]->details != '' ?
							json_decode( $pricing_detail[0]->details ) : [];
						?>
                        @if(count($details)>0)
                            @foreach($details as $detail)
                                <div class="t-dw">
                                    <div class="t-data">{!! $detail->particular_title !!}</div>
                                </div>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <div class="t-dw sub-kw">
                                            <div class="t-data"><i class="fa fa-long-arrow-right"></i>
                                                {!! $single->particular_title !!}
                                            </div>
                                        </div>
                                    @endforeach
                                @endif
                            @endforeach
                        @endif
                    </div>
                @endif

                <div class="mouse-leave-pointer">
                    @isset($pricing_detail[0])
                        <div class="single-pkg-table active particular-advnce package-hover-item">
                            <div class="pkg-head">
                                <h3>{{ $pricing_detail[0]->title }}</h3>
                                <span></span>
                                <!-- <h5>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[0]->price }}
                                    /{{SM::getPackagePaymentTypeName($pricing_detail[0]->price_type)}}</h5> -->
                                <img src="{!! asset('images/recomanded.png') !!}" alt="">
                            </div>

                            @if(count($details)>0)
                                @foreach($details as $detail)
                                    <div class="t-dw">
                                        <div class="t-data">
                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                {!! $detail->particular_title !!}
                                            </div>
                                            {!! $detail->advanced !!}
                                        </div>
                                    </div>
                                    @if(isset($detail->sub) && count($detail->sub)>0)
                                        @foreach($detail->sub as $single)
                                            <div class="t-dw">
                                                <div class="t-data sub-t-dw">
                                                    <i class="fa fa-long-arrow-right visible-xs"></i>
                                                    <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                        <i class="fa fa-long-arrow-right"></i> {!! $single->particular_title !!}
                                                    </div>
                                                    {!! $single->advanced !!}
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                @endforeach
                            @endif


                            <div class="pkg-button">
                             <button type="button" value="{{ $pricing_detail[0]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>

                            <!-- 
                                <a class="doddle-btn fill package_order_submit"
                                                       data-type="{{ $packageInfo->type }}"
                                                       href="{!! url("checkout/$packageInfo->id/".$pricing_detail[0]->id) !!}">
                                    <span></span><b></b>order now</a> -->
                            </div>
                        </div>
                    @endif
                    @isset($pricing_detail[1])
                        <div class="single-pkg-table praticular-packge-prof  package-hover-item">
                            <div class="pkg-head ">
                                <h3>{{ $pricing_detail[1]->title }}</h3>
                                <span></span>
                               <!--  <h5>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[1]->price }}
                                    /{{SM::getPackagePaymentTypeName($pricing_detail[1]->price_type)}}</h5> -->
                            </div>
							<?php
							$details = is_string( $pricing_detail[1]->details ) && $pricing_detail[1]->details != '' ?
								json_decode( $pricing_detail[1]->details ) : [];
							?>
                            @if(count($details)>0)
                                @foreach($details as $detail)
                                    <div class="t-dw">
                                        <div class="t-data">
                                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                {!! $detail->particular_title !!}
                                            </div>
                                            {!! $detail->professional !!}
                                        </div>
                                    </div>
                                    @if(isset($detail->sub) && count($detail->sub)>0)
                                        @foreach($detail->sub as $single)
                                            <div class="t-dw">
                                                <div class="t-data sub-t-dw">
                                                    <i class="fa fa-long-arrow-right visible-xs"></i>
                                                    <div class="text-muted hidden-md hidden-lg hidden-sm">
                                                        <i class="fa fa-long-arrow-right"></i> {!! $single->particular_title !!}
                                                    </div>
                                                    {!! $single->professional !!}
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                @endforeach
                            @endif
                            <div class="pkg-button">
                                <button type="button" value="{{ $pricing_detail[1]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                            <!-- 
                                <a class="doddle-btn fill package_order_submit"
                                                       data-type="{{ $packageInfo->type }}"
                                                       href="{!! url("checkout/$packageInfo->id/".$pricing_detail[1]->id) !!}">
                                    <span></span><b></b>order now</a> -->
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endif