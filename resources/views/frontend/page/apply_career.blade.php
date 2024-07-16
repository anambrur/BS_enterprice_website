@extends("frontend.master")

@section("title", "About")

@section("content")

<?php

$title = SM::smGetThemeOption("team_banner_title");

$subtitle = SM::smGetThemeOption("team_banner_subtitle");

$bannerImage = SM::smGetThemeOption("team_banner_image");

?>


<div class="breadcrumb-option"

style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

background-attachment: scroll;

background-size: cover; " data-black-overlay="7">

<div class="container">

    <div class="row">

        <div class="col-md-12">

            <div class="cr-breadcrumb text-center">

                @empty(!$title)

                <h1>Career</h1>

                @endempty

                @if(isset($subtitle) && $subtitle != '')

                <p>{{$subtitle}}</p>

                @endif

            </div>

        </div>

    </div>

</div>

</div>

<section class="apply-carrer-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="apply-form-title">
                <h2>Apply Now</h2>
            </div>
            </div>
            
</div>
<div class="row">
    <div class="col-md-offset-2 col-md-8 ">
       
            <form action="{{route('store_career_apply')}}" method="POST" enctype="multipart/form-data" class="apply-form" style="width: 100%;">
              {{ csrf_field() }}
               <input name="car_id" value={{$slug}} type="hidden">
                 <div class="row">
                <div class="col-md-6">
                   <div class="form-group">
                    <label class="control-label" for="f-name">First Name</label>
                    <input name="f_name" autocomplete="false" type="text" class="form-control" id="f-name">
                </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                <label for="l-name" class="control-label">Last Name</label>
                <input name="l_name" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
        </div>
        </div>
        <div class="row">
                <div class="col-md-6">
                   <div class="form-group">
                    <label class="control-label" for="f-name">Gender</label>
                    <input name="gender" autocomplete="false" type="text" class="form-control" id="gender">
                </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                <label for="phone" class="control-label">Phone</label>
                <input name="phone" autocomplete="false" type="text" class="form-control" id="phone">
            </div>
        </div>
        </div>
        <div class="row">
                <div class="col-md-6">
                   <div class="form-group">
                    <label class="control-label" for="email">Email</label>
                    <input name="email" autocomplete="false" type="text" class="form-control" id="email">
                </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                <label for="pho" class="control-label">Job Category</label>
                <input name="job_category" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
        </div>
        </div>
        <div class="row">
                <div class="col-md-6">
                    <h3>Parmanent Address</h3>
                   <div class="form-group">
                    <label class="control-label" for="email">Thana</label>
                    <input name="p_thana" autocomplete="false" type="text" class="form-control" id="email">
                </div>
                <div class="form-group">
                <label for="pho" class="control-label">District</label>
                <input name="p_district" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
            <div class="form-group">
                <label for="pho" class="control-label">Division</label>
                <input name="p_division" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
            <div class="form-group">
                <label for="pho" class="control-label">Address</label>
                <textarea name="p_address" autocomplete="false" class="form-control" rows="5"></textarea>
            </div>
            </div>
            <div class="col-md-6">
                <h3>Present Address</h3>
               <div class="form-group">
                <label for="pho" class="control-label">Thana</label>
                <input name="per_thana" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
            <div class="form-group">
                <label for="pho" class="control-label">District</label>
                <input name="per_district" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
            <div class="form-group">
                <label for="pho" class="control-label">Division</label>
                <input name="per_division" autocomplete="false" type="text" class="form-control" id="l-name">
            </div>
            <div class="form-group">
                <label for="pho" class="control-label">Address</label>
                <textarea name="per_address" autocomplete="false" class="form-control" rows="5"></textarea>
            </div>
        </div>
        </div>
        <div class="row">
                <div class="col-md-6">
                   <div class="form-group">
                    <label class="control-label" for="email">Your Image</label>
                    <input name="image" autocomplete="false" type="file" class="form-control" id="image">
                </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                <label for="cv" class="control-label">Upload CV</label>
                <input name="cv" autocomplete="false" type="file" class="form-control" id="cv">
            </div>
        </div>
        </div>
        
            
                <div class="row">
                    <div class="form-group col-md-3">
                    <input type="submit" name="" class="btn btn-default career-btn" value="Submit Now">
                </div>
                </div>
           
        
    </form>
        
    </div>
</div>
</div>
</section>

@push('js')

<script type="text/javascript">

    // ------------step-wizard-------------
    $(document).ready(function () {
        $('.nav-tabs > li a[title]').tooltip();

    //Wizard
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {

        var target = $(e.target);

        if (target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {

        var active = $('.wizard .nav-tabs li.active');
        active.next().removeClass('disabled');
        nextTab(active);

    });
    $(".prev-step").click(function (e) {

        var active = $('.wizard .nav-tabs li.active');
        prevTab(active);

    });
});

    function nextTab(elem) {
        $(elem).next().find('a[data-toggle="tab"]').click();
    }
    function prevTab(elem) {
        $(elem).prev().find('a[data-toggle="tab"]').click();
    }


    $('.nav-tabs').on('click', 'li', function() {
        $('.nav-tabs li.active').removeClass('active');
        $(this).addClass('active');
    });




</script>

@endpush

@endsection