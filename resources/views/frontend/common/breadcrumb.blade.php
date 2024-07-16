<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $image ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

        background-attachment: scroll;

        background-size: cover; " data-black-overlay="7">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="cr-breadcrumb">

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

<!--// Breacrumb Area -->

 {{-- @if((isset($isBreadcrumbEnable) && $isBreadcrumbEnable) || !isset($isBreadcrumbEnable))

<div class="breadcrumb-option"  style="background:url( {!! SM::sm_get_the_src( $image ) !!}) no-repeat scroll center center;background-repeat: no-repeat;

        background-attachment: scroll;

        background-size: cover; " data-black-overlay="7">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="cr-breadcrumb">

                      <ul>

                        <li><a href="{{url("")}}">Home</a></li>

                        @if(isset($pagination))

                            @foreach($pagination as $pg)

                                @if(isset($pg["segment"]))

                                    <li><a href="{{url($pg["segment"])}}">{{$pg['title']}}</a></li>

                                @else

                                    <li>{{$pg['title']}}</li>

                                @endif

                            @endforeach

                        @endif

                    </ul>

                </div>

            </div>

        </div>

    </div>

</div>

 @endif --}}