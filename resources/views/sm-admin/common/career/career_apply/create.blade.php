@extends(('sm-admin/master'))
@section('title','Add Career')
@section('content')
   @include(('sm-admin/common/media/media_pop_up'))
<section id="widget-grid" class="">

   <!-- row -->
   <div class="row">

      {!! Form::open(["method"=>"post","action"=>"Admin\Common\Careers@store"]) !!}
      @include(("sm-admin/common/career/form"),
      ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")])
      {!! Form::close() !!}

   </div>

   <!-- end row -->

</section>
@endsection