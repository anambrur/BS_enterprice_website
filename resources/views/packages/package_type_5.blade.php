<style>
    .ab-single-organic-head h1 {
        font-size: 22px;
    }
    .ab-single-organic-head {
    padding: 20px 0px 1px; 
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

		<?php
		$subtitle = SM::sm_unserialize( $packageInfo->pricing_detail );
		?>
        @isset($pricing_detail[0])
            <div class="col-lg-4 col-sm-4">
                <div class="ab-single-organic-package">
                    <div class="ab-single-organic-head p-padding0 text-center">
                        <h3>{{ $pricing_detail[0]->title }}</h3>
                         <h1>{{ SM::get_setting_value('currency') }} {{ $pricing_detail[0]->price }}
                            /{{SM::getPackagePaymentTypeName($pricing_detail[0]->price_type)}}</h1>

                        <!-- <h1>${{ $pricing_detail[0]->price }}</h1> -->
                        @isset($subtitle['basic_pricing_subtitle'])
                            <p>
                                {{ $subtitle['basic_pricing_subtitle'] }}
                            </p>
                        @endif

                    </div>
					<?php
					$details = is_string( $pricing_detail[0]->details ) && $pricing_detail[0]->details != '' ?
						json_decode( $pricing_detail[0]->details ) : [];
					?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->basic }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->basic !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" value="{{ $pricing_detail[0]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                        <!-- 
                        <a class="{{ $btn_class}} doddle-btn fill"
                           data-type="{{ $packageInfo->type }}"
                           href="{!! url("checkout/$packageInfo->id/".$pricing_detail[0]->id) !!}">
                            <span></span><b></b>order now</a> -->
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[1])
			<?php
			$spd = $pricing_detail[1];
			?>
            <div class="col-lg-4 col-sm-4">
                <div class="ab-single-organic-package ab-single-organic-package-second">
                    <div class="ab-single-organic-head p-padding0 text-center">
                        <h3>{{ $spd->title }}</h3>
                         <h1>{{ SM::get_setting_value('currency') }} {{ $spd->price }}
                            /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h1>
                        <!-- <h1>${{ $spd->price }}</h1> -->
                        <p>{{ $subtitle['silver_pricing_subtitle'] }}
                        </p>
                        <img src="{{ asset('images/recomanded.png') }}" alt="Recommended">
                    </div>
					<?php
					$details = is_string( $spd->details ) && $spd->details != '' ?
						json_decode( $spd->details ) : [];
					?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->silver }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->silver !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" value="{{ $pricing_detail[1]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>

                         <!-- 
                        <a class="{{ $btn_class}} doddle-btn fill"
                           data-type="{{ $packageInfo->type }}"
                           href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                            <span></span><b></b>order now</a> -->
                    </div>
                </div>
            </div>
        @endif
        @isset($pricing_detail[2])
			<?php 
			$spd = $pricing_detail[2];
			?>
            <div class="col-lg-4 col-sm-4">
                <div class="ab-single-organic-package ab-single-organic-package-third">
                    <div class="ab-single-organic-head p-padding0 text-center">
                        <h3>{{ $spd->title }}</h3>
                         <h1>{{ SM::get_setting_value('currency') }} {{ $spd->price }}
                            /{{SM::getPackagePaymentTypeName($spd->price_type)}}</h1>
                        <!-- <h1>${{ $spd->price }}</h1> -->
                        <p>{{ $subtitle['gold_pricing_subtitle'] }}</p>
                    </div>
					<?php
					$details = is_string( $spd->details ) && $spd->details != '' ?
						json_decode( $spd->details ) : [];
					?>
                    @if(count($details)>0)
                        @foreach($details as $detail)
                            <div class="organic-phage-content text-center">
                                <h4 class="phage-title">{{ $detail->gold }}</h4>
                                @if(isset($detail->sub) && count($detail->sub)>0)
                                    @foreach($detail->sub as $single)
                                        <p>
                                            {!! $single->gold !!}
                                        </p>
                                    @endforeach
                                @endif
                            </div>
                        @endforeach
                    @endif
                    <div class="pkg-button ab-organic-btn text-center">
                        <button type="button" value="{{ $pricing_detail[2]->id }}" class="{{ $btn_class}} doddle-btn fill"><span></span><b></b>Order Now</button>
                         <!-- 
                        <a class="{{ $btn_class}} doddle-btn fill"
                           data-type="{{ $packageInfo->type }}"
                           href="{!! url("checkout/$packageInfo->id/".$spd->id) !!}">
                            <span></span><b></b>order now</a> -->
                    </div>
                </div>
            </div>
        @endif
    </div>
@endif
