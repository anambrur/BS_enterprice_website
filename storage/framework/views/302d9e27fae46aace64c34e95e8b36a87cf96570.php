<?php $__env->startSection('title','Edit Slider'); ?>
<?php $__env->startSection('content'); ?>
    <?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            <?php echo Form::model($slider,["method"=>"patch","route"=>["updateSlider",$slider->id]]); ?>

            <?php echo $__env->make("sm-admin.common/slider/slider_form",
            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php echo Form::close(); ?>

            <script type="text/javascript">
                (function ($) {
                    $('#title').val('<?php echo $slider->title; ?>');
                    $('#subtitle').val('<?php echo $slider->subtitle; ?>');
                    $('#status').val('<?php echo $slider->status; ?>');
                })(jQuery)
            </script>
        </div>
        <!-- end row -->
    </section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('sm-admin/master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>