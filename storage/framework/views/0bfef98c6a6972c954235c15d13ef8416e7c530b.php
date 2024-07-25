<?php $__env->startSection('title','Add Product'); ?>
<?php $__env->startSection('content'); ?>
    <?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            <?php echo Form::open(["method"=>"post","action"=>"Admin\Common\Products@store", 'id'=>"package_form"]); ?>

            <?php echo $__env->make(("sm-admin/common/products/product_form"),
            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php echo Form::close(); ?>

        </div>
        <!-- end row -->
    </section>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer_script'); ?>
    <script>
        (function ($) {
//            packageTypeChanged(1);
        })(jQuery)
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make(('sm-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>