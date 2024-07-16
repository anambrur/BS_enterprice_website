@extends("sm-admin.master")
@section("title","Edit Tag")
@section("content")
    @include(('sm-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::model($tag_info,["method"=>"PATCH","action"=>["Admin\Common\Tags@update",$tag_info->id]]) !!}
            @include(("sm-admin/common/tag/tag_form"),
            ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
@endsection