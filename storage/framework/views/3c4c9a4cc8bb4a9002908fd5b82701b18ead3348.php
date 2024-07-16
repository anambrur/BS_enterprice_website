<?php $__env->startSection('title','Edit Profile'); ?>
<?php $__env->startSection('content'); ?>
   <?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

   <section id="widget-grid" class="">
      <!-- row -->
      <div class="row">
         <?php echo Form::model($user,["method"=>"post","url"=>SM::smAdminSlug("update_profile")]); ?>

         <?php echo $__env->make(('sm-admin/common/users/user_form'),['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
         <?php echo Form::close(); ?>

         <script type="text/javascript">
             $(document).ready(function () {
                 $("#username").attr("disabled",true);
                 $("#email").attr("disabled",true);
                 $("#role_id").attr("disabled",true);
                 $("#status").attr("disabled",true);
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make(('sm-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>