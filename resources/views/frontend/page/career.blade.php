@extends("frontend.master")

@section("title", "Career -")

@section("content")

    <style>

        table, td, th {

            text-align: center;

        }

    </style>

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

    <!--//Breacrumb Area -->



    <?php

    $teamTitle = SM::smGetThemeOption("team_title");

    $teamSubtitle = SM::smGetThemeOption("team_subtitle");

    $teams = SM::smGetThemeOption("teams");

    $teamCount = count($teams);

    $class = isset($class) ? $class : '';

    $is_home = isset($is_home) ? $is_home : 0;



    $count = 0;



    ?>

    <!-- Team Area -->

    <section class="team-area section-padding-lg bg-grey">

        <div class="container">
            <div class="row ">

                <!-- Single Team -->

                

                   

                        

                        @forelse($careers as $key=> $career)
                        <div class=" col-md-6">
                            <div class="jobs-post-box">
                                <a href="career/detail/{{ $career->slug }}"><h3>    {{ $career->title }}</h3></a>
                                <h4><span>Deadline : </span> {{ $career->end_date }}</h4>
                                <!-- <button type="button" id="btn_career_apply" value="{{ $career->id }}" class="btn btn-success btn-circle"><i class="fa fa-plus" aria-hidden="true"></i> Apply Now</button> -->
                                <a class="btn btn-default career-btn" href="career/detail/{{ $career->slug }}">View Details</a>
                            </div>
                            <!-- <tr>

                                <td>{{ ++$key }}</td>

                                <td><a href="career/detail/{{ $career->slug }}"><strong></strong></a></td>

                                <td></td>

                                <td><a href="career/detail/{{ $career->slug }}"><strong>View</strong></a></td>

                                <td>

                                    

                                </td>

                            </tr> -->
 </div>

                            @empty

                           

                                <p><div style="color: red; font-weight: bold; font-size: 16px;">  SORRY! No Data Found.</div></p>

                            

                        @endforelse

                      

               
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

                    $('#employee_detailR').html(data);

                    $('#dataModalR').modal('show');

                }

            });

        });

    });

</script>

@endpush

@endsection