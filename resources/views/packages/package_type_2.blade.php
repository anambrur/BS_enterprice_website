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
        <div class="basic-package-table clearfix">

            @isset($pricing_detail[0])
            <div class="single-pkg-table first-table">
                <?php
                $spd = $pricing_detail[0];
                $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                ?>
                @if(count($details)>0)
                @foreach($details as $detail)
                <div class="t-dw">
                    <div class="t-data">{{ $detail->pricing_info_title }}</div>
                </div>
                @endforeach
                @endif
            </div>
            @endif
            <div class="mouse-leave-pointer">
                @isset($pricing_detail[0])
                <div class="single-pkg-table package-hover-item ab-basic-particuler">

                    <div class="pkg-head">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h5>{{ SM::get_setting_value('currency') }} {{ $spd->price }} /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                    </div>
                    @if(count($details)>0)
                    @foreach($details as $detail)
                    <div class="t-dw">
                        <div class="t-data">
                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                {{ $detail->pricing_info_title }}
                            </div>
                            @isset($detail->basic)
                            {{ $detail->basic }}
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
                                               <span></span><b></b>order now</a> -->
                    </div>
                </div>
                @endif
                @isset($pricing_detail[1])
                <?php
                $spd = $pricing_detail[1];
                $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                ?>
                <div class="single-pkg-table active package-hover-item particular-advnce">
                    <div class="pkg-head">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h5>{{ SM::get_setting_value('currency') }} {{ $spd->price }} /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
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
                            {{ $detail->silver }}
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
                $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                ?>
                <div class="single-pkg-table package-hover-item praticular-packge-prof">
                    <div class="pkg-head">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h5>{{ SM::get_setting_value('currency') }} {{ $spd->price }} /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h5>
                    </div>

                    @if(count($details)>0)
                    @foreach($details as $detail)
                    <div class="t-dw">
                        <div class="t-data">
                            <div class="text-muted hidden-md hidden-lg hidden-sm">
                                {{ $detail->pricing_info_title }}
                            </div>
                            @isset($detail->gold)
                            {{ $detail->gold }}
                            @endisset
                        </div>
                    </div>
                    @endforeach
                    @endif
                    <div class="pkg-button">
                        <button type="button" value="{{ $pricing_detail[2]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                         <!-- <a class="{{ $btn_class}} doddle-btn fill"
                                               data-type="{{ $packageInfo->type }}"
                                               href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                                               <span></span><b></b>order now</a> -->
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endif
