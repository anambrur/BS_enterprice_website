@extends(('sm-admin/master'))
@section('title','Add Page')
@section('content')
    @include(('sm-admin/common/media/media_pop_up'))
	<?php

	use App\SM\SM_Front;
	use App\SM\SM_Admin;
	?>
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::model($page_info,["method"=>"PATCH","action"=>["Admin\Common\Page@update_page",$page_info->id]]) !!}
            @include(("sm-admin/common/page/page_form"),
            ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
@endsection