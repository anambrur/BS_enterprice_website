<?php $__env->startSection('title','Admin Slider list'); ?>
<?php $__env->startSection('content'); ?>

<?php
$edit_slider = SM::check_this_method_access('sliders', 'edit_slider') ? 1 : 0;
$slider_status_update = SM::check_this_method_access('sliders', 'slider_status_update') ? 1 : 0;
$delete_slider = SM::check_this_method_access('sliders', 'delete_slider') ? 1 : 0;
$per = $edit_slider + $delete_slider;
?>
<section id="widget-grid" class="">

   <!-- row -->
   <div class="row">

      <!-- NEW WIDGET START -->
      <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

         <!-- Widget ID (each widget will need unique ID)-->
         <div class="jarviswidget" id="slider_list_wid">
            <!-- widget options:
               usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

               data-widget-colorbutton="false"
               data-widget-editbutton="false"
               data-widget-togglebutton="false"
               data-widget-deletebutton="false"
               data-widget-fullscreenbutton="false"
               data-widget-custombutton="false"
               data-widget-collapsed="true"
               data-widget-sortable="false"

            -->
            <header>
               <span class="widget-icon"> <i class="fa fa-comments"></i> </span>
               <h2><?php echo e(__("common.slider")); ?></h2>

            </header>

            <!-- widget div-->
            <div>

               <!-- widget edit box -->
               <div class="jarviswidget-editbox">
                  <!-- This area used as dropdown edit box -->
                  <input class="form-control" type="text">
               </div>
               <!-- end widget edit box -->

               <!-- widget content -->
               <div class="widget-body">

                  <!-- this is what the user will see -->
                  <table id="manage_blog" class="table table-striped table-bordered data_table" width="100%">

                     <thead>
                        <tr>
                           <th>ID</th>
                           <th>Title</th>
                           <th>Image</th>
                           <?php if ($slider_status_update != 0): ?>
                              <th class="text-center">Status</th>
                           <?php endif; ?>
                           <?php if ($per != 0): ?>
                              <th class="text-center">Action</th>
                           <?php endif; ?>
                        </tr>
                     </thead>
                     <tbody id="dataBody">
                     <?php echo $__env->make('sm-admin.common.slider.slider_list', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                     </tbody>
                     <tfoot>
                        <tr>
                           <th>ID</th>
                           <th>Title</th>
                           <th>Image</th>
                           <?php if ($slider_status_update != 0): ?>
                              <th class="text-center">Status</th>
                           <?php endif; ?>
                           <?php if ($per != 0): ?>
                              <th class="text-center">Action</th>
                           <?php endif; ?>
                        </tr>
                     </tfoot>

                  </table>
                  <?php echo $__env->make('sm-admin.common.common.pagination_links', ['smPagination'=>$sliders], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>




               </div>
               <!-- end widget content -->

            </div>
            <!-- end widget div -->

         </div>
         <!-- end widget -->

      </article>
      <!-- WIDGET END -->

   </div>

   <!-- end row -->

</section>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('sm-admin/master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>