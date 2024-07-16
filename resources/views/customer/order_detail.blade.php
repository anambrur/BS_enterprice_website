<?php
   /**
    * Created by PhpStorm.
    * User: mrksohag
    * Date: 11/13/17
    * Time: 5:00 PM
    */
   ?>
@extends('frontend.master')
@section("title", "Order Detail")
@section("content")
<?php
   $title = SM::smGetThemeOption( "invoice_banner_title", 'Invoice');
   $subtitle = SM::smGetThemeOption( "invoice_banner_subtitle", 'Payment Details In One Place' );
   if (SM::smGetThemeOption("invoice_banner_image") != '') {
     $bannerImage = SM::smGetThemeOption("invoice_banner_image"); 
   }
   $bannerImage = SM::smGetThemeOption("about_banner_image");
   ?>
<!-- Breacrumb Area -->
<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;
   background-attachment: scroll;
   background-size: cover; " data-black-overlay="7">
   <div class="container">
      <div class="row">
         <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
            <div class="cr-breadcrumb text-center">
               @empty(!$title)
               <h1>{{$title}}</h1>
               @endempty
               @if(isset($subtitle) && $subtitle != '')
               <p>{{$subtitle}}</p>
               @endif 
            </div>
         </div>
      </div>
   </div>
</div>
<!--//Breacrumb Area --> 
@if(count($order)>0)
<section class="order-done-sec services-area section-padding-lg bg-white">
   <div class="container">
      <?php
         $orderId = SM::orderNumberFormat( $order );
         ?>
      @if(Session::has("orderSuccessMessage"))
      <div class="row">
         <div class="col-lg-12">
            <div class="order-done-content text-center margin-bottom45">
               <i class="fa fa-check"></i>
               <h3>{{ Session::get("orderSuccessMessage") }}</h3>
               <span class="doodle-order-input">Order ID {{ $orderId }}</span>
               <p>Thanks for being awesome ,we hope you enjoy your purchase.</p>
            </div>
         </div>
      </div>
      <?php
         Session::forget( "orderSuccessMessage" );
         Session::save();
         ?>
      @endif
      @if(request()->input('isAdmin', 0)!=1)
      <div class="row">
         <div class="col-lg-12">
            <div class="download-item-list text-right">
               <a href="{!! url("dashboard/orders/download/$order->id") !!}" class="download"
               title="Download"><i
                  class="fa fa-cloud-download"></i> Download
               Invoice </a>
               <a href="{!! url("dashboard/orders") !!}" class="download" title="Order List"><i
                  class="fa fa fa-list"></i> Order List </a>
            </div>
         </div>
      </div>
      @endif
      <div class="row">
         <div class="col-lg-12">
            <div class="invoice-table-item"
               style="width: 100%; background: #f9fdff; padding: 50px 0 50px 50px;">
               <?php
                  $sm_get_site_logo = SM::sm_get_the_src( SM::sm_get_site_logo(), 193, 78 );
                  $site_name = SM::get_setting_value( 'site_name' );
                  $orderUser = $order->user;
                  ?>
               <!-- mobile device -->
               <div class="row visible-xs">
                  <div class="col-lg-6">
                     <div class="invoice-author-information1">
                        <h1 class="ab-inv-title">
                           invoice
                        </h1>
                        <img src="{!! $sm_get_site_logo !!}" alt="{{ $site_name }}">
                        <p>
                           Invoice ID No : {{ $orderId }}
                        </p>
                        <p class="date">
                           Date : {{ date('d-m-Y', strtotime($order->created_at)) }}
                        </p>
                        <p>
                           Order Status : <?php
                              if ( $order->order_status == 1 ) {
                                echo 'Completed';
                              } else if ( $order->order_status == 2 ) {
                                echo 'Processing';
                              } else if ( $order->order_status == 3 ) {
                                echo 'Pending';
                              } else {
                                echo 'Cancel';
                              }
                              ?>
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-lg-offset-2">
                     <div class="invoice-author-information">
                        @if(count($orderUser)>0)
                        <?php
                           $flname = $orderUser->firstname . " " . $orderUser->lastname;
                           $name = trim( $flname != '' ) ? $flname : $orderUser->username;
                           $address = "";
                           $address .= ! empty( $orderUser->street ) ? $orderUser->street . ", " : "";
                           if ( strlen( $address ) > 30 ) {
                            $address .= '<br>';
                           }
                           $address .= ! empty( $orderUser->city ) ? $orderUser->city . ", " : "";
                           $address .= ! empty( $orderUser->state ) ? $orderUser->state . " - " : "";
                           $address .= ! empty( $orderUser->zip ) ? $orderUser->zip . ", " : "";
                           $address .= $orderUser->country;
                           ?>
                        <!--<img src="images/logo.png" alt="">-->
                        <p class="inv_to"> Invoice To :</p>
                        <h3>{{ $name }}</h3>
                        <p><span>Address </span>:
                           {!!  $address !!}.
                        </p>
                        <p><span>Phone </span>:
                           {{ $orderUser->mobile }}
                        </p>
                        <p><span>Email </span>:
                           {{ $order->email }}
                        </p>
                        @endif
                     </div>
                  </div>
               </div>
               <!-- desktop device -->
               <div class="row">
                  <div class="col-lg-6 hidden-xs col-sm-6">
                     <div class="invoice-author-information">
                        @if(count($orderUser)>0)
                        <?php
                           $flname = $orderUser->firstname . " " . $orderUser->lastname;
                           $name = trim( $flname != '' ) ? $flname : $orderUser->username;
                           $address = "";
                           $address .= ! empty( $orderUser->street ) ? $orderUser->street . ", " : "";
                           if ( strlen( $address ) > 30 ) {
                            $address .= '<br>';
                           }
                           $address .= ! empty( $orderUser->city ) ? $orderUser->city . ", " : "";
                           $address .= ! empty( $orderUser->state ) ? $orderUser->state . " - " : "";
                           $address .= ! empty( $orderUser->zip ) ? $orderUser->zip . ", " : "";
                           $address .= $orderUser->country;
                           ?>
                        <img src="{{ $sm_get_site_logo }}" alt="{{ $site_name }}">
                        <p class="inv_to"> Invoice To :</p>
                        <h3>{{ $name }}</h3>
                        <p><span>Address </span>:
                           {!!  $address !!}
                        </p>
                        <p><span>Phone </span>:
                           {{ $orderUser->mobile }}
                        </p>
                        <p><span>Email </span>:
                           {{ $order->email }}
                        </p>
                        @endif
                     </div>
                  </div>
                  <div class="col-lg-4 col-lg-offset-2 hidden-xs col-sm-6">
                     <div class="invoice-author-information1">
                        <h1 class="ab-inv-title hidden-xs">
                           invoice
                        </h1>
                        <p>
                           Invoice ID No : {{ $orderId }}
                        </p>
                        <p class="date">
                           Date : {{ date('d-m-Y', strtotime($order->created_at)) }}
                        </p>
                        <p>
                           Order Status : <span><?php
                              if ( $order->order_status == 1 ) {
                                echo 'Completed';
                              } else if ( $order->order_status == 2 ) {
                                echo 'Processing';
                              } else if ( $order->order_status == 3 ) {
                                echo 'Pending';
                              } else {
                                echo 'Cancel';
                              }
                              ?></span>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <?php
               $package = $order->package;
               ?>
            @if(count($package)>0)
            <div class="table-responsive hidden-xs">
               <table class="table-product-info" width="100%" border="0" cellpadding="0"
                  cellspacing="0"
                  style="width: 100%; background: #f9fdff;">
                  @if($order->package_type ==4 && count($order->detail)>0)
                  <tr style="border-bottom: 1px solid #dddddd;">
                     <td style="width: 45%; padding: 18px 0 18px 50px; text-align: center"
                        valign="top" colspan="4">
                        <h4 style="font-size: 16px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ $order->package->title }}
                        </h4>
                     </td>
                  </tr>
                  @endif
                  <tr>
                     <th style="font-size: 18px; text-align: left; padding: 15px 20px 15px 50px; text-transform: uppercase; line-height: 28px; font-weight: 500; background: #1d2d5d; color: #ffffff;">
                        Item Description
                     </th>
                     <th style="font-size: 18px; text-align: center; padding: 15px 0; text-transform: uppercase; line-height: 28px; font-weight: 500; background: #1d2d5d; color: #ffffff;">
                        Quantity
                     </th>
                     <th style="font-size: 18px; text-align: center; padding: 15px 0; text-transform: uppercase; line-height: 28px; font-weight: 500; background: #1d2d5d; color: #ffffff;">
                        Amount
                     </th>
                     <th style="font-size: 18px; text-align: center; padding: 15px 30px 15px 0; text-transform: uppercase; line-height: 28px; font-weight: 500; background: #1d2d5d; color: #ffffff;">
                        Total Price
                     </th>
                  </tr>
                  <?php
                     $orderTotal = [];
                     ?>
                  @if($order->package_type ==4 && count($order->detail)>0)
                  @foreach($order->detail as $detail)
                  <?php
                     $title = ( count( $detail->package_detail ) && $detail->package_detail->title != '' ) ? $detail->package_detail->title : "Package info ";
                     $title .= " ( Words: " . $detail->package_detail->words . " )";
                     
                     $price = ( $detail->words / $detail->package_detail->words ) * $detail->rate;
                     $total = $detail->qty * $price;
                     $orderTotal[] = $total;
                     ?>
                  <tr style="border-bottom: 1px solid #dddddd;">
                     <td style="width: 45%; padding: 18px 0 18px 50px;" valign="top">
                        <h4 style="font-size: 16px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ $title }}
                        </h4>
                        {{--
                        <p style="font-size: 14px; line-height: 24px; font-weight: 400; margin-bottom: 0; color: #575757;">--}}
                           {{--Aug 4, 2015 - Here are 50 examples of awesome invoice designsan--}}
                           {{--easily--}}
                           {{--navigable and easyes to use.
                        </p>
                        --}}
                     </td>
                     <td style="width: 13%;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ $detail->qty }}
                        </p>
                     </td>
                     <td style="width: 13%;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           ${{ number_format($price, 2) }}
                        </p>
                     </td>
                     <td style="width: 13%;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           ${{ number_format($total, 2) }}
                        </p>
                     </td>
                  </tr>
                  @endforeach
                  @else
                  <?php
                     // $rate = isset( $order->detail[0]->rate ) ? $order->detail[0]->rate : 0;
                     // $qty = isset( $order->detail[0]->qty ) ? $order->detail[0]->qty : 0;

                      $rate = $order->rate;
                     $qty =  $order->qty;
                     ?>
                  <?php
                     $total = $qty * $rate;
                     $orderTotal[] = $total;
                     ?>
                  <tr style="border-bottom: 1px solid #dddddd;">
                     <td style="width: 45%; padding: 18px 0 18px 50px;" valign="top">
                        <h4 style="font-size: 16px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ $package->title }}
                        </h4>
                        @if($package->detail[0])
                        {{ title_case($package->detail[0]->title) }} Plan
                        @endif
                     </td>
                     <td style="width: 13%; text-align: center;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ $qty }}
                        </p>
                     </td>
                     <td style="width: 13%; text-align: center;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                            {{ SM::get_setting_value('currency') }} {{ number_format($rate, 2) }}
                        </p>
                     </td>
                     <td style="width: 13%; text-align: center;" valign="middle" align="center">
                        <p style="font-size: 18px; font-weight: 600; color: #1d2d5d; line-height: 28px; margin-bottom: 0;">
                           {{ SM::get_setting_value('currency') }} {{ number_format($total, 2) }}
                        </p>
                     </td>
                  </tr>
                  @endif
               </table>
            </div>
            <!-- mobile device start-->
            <div class="mo-product-item hidden-sm hidden-md hidden-lg">
               @if($order->package_type ==4 && count($order->detail)>0)
               <h1 class="ab-item-desc-title">
                  {{ $order->package->title }}
               </h1>
               @else
               <h1 class="ab-item-desc-title">
                  Item Description
               </h1>
               @endif
               <ul>
                  <?php
                     $orderTotal = [];
                     ?>
                  @if($order->package_type ==4 && count($order->detail)>0)
                  @foreach($order->detail as $detail)
                  <?php
                     $title = ( count( $detail->package_detail ) && $detail->package_detail->title != '' ) ? $detail->package_detail->title : "Package info ";
                     $title .= " ( Words: " . $detail->package_detail->words . " )";
                     
                     $price = ( $detail->words / $detail->package_detail->words ) * $detail->rate;
                     $total = $detail->qty * $price;
                     $orderTotal[] = $total;
                     ?>
                  <li>
                     <strong class="item-desc">{{ $title }}</strong>
                     <strong> <span>Quantity</span>: {{ $detail->qty }}</strong>
                     <strong> <span> Amount </span>: ${{ number_format($price, 2) }}
                     </strong>
                     <strong> <span>Total Price </span>: ${{ number_format($total, 2) }}
                     </strong>
                  </li>
                  @endforeach
                  @else
                  <?php
                     $rate = isset( $order->detail[0]->rate ) ? $order->detail[0]->rate : 0;
                     $qty = isset( $order->detail[0]->qty ) ? $order->detail[0]->qty : 0;
                     $total = $qty * $rate;
                     $orderTotal[] = $total;
                     ?>
                  <li>
                     <strong class="item-desc">{{ $package->title }}</strong>
                     <p>
                        @if($package->detail[0])
                        {{ title_case($package->detail[0]->title) }} Plan
                        @endif
                     </p>
                     <strong> <span>Quantity</span>: {{ $qty }}</strong>
                     <strong> <span> Amount </span>: ${{ number_format($rate, 2) }}</strong>
                     <strong> <span>Total Price </span>: ${{ number_format($total, 2) }}</strong>
                  </li>
                  @endif
               </ul>
            </div>
            @endif
            <div class="total-amount-item row hidden-xs " style="background: #f9fdff">
               <div class="col-lg-7 col-sm-7">
                  <div class="left-amount-process">
                     <p>Amount in Words: <span>
                        {{ title_case(SM::sm_convert_number_to_words($order->net_total)) }}
                        {{ SM::get_setting_value('currency') }} only.
                        </span>
                     </p>
                     <p>Payment Status : <span><?php
                        if ( $order->payment_status == 1 ) {
                            echo 'Completed';
                        } else if ( $order->payment_status == 2 ) {
                            echo 'Pending';
                        } else {
                            echo 'Cancel';
                        }
                        ?></span></p>
                     <?php
                        $due = $order->paid - $order->net_total;
                        $dueSign = $due < 0 ? "-" : "+";
                        $dueSign = $due == 0 ? "" : $dueSign;
                        ?>
                     @if($due < 0)
                     <!-- <p>Due Status : <span> -->
                        <?php
                        // echo $dueSign . "$" . number_format( abs( $due ), 2 );
                        ?>
                    <!-- </span></p> -->
                     <!-- <a href="{{ url("dashboard/orders/pay/$order->id") }}">Pay Your Due</a> -->
                     @endif
                  </div>
               </div>
               <div class="col-lg-5 col-sm-5">
                  <div class="right-total-amount-process">
                     <?php
                        $orderTotalValue = array_sum( $orderTotal );
                        ?>
                     <p class="clearfix"
                        style="display: {{ $order->tax>0 || $order->discount>0 ? 'block' : 'none' }}">
                        <span class="pull-left inv-total">Sub Total    </span>:
                        <span class="pull-right ab-inv-total-price">{{ SM::get_setting_value('currency') }} {{ number_format($orderTotalValue, 2) }}</span>
                     </p>
                     @if($order->tax>0)
                     <p class="clearfix">
                        <span class="pull-left inv-total">Tax + Vat  </span>:
                        <span class="pull-right ab-inv-total-price">{{number_format($order->tax, 2)}}</span>
                     </p>
                     @endif
                     @if($order->discount>0)
                     <?php
                        $orderTotalValue -= $order->discount;
                        ?>
                     <p class="clearfix">
                        <span class="pull-left inv-total">Discount  </span>:
                        <span class="pull-right ab-inv-total-price">- {{ SM::get_setting_value('currency') }} {{ number_format($order->discount, 2)}}</span>
                     </p>
                     @endif
                     <div class="clearfix ab-total-amount">
                        <span class="pull-left">Total Amount  </span>
                        <span class="pull-right ">{{ SM::get_setting_value('currency') }} {{ number_format($order->net_total, 2) }}</span>
                     </div>
                  </div>
                  <?php
                     $invoice_signature = SM::smGetThemeOption( "invoice_signature" );
                     $invoice_approved_by_name = SM::smGetThemeOption( "invoice_approved_by_name", "Anwar Hossain" );
                     $invoice_approved_by_designation = SM::smGetThemeOption( "invoice_approved_by_designation", "Director of Development" );
                     $src = ( $invoice_signature != '' ) ? SM::sm_get_the_src( $invoice_signature ) : "images/signature.png";
                     ?>
                  <div class="author-signature-content pull-right">
                     <!-- <img src="{{ $src }}" alt="{{ $invoice_approved_by_name }}"> -->
                     <h2>{{ $invoice_approved_by_name }}</h2>
                     <h4>{{ $invoice_approved_by_name }}</h4>
                  </div>
               </div>
            </div>
            <div class="total-amount-item row visible-xs " style="background: #f9fdff">
               <div class="col-lg-12">
                  <div class="right-total-amount-process">
                     <p class="clearfix"
                        style="display: {{ $order->tax>0 || $order->discount>0 ? 'block' : 'none' }}">
                        <span class="pull-left inv-total">Sub Total    </span>:
                        <span class="pull-right ab-inv-total-price">${{ number_format($orderTotalValue, 2) }}</span>
                     </p>
                     @if($order->tax>0)
                     <p class="clearfix">
                        <span class="pull-left inv-total">Tax + Vat  </span>:
                        <span class="pull-right ab-inv-total-price">${{number_format($order->tax, 2)}}</span>
                     </p>
                     @endif
                     @if($order->discount>0)
                     <?php
                        $orderTotalValue -= $order->discount;
                        ?>
                     <p class="clearfix">
                        <span class="pull-left inv-total">Discount  </span>:
                        <span class="pull-right ab-inv-total-price"> -${{ number_format($order->discount, 2)}}</span>
                     </p>
                     @endif
                     <div class="clearfix ab-total-amount">
                        <span class="pull-left">Total Amount  </span>
                        <span class="pull-right ">${{ $order->net_total }}</span>
                     </div>
                  </div>
                  <div class="left-amount-process">
                     <p>Amount in Words: <span>
                        {{ title_case(SM::sm_convert_number_to_words($order->net_total)) }}
                        USD only.
                        </span>
                     </p>
                     <p>Payment Status : <span><?php
                        if ( $order->payment_status == 1 ) {
                            echo 'Completed';
                        } else if ( $order->payment_status == 2 ) {
                            echo 'Pending';
                        } else {
                            echo 'Cancel';
                        }
                        ?></span></p>
                     @if($due < 0)
                     <p>Due Status : <span><?php
                        echo $dueSign . "$" . number_format( abs( $due ), 2 );
                        ?></span></p>
                     <a href="{{ url("dashboard/orders/pay/$order->id") }}">Pay Your Due</a>
                     @endif
                  </div>
                  <div class="author-signature-content pull-right">
                     <img src="{{ url($src) }}" alt="{{ $invoice_approved_by_name }} Signature">
                     <h2>{{ $invoice_approved_by_name }}</h2>
                     <h4>{{ $invoice_approved_by_name }}</h4>
                  </div>
               </div>
            </div>
            <?php
               $mobile = SM::get_setting_value( 'mobile' );
               $email = SM::get_setting_value( 'email' );
               $website = SM::get_setting_value( 'website' );
               $address = SM::get_setting_value( 'address' );
               $country = SM::get_setting_value( 'country' );
               ?>
            <div class="single-table-pert-info">
               <ul>
                  <li><i class="fa fa-phone"></i> {{ $mobile }}
                  </li>
                  <li><i class="fa fa-envelope"></i> {{ $email }}
                  </li>
                  <li><i class="fa fa-globe"></i> {{ $website }}
                  </li>
                  <li><i class="fa fa-map-marker"></i> {{ $address }}, {{ $country }}
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </div>
</section>
@else
<div class="alert alert-warning">
   <i class="fa fa-warning"></i> No Order Found!
</div>
@endif
@endsection