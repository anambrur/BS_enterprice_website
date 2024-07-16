<?php $__env->startSection('content'); ?>
<?php echo $__env->make('frontend.includes.slider', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <main class="page-content">
        <?php echo $__env->make('frontend.includes.about', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('frontend.includes.team2', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('frontend.includes.brand', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('frontend.includes.testimonial', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </main>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>