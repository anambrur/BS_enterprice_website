@extends(('sm-admin/master'))
@section('title','Add Customer')
@section('content')
    @include(('sm-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::open(["method"=>"post","route"=>"saveCustomer","id"=>"add_front_user_form"]) !!}
            @include(("sm-admin/common/customers/user_form"),
            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
@endsection