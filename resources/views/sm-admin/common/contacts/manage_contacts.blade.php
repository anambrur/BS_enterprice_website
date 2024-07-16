@extends(('sm-admin/master'))
@section('title','Contacts')
@section('content')
@include(('sm-admin/common/media/media_pop_up'))
<section id="widget-grid" class="">

    <!-- row -->
    <div class="row">

        <!-- NEW WIDGET START -->
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget" id="">

                <header>
                    <span class="widget-icon"> <i class="fa fa-users"></i> </span>
                    <h2>Contacts list </h2>

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
                          <table id="manage_blog" class="table table-striped table-bordered data_table" width="100%">

                            <thead>
                                <tr>
                                    <th width="5">ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Subject</th>
                                    <th>Message</th> 
                                    <th>Created At</th>
                                    <th>Mail Send</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody id="dataBody">
                                @include('sm-admin.common.contacts.contacts')
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Subject</th>
                                    <th>Message</th> 
                                    <th>Created At</th>
                                    <th>Mail Send</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </tfoot>
                        </table>
                        @include('sm-admin.common.common.pagination_links', ['smPagination'=>$contacts])
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
@endsection
@section('footer_script')
 <script type="text/javascript">
        $(document).ready(function () {
            $(document).on('click', '#btn_send_mail_contact', function () {
                var payment_id = $(this).val();
                $.ajax({
                    url: '{{ route('get_send_mail_contact')}}',
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
@endsection