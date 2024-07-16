
<?php $__env->startSection("content"); ?>
    <h1 style="font-weight: 500; font-size: 24px; color: #1d2d5d; line-height: 27px;">Thank you
        for subscribe to newsletter.</h1>
    <p>Your subscription has been confirmed. If at any time you wish to stop receiving our
        newsletter, you can click on the <a target="_blank" href="<?php echo url('unsubscribe/'.urlencode($info->email)); ?>">Unsubscribe</a> link in the bottom of newsletter.
    </p>
    <p>
        Thank you again!
    </p>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("email.email_master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>