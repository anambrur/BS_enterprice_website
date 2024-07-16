@extends('frontend.master')
@section('content')
@include('frontend.includes.slider')
    <main class="page-content">
        @include('frontend.includes.about')
        @include('frontend.includes.team2')
        @include('frontend.includes.brand')
        @include('frontend.includes.testimonial')
    </main>
@endsection