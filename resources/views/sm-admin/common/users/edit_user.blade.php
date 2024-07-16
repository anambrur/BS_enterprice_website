@extends(('sm-admin/master'))
@section('title','Edit user')
@section('content')
   @include(('sm-admin/common/media/media_pop_up'))

<section id="widget-grid" class="">
   <!-- row -->
   <div class="row">
      {!! Form::model($user,["method"=>"patch","route"=>["updateUser",$user->id]]) !!}
      @include(('sm-admin/common/users/user_form'),['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
      {!! Form::close() !!}
      <script type="text/javascript">
          $(document).ready(function () {
              $("#username").attr("disabled",true);
              $("#email").attr("disabled",true);
              if ($("#country").length > 0) {
                  $("#country").val('<?php echo $user->country; ?>');
                      <?php if($user->country!=''): ?>
                  var selectedCountryIndex = $("#country").find('option:selected').attr('data-id');
                  var state =$("#country").attr('data-state');
                  change_state(selectedCountryIndex, state);
                  <?php endif; ?>
              }
              if ($("#state").length > 0) {
                  $("#state").val('<?php echo $user->state; ?>');
              }
          });
      </script>
   </div>
   <!-- end row -->
</section>
@endsection