@extends(('sm-admin/master'))
@section('title','Edit Services')
@section('content')
   @include(('sm-admin/common/media/media_pop_up'))

<section id="widget-grid" class="">
   <!-- row -->
   <div class="row">
      {!! Form::model($user,["method"=>"patch","route"=>["updateServices",$user->id]]) !!}
     @include(("sm-admin/common/services/services_form"),
     ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
      {!! Form::close() !!}

   </div>
   <!-- end row -->
</section>
@endsection