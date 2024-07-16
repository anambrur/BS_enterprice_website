<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <?php if($errors->any()): ?>
                <div class="alert alert-danger">
                    <ul>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php if(Session::has("flash_message")): ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-warning margin-top-20 s_w_message" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <i class="fa fa-warning"></i> <strong>Warning!</strong> <?php echo e(Session::get("flash_message")); ?>

                </div>
            </div>
        </div>
    </div>
    <?php
    Session::forget("flash_message");
    Session::save();
    ?>
<?php endif; ?>
<?php if(Session::has("w_message")): ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-warning margin-top-20 s_w_message" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <i class="fa fa-warning"></i> <strong>Warning!</strong> <?php echo e(Session::get("w_message")); ?>

                </div>
            </div>
        </div>
    </div>
    <?php
    Session::forget("w_message");
    Session::save();
    ?>
<?php endif; ?>
<?php if(Session::has("s_message")): ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-success margin-top-20 s_w_message">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <i class="fa fa-check"></i> <strong>Success!</strong> <?php echo e(Session::get("s_message")); ?>

                </div>
            </div>
        </div>
    </div>
    <?php
    Session::forget("s_message");
    Session::save();
    ?>
<?php endif; ?>
<?php if(Session::has("status")): ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-success margin-top-20 s_w_message">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <i class="fa fa-check"></i> <strong>Success!</strong> <?php echo e(Session::get("status")); ?>

                </div>
            </div>
        </div>
    </div>
    <?php
    Session::forget("status");
    Session::save();
    ?>
<?php endif; ?>
<?php $__env->startPush('script'); ?>
    <script>
        window.setTimeout(function () {
            $(".s_w_message").fadeTo(500, 0).slideUp(500, function () {
                $(this).remove();
            });
        }, 4000);
    </script>
<?php $__env->stopPush(); ?>