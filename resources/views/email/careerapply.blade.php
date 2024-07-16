@extends("email.email_master")
@section("content")
    <h1 style="font-weight: 500; font-size: 24px; color: #1d2d5d; line-height: 27px;">Thank you
        for Job Apply.</h1>
    <p>Your job apply has been confirmed. If at any time you wish to stop receiving our
        newsletter, you can click on the 
        {{-- <a target="_blank" href="{!! url('unsubscribe/'.urlencode($info->email)) !!}">Unsubscribe</a> link in the bottom of newsletter. --}}
    </p>
    <p>
        Thank you again!
    </p>
@endsection