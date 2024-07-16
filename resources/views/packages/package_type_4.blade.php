<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 11/12/17
 * Time: 9:49 AM
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
	<?php
	$pd = ( $packageInfo->pricing_detail != '' ) ? SM::sm_unserialize( $packageInfo->pricing_detail ) : array();
	$pricing_title = ( isset( $pd['pricing_title'] ) ) ? $pd['pricing_title'] : "Package Pricing Table";
	$pricing_subtitle = ( isset( $pd['pricing_subtitle'] ) ) ? $pd['pricing_subtitle'] : "software tulad ng Aldus Pagemaker ginamit ang mga bersyon";
	$pricing_calculator_title = ( isset( $pd['pricing_calculator_title'] ) ) ? $pd['pricing_calculator_title'] : "Package Price Calculator";
	$pricing_calculator_subtitle = ( isset( $pd['pricing_calculator_subtitle'] ) ) ? $pd['pricing_calculator_subtitle'] : "software tulad ng Aldus Pagemaker ginamit ang mga bersyon";
	?>
    <article>
        <div class="row ">
            <div class="col-lg-12">
                <div class="ab-section-title margin-bottom60 text-center">
                    <h1>{{ $pricing_title }}</h1>
                    <p>{{ $pricing_subtitle }}</p>
                </div>
            </div>
        </div>
        <div class="row margin-bottom80">

            <div class="col-md-6">
                <div class="ab-pkg-item clearfix">
                    <div class="ab-single-packge-table ab-content-pckg-left pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Package</div>
                        </div>

                        @foreach($pricing_detail as $detail)
                            @if($loop->index % 2 != 0)
                                @continue
                            @endif
                            <div class="ab-table-td">
                                <div class="ab-t-data">{{ $detail->title }}</div>
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-table-price pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Price
                                Per 100 words
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            @if($loop->index % 2 != 0)
                                @continue
                            @endif
                            <div class="ab-table-td">
                                <div class="ab-t-data">${{ number_format($detail->price, 2) }}</div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="ab-pkg-item clearfix">
                    <div class="ab-single-packge-table ab-content-pckg-left pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Package</div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            @if($loop->index % 2 == 0)
                                @continue
                            @endif
                            <div class="ab-table-td">
                                <div class="ab-t-data">{{ $detail->title }}</div>
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-table-price pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Price
                                Per 100 words
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            @if($loop->index % 2 == 0)
                                @continue
                            @endif
                            <div class="ab-table-td">
                                <div class="ab-t-data">${{ number_format($detail->price, 2) }}</div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>


        </div>
    </article>

    <div class="row">
        <div class="col-lg-12">
            <div class="ab-section-title margin-bottom60 text-center">
                <h1>{{ $pricing_calculator_title }}</h1>
                <p>
                    {{ $pricing_calculator_subtitle }}
                </p>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-lg-12">


            <!--- Desktop version --->
            {!! Form::open(['method'=>'get', 'url'=>url("checkout/$packageInfo->id"), "id" =>"orderForm".$mainIteration]) !!}
			<?php
			$total = 0;
			?>
            <div class="package2tableBody"
                 id="package2Desktop{{ $mainIteration }}">
                <div class="clearfix hidden-xs">
                    <div class="ab-single-packge-curcular ab-content-parti-pckg-left width30 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Packages</div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            <div class="ab-table-td">
                                <div class="ab-t-data">
                                    <input type="hidden" class="packageInfo"
                                           data-iteration="{{ $mainIteration }}"
                                           data-row="{{ $loop->index }}"
                                           data-words="{{ $detail->words }}"
                                           data-price="{{ $detail->price }}"/>
                                    <input type="checkbox"
                                           class="cb_detail_price cb_{{$mainIteration}}_{{ $loop->index }}"
                                           name="detail_id[]"
                                           value="{{ $detail->id }}"
									       <?php
									       if ( $detail->isIncluded == 1 ) {
										       echo 'checked';
									       }
									       ?>
                                           data-parent="package2Desktop{{ $mainIteration }}"
                                           id="d_cb_{{$mainIteration}}_{{ $loop->index }}">
                                    <label for="d_cb_{{$mainIteration}}_{{ $loop->index }}">{{ $detail->title }}</label>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-curcular width18 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Word Per Quantity
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            <div class="ab-table-td">
                                <input type="number"
                                       data-parent="package2Desktop{{ $mainIteration }}"
                                       class="ab-t-input package_words package_words_{{$mainIteration}}_{{ $loop->index }}"
                                       name="words[{{ $detail->id }}]" value="100">
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-curcular width13 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Quantity
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            <div class="ab-table-td">
                                <input
                                        data-parent="package2Desktop{{ $mainIteration }}"
                                        class="ab-t-input package_qty package_qty_{{$mainIteration}}_{{ $loop->index }}"
                                        name="qty[{{ $detail->id }}]"
                                        type="number" step="1" min="1" value="1">
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-curcular width13 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Total Words
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            <div class="ab-table-td">
                                <div class="ab-t-data total_words total_words_{{$mainIteration}}_{{ $loop->index }}">{{ $detail->words }}</div>
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-curcular width13 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Price
                                Per 100 words
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
                            <div class="ab-table-td">
                                <div class="ab-t-data">${{ number_format($detail->price, 2) }}</div>
                            </div>
                        @endforeach
                    </div>
                    <div class="ab-single-packge-curcular width13 pull-left">
                        <div class="ab-table-th">
                            <div class="ab-th-data">Total Price
                            </div>
                        </div>
                        @foreach($pricing_detail as $detail)
							<?php
							$price = 0;
							if ( $detail->isIncluded == 1 ) {
								$total += (float) $detail->price;
								$price = $detail->price;
							}
							?>
                            <div class="ab-table-td">
                                <div class="ab-t-data">$<span
                                            class="total_{{$mainIteration}}_{{ $loop->index }}">{{ number_format($price, 2) }}</span>
                                </div>
                            </div>
                        @endforeach
                    </div>

                </div>
                <div class="ab-footer-packge-curcular hidden-xs clearfix">
                    <div class="pkg-button pull-left">
                        {{--<a class="doddle-btn fill" href="#"><span></span><b></b>Custom order</a>--}}
                         <a class="{{ $btn_class}} doddle-btn fill" data-type="" href="{!! url("contact") !!}"> <span></span><b></b>Contact Now</a><!-- 
                        <button class="{{ $btn_class}} doddle-btn fill" data-type="2"
                                data-form="{{ "orderForm".$mainIteration }}"><span></span><b></b>order now
                        </button> -->
                    </div>
                    <div class="ab-pkg-total-value pull-right">
                        TOTAL VALUE :&nbsp; $<span
                                class="total_price_{{$mainIteration}}">{{ number_format($total, 2) }}</span>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}



            {!! Form::open(['method'=>'get', 'url'=>url("checkout/$packageInfo->id"), "id" =>"orderForm".$mainIteration]) !!}
        <!-- mobile version -->
            <div class="ab-single-pakg-table-mobile-vertion visible-xs" id="package2Mobile{{ $mainIteration }}">
                <div class="ab-single-packge-curcular">
                    <div class="ab-table-th">
                        <div class="ab-th-data">Packages</div>
                    </div>
					<?php
					$total = 0;
					?>
                    @foreach($pricing_detail as $detail)
                        <div class="ab-table-mobile">
                            <div class="ab-t-data ab-t-m">
                                <input type="hidden" class="packageInfo"
                                       data-iteration="{{ $mainIteration }}"
                                       data-row="{{ $loop->index }}"
                                       data-words="{{ $detail->words }}"
                                       data-price="{{ $detail->price }}"/>
                                <input type="checkbox"
                                       class="cb_detail_price cb_{{$mainIteration}}_{{ $loop->index }}"
                                       name="detail_id[]"
                                       value="{{ $detail->id }}"
								       <?php
								       $price = 0;
								       if ( (int) $detail->isIncluded == 1 ) {
									       $total += (float) $detail->price;
									       echo 'checked';
									       $price = $detail->price;
								       }
								       ?>
                                       data-parent="package2Mobile{{ $mainIteration }}"
                                       id="m_cb_{{$mainIteration}}_{{ $loop->index }}">
                                <label for="m_cb_{{$mainIteration}}_{{ $loop->index }}">{{ $detail->title }}</label>
                            </div>
                            <div class="ab-table-wpq">
                                <strong>Word Per Quantity</strong>
                                <input type="number"
                                       data-parent="package2Mobile{{ $mainIteration }}"
                                       class="ab-t-input package_words package_words_{{$mainIteration}}_{{ $loop->index }}"
                                       name="words[]" value="{{ $detail->words }}">
                            </div>
                            <div class="ab-table-wpq">
                                <strong>Quantity</strong>
                                <input
                                        data-parent="package2Mobile{{ $mainIteration }}"
                                        class="ab-t-input package_qty package_qty_{{$mainIteration}}_{{ $loop->index }}"
                                        name="qty[]"
                                        type="number" step="1" min="1" value="1">
                            </div>
                            <div class="ab-table-p">
                                <strong>Total Words</strong>
                                <div class="ab-t-data">{{ $detail->words }}</div>
                            </div>
                            <div class="ab-table-p">
                                <strong>Price
                                    Per 100 words
                                </strong>
                                <div class="ab-t-data">${{ number_format($detail->price,2) }}</div>
                            </div>
                            <div class="ab-table-p">
                                <strong>Total Price
                                </strong>
                                <div class="ab-t-data">$<span
                                            class="total_{{$mainIteration}}_{{ $loop->index }}">{{ number_format($price, 2) }}</span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="ab-footer-packge-curcular clearfix">
                    <div class="ab-pkg-total-value">
                        TOTAL VALUE :&nbsp; $<span
                                class="total_price_{{$mainIteration}}">{{ number_format($total, 2) }}</span>
                    </div>
                    <div class="pkg-button">
                        {{--<a class="doddle-btn fill" href="#"><span></span><b></b>Custom order</a>--}}
                         <a class="{{ $btn_class}} doddle-btn fill" data-type="" href="{!! url("contact") !!}"> <span></span><b></b>Contact Now</a><!-- 
                        <button class="{{ $btn_class}} doddle-btn fill" data-type="2"
                                data-form="{{ "orderForm".$mainIteration }}"><span></span><b></b>order now
                        </button> -->
                    </div>

                </div>
            </div>

            {!! Form::close() !!}
        </div>


    </div>
@endif
