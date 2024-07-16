
<?php $__env->startSection("title","Edit Product"); ?>
<?php $__env->startSection("content"); ?>
    <?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            <?php echo Form::model($product_info,["method"=>"post","action"=>["Admin\Common\Products@update", $product_info->id], 'id'=>"package_form"]); ?>

            <?php echo $__env->make(("sm-admin/common/products/product_form"),
            ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php echo Form::close(); ?>


        </div>
        <!-- end row -->
    </section>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer_script'); ?>
    <script>
        (function ($) {
//            packageTypeChanged(<?php echo $product_info->type ?>);
        })(jQuery)
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("sm-admin.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>