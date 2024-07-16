@extends(('sm-admin/master'))
@section('title','Career list')
@section('content')

    <section id="widget-grid" class="">

        <!-- row -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="page_list_wid">

                    <header>
                        <span class="widget-icon"> <i class="fa fa-pagelines"></i> </span>
                        <h2>Career list </h2>

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->
                            <input class="form-control" type="text">
                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body table-responsive">

                            <!-- this is what the user will see -->
                            <table id="manage_page" class="table table-striped table-bordered data_table" width="100%">

                                <thead>
                                <tr>
                                    <th>SL.</th>
                                    <th>Name</th>
                                    <th>Email / Phone</th>
                                    <th>Present Address</th>
                                    <th>Permanant Address</th>
                                    <th>Position</th>
                                    <th>Image</th>
                                    <th>CV</th>
                                    <th>Send Mail</th>
                                    <th class="text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody id="dataBody">
                                @include('sm-admin.common.career.career_apply.careers')
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>SL.</th>
                                    <th>Name</th>
                                    <th>Email / Phone</th>
                                    <th>Present Address</th>
                                    <th>Permanant Address</th>
                                    <th>Position</th>
                                    <th>Image</th>
                                    <th>CV</th>
                                    <th>Send Mail</th>
                                    <th class="text-center">Action</th>
                                </tr>
                                </tfoot>

                            </table>
                            @include('sm-admin.common.common.pagination_links', ['smPagination'=>$pages])

                        </div>
                        <!-- end widget content -->

                    </div>
                    <!-- end widget div -->

                </div>
                <!-- end widget -->

            </article>
            <!-- WIDGET END -->

        </div>

        <!-- end row -->

    </section>
    {{--Global Modal Open--}}
    <script type="text/javascript">
        $(document).ready(function () {
            $(document).on('click', '#btn_send_mail_career_apply', function () {
                var payment_id = $(this).val();
                $.ajax({
                    url: '{{ route('get_send_mail_career_apply')}}',
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
    {{--Global Modal Open--}}
@endsection

