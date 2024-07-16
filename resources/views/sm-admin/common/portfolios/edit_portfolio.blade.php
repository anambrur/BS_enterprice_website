@extends(('sm-admin/master'))

@section('title','Edit Gellary')

@section('content')

   @include(('sm-admin/common/media/media_pop_up'))



<section id="widget-grid" class="">

   <!-- row -->

   <div class="row">

      {!! Form::model($blog_info,["method"=>"patch","route"=>["updatePortfolio",$blog_info->id]]) !!}

     @include(("sm-admin/common/portfolios/portfolio_form"),

     ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])

      {!! Form::close() !!}



   </div>

   <!-- end row -->

</section>

@endsection