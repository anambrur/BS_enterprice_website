@extends("frontend.master")

@section("title", "About")

@section("content")

    <?php

    $title = SM::smGetThemeOption("team_banner_title");

    $subtitle = SM::smGetThemeOption("team_banner_subtitle");

    $bannerImage = SM::smGetThemeOption("team_banner_image");

    ?>



    <!-- Breacrumb Area -->

    <div class="breadcrumb-option"

         style="background:url( {!! SM::sm_get_the_src( $bannerImage ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

                 background-attachment: scroll;

                 background-size: cover; " data-black-overlay="7">

        <div class="container">

            <div class="row">

                <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">

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

    <!--//Breacrumb Area -->





    <!-- Team Area -->

    <section class="team-area section-padding-lg bg-grey">

        <div class="container">
            <div class="row ">

                <!-- Single Team -->

                <div class="col-md-12">
                    <div class="jobs-content-box">
                         <p>{!! $careerDetail->content  !!}</p>
                   

                    <a href="{{url('/career/apply/'.$careerDetail->id)}}" id="btn_career_apply" class="btn btn-success btn-circle" style="color: #fff;"><i class="fa fa-plus" aria-hidden="true"></i> Apply Now</a>
                   <!--  <button id="btn_career_apply" value="{{ $careerDetail->id }}" class="btn btn-success btn-circle" style="color: #fff;"><i class="fa fa-plus" aria-hidden="true"></i> Apply Now</button>
                    </div> -->

                </div>

                <!--// Single Team -->

            </div>

        </div>



    </section>


    <!--// Team Area -->

@push('js')

    <script type="text/javascript">

    $(document).ready(function () {

        $(document).on('click', '#btn_career_apply', function () {

            var payment_id = $(this).val();

            $.ajax({

                url: '{{ route('get_career_apply')}}',

                method: 'GET',

                data: {payment_id: payment_id},

                success: function (data) {

                    console.log(data);

                    $('#employee_detailR').html(data);

                    $('#dataModalR').modal('show');

                }

            });

        });

    });

</script>

@endpush

@endsection