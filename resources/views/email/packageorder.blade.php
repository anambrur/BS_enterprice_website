@extends("email.email_master")
@section("content")
<h1 style="font-weight: 500; font-size: 24px; color: #1d2d5d; line-height: 27px;">Dear <strong>{{ $info->username }}</strong></h1>
<p>
Thank you for your recent order of <strong>{{$info->package_title}} - ({{ $info->pack_title }})</strong> sandals from our spring/summer collection. We know you have many choices when it comes to selecting manufacturers and products. We appreciate your brand loyalty and the unique ways you feature our footwear within your store. We greatly value your business and look forward to your review of our fall/winter boot collection.</p>

Best Regards,

(YOUR NAME HERE)

<!--     <h1 style="font-weight: 500; font-size: 24px; color: #1d2d5d; line-height: 27px;">Thank you
        for Order Our Service.</h1>
    <p>Your job apply has been confirmed. If at any time you wish to stop receiving our
        newsletter, you can click on the 
        {{-- <a target="_blank" href="{!! url('unsubscribe/'.urlencode($info->email)) !!}">Unsubscribe</a> link in the bottom of newsletter. --}}
    </p> -->
    <p>
        Thank you again!
    </p>
@endsection