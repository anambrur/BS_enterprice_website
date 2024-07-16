<!-- NEW WIDGET START -->
@extends(('sm-admin/master'))
@section('title','Edit Career')
@section('content')
    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

        <!-- Widget ID (each widget will need unique ID)-->
        <div class="jarviswidget" id="wid-add-category-main" data-widget-editbutton="false"
             data-widget-deletebutton="false">
            <!-- widget options:
               usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

               data-widget-colorbutton="false"
               data-widget-editbutton="false"
               data-widget-togglebutton="false"
               data-widget-deletebutton="false"
               data-widget-fullscreenbutton="false"
               data-widget-custombutton="false"
               data-widget-collapsed="true"
               data-widget-sortable="false"

            -->
            <header>
                <span class="widget-icon"> <i class="fa fa-building"></i> </span>
                <h2>Career info</h2>

            </header>

            <!-- widget div-->
            <div>

                <!-- widget content -->
                <div class="widget-body padding-10">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="single_page_title" class="text-align-center">
                                <h1 class="header_font">
                                    <strong>{{ $career_info->title }}</strong>
                                </h1>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            Start Date: <h4>{{ $career_info->start_date }}</h4>
                        </div>
                        <div class="col-sm-6" style="text-align: right">
                            End Date: <h4>{{ $career_info->end_date }}</h4>
                        </div>

                        <div class="col-sm-12">
                            Content: <h4>{!!  $career_info->content !!}</h4>
                        </div>


                    </div>
                </div>
                <!-- end widget content -->

            </div>
            <!-- end widget div -->

        </div>
        <!-- end widget -->

    </article>
    <!-- WIDGET END -->
    <!-- NEW WIDGET START -->
@endsection