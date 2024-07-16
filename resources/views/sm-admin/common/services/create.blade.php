@extends(('sm-admin/master'))
@section('title','Add Services')
@section('content')
    @include(('sm-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::open(["method"=>"post","action"=>"Admin\Common\Services@store","id"=>"add_front_user_form"]) !!}
            @include(("sm-admin/common/services/services_form"),
            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
    @section('footer_script')

@endsection
@endsection