@extends('layouts.frontend.master')
@section('content')
<div style="background-color: #FFF; padding-left: 30px;" id="wrapper">
 <div class="row">
    <div class="col-lg-12">
       <h1 class="page-header" style="text-align: center;">Page Not Found!</h1>
    </div>
 </div>
 <div class="row">
    <h1>
       <p class="text-center middle" style="color:#F79331;">404!
    </h1>
    </p>
    <div class="row">
       <h3>
          <p class="text-center">Sorry! The page you requested cannot be found</p>
       </h3>
    </div>
    <div class="row">
       <br><br> 
       <div class="col-md-5"></div> 
       <div class="col-md-1">
          <a href="{{url('/')}}" type="button" class="btn btn-success" style="width: 140%;">Go Back</a>
       </div>
       <div class="col-md-5"></div>
    </div>
    <div class="row" style="margin-top:100px;">
       <div class="span12 footer" style="background-color: #818285;text-align: center;">
          <p style="color: #fff;"> For support, please dial our hotline 02-9615632 or write to us on info@dprescription.com </p>
       </div>
       <!-- /.col-lg-12 --> 
    </div>
    <!-- /.row --> 
 </div>
 <!-- /#page-wrapper --> 
</div>

@endsection