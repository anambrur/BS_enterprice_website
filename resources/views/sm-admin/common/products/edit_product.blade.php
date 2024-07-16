@extends("sm-admin.master")
@section("title","Edit Product")
@section("content")
    @include(('sm-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::model($product_info,["method"=>"post","action"=>["Admin\Common\Products@update", $product_info->id], 'id'=>"package_form"]) !!}
            @include(("sm-admin/common/products/product_form"),
            ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
            {!! Form::close() !!}

        </div>
        <!-- end row -->
    </section>
@endsection
@section('footer_script')
    <script>
        (function ($) {
//            packageTypeChanged(<?php echo $product_info->type ?>);
        })(jQuery)
    </script>
@endsection