

<?php $__env->startSection('title','Add Gallery'); ?>

<?php $__env->startSection('content'); ?>

    <?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    <section id="widget-grid" class="">

        <!-- row -->

        <div class="row">

            <?php echo Form::open(["method"=>"post","action"=>"Admin\Common\Portfolios@store","id"=>"add_front_user_form"]); ?>


            <?php echo $__env->make(("sm-admin/common/portfolios/portfolio_form"),

            ['f_name'=>__("common.add"), 'btn_name'=>__("common.save")], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

            <?php echo Form::close(); ?>


        </div>

        <!-- end row -->

    </section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make(('sm-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>