<style>
    .ab-single-organic-head h1 {
        font-size: 22px;
    }
    .ab-single-organic-head {
    padding: 20px 0px 1px; 
}
.margin_buttom{
    margin-bottom: 40px;
}
</style>
<?php 
    if (Auth::check()) {
        $btn_class = 'btn_package_order';
    }else{
        $btn_class = 'loginFromOpenBtn';
    }
?>
@if($count_pricing_detail>0)
    <div class="row clearfix">
        <div class="col-lg-12">
            <div class="pkg-pricing-title text-center">
                @isset($extra->pricing_info_title)
                    <h3>{{ $extra->pricing_info_title }}</h3>
                @endisset
            </div>
        </div>
        <br>
        <br>
        <br>
        <?php
        $subtitle = SM::sm_unserialize($packageInfo->pricing_detail);
        ?>
        @isset($pricing_detail[0])
            <div class="margin_buttom col-lg-3 col-sm-6">
                <div class="ab-single-organic-package">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $pricing_detail[0]->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[0]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[0]->price_type)}}</h1>

                        {{--<h3>{{ $pricing_detail[0]->title }}</h3>--}}
                        {{--<h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[0]->price }}</h1>--}}
                        @isset($subtitle['plan1_pricing_subtitle'])
                            <p>
                                {{ $subtitle['plan1_pricing_subtitle'] }}
                            </p>
                        @endif

                    </div>
                    <?php
                    $details = is_string($pricing_detail[0]->details) && $pricing_detail[0]->details != '' ?
                        json_decode($pricing_detail[0]->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan1 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan1 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">                        
                     <button type="button" value="{{ $pricing_detail[0]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now
                     </button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[1])

            <div class="margin_buttom col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-fourth">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $pricing_detail[1]->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[1]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[1]->price_type)}}</h1>

                        @isset($subtitle['plan2_pricing_subtitle'])
                            <p>
                                {{ $subtitle['plan2_pricing_subtitle'] }}
                            </p>
                        @endif
                        <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                    </div>
                    <?php
                    $details = is_string($pricing_detail[1]->details) && $pricing_detail[1]->details != '' ?
                        json_decode($pricing_detail[1]->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan2 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan2 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" id="btn_package_order" value="{{ $pricing_detail[1]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[2])
            <?php
            $spd = $pricing_detail[2];
            ?>
            <div class="margin_buttom col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-second">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[2]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[2]->price_type)}}</h1>
                        <p>{{ $subtitle['plan3_pricing_subtitle'] }}</p>
                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan3 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan3 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" id="btn_package_order" value="{{ $pricing_detail[2]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[3])
            <?php
            $spd = $pricing_detail[3];
            ?>
            <div class="margin_buttom col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-third">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[4]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[3]->price_type)}}</h1>
                        <p>{{ $subtitle['plan4_pricing_subtitle'] }}</p>
                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan4 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan4 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                       <button type="button" id="btn_package_order" value="{{ $pricing_detail[3]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif

        @isset($pricing_detail[4])
            <?php
            $spd = $pricing_detail[4];
            ?>
            <div class="col-lg-3 col-sm-6">
                <div class="ab-single-organic-package">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $pricing_detail[4]->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[4]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[4]->price_type)}}</h1>
                        <p>{{ $subtitle['plan5_pricing_subtitle'] }}</p>

                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan5 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan5 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" id="btn_package_order" value="{{ $pricing_detail[4]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[5])
            <?php
            $spd = $pricing_detail[5];
            ?>
            <div class="col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-fourth">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[5]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[5]->price_type)}}</h1>
                        <p>{{ $subtitle['plan6_pricing_subtitle'] }}
                        </p>
                        <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan6 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan6 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" id="btn_package_order" value="{{ $pricing_detail[5]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[6])
            <?php
            $spd = $pricing_detail[6];
            ?>
            <div class="col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-second">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[6]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[6]->price_type)}}</h1>
                        <p>{{ $subtitle['plan7_pricing_subtitle'] }}</p>
                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan7 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan7 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                      <button type="button" id="btn_package_order" value="{{ $pricing_detail[6]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[7])
            <?php
            $spd = $pricing_detail[7];
            ?>
            <div class="col-lg-3 col-sm-6">
                <div class="ab-single-organic-package ab-single-organic-package-third">
                    <div class="ab-single-organic-head text-center">
                        <h3>{{ $spd->title }}</h3>
                        <span></span>
                        <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[7]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[7]->price_type)}}</h1>
                        <p>{{ $subtitle['plan8_pricing_subtitle'] }}</p>
                    </div>
                    <?php
                    $details = is_string($spd->details) && $spd->details != '' ?
                        json_decode($spd->details) : [];
                    ?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->plan8 }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->plan8 !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                       <button type="button" id="btn_package_order" value="{{ $pricing_detail[7]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                    </div>
                </div>
            </div>
        @endif


    </div>
@endif