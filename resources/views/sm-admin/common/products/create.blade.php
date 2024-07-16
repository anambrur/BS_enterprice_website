@extends(('sm-admin/master'))
@section('title','Add Product')
@section('content')
    @include(('sm-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::open(["method"=>"post","action"=>"Admin\Common\Products@store", 'id'=>"package_form"]) !!}
            @include(("sm-admin/common/products/product_form"),
            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
@endsection
@section('footer_script')
    <script>
        (function ($) {
//            packageTypeChanged(1);
        })(jQuery)
    </script>
@endsection