<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 8/12/17
 * Time: 9:59 AM
 */
?>
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-slider-main" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-sliders"></i> </span>
            <h2><?php echo e($f_name); ?> <?php echo e(__('common.certifictions')); ?></h2>

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
            <div class="widget-body padding-10">
                <div class="row">
                    <?php echo $__env->make('sm-admin.common.common.title_n_slug', [
                        'isEnabledSlug' => false,
                        'table' => 'certifications',
                    ], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                    <div class="sm-form<?php echo e($errors->has('description') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('description', __('common.description')); ?>

                        <?php echo Form::textarea('description', $certification[0]->description ?? null, ['class' => 'form-control', 'placeholder' => __('common.description')]); ?>

                        <?php if($errors->has('description')): ?>
                            <span class="help-block">
                                <strong><?php echo e($errors->first('description')); ?></strong>
                            </span>
                        <?php endif; ?>
                    </div>


                </div>
            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->  

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-user-publish" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2><?php echo e(__('common.certifictions')); ?> <?php echo e(__('common.publish')); ?></h2>

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
            <div class="widget-body padding-10">
                <?php
				$permission = SM::current_user_permission_array();
				if (SM::is_admin() || isset( $permission ) && isset( $permission['sliders']['slider_status_update'] ) && $permission['sliders']['slider_status_update'] == 1)
				{
				?>
                <div class="form-group<?php echo e($errors->has('status') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('status', __('common.certifictions') . ' ' . __('common.publicationStatus')); ?>

                    <?php echo Form::select('status', ['1' => 'Publish', '2' => 'Pending / Draft', '3' => 'Cancel'], null, [
                        'required' => '',
                        'class' => 'form-control',
                    ]); ?>

                    <?php if($errors->has('status')): ?>
                        <span class="help-block">
                            <strong><?php echo e($errors->first('status')); ?></strong>
                        </span>
                    <?php endif; ?>
                </div>
                <?php
				}
				?>



                <div class="form-group">
                    <button class="btn btn-success btn-block" type="submit">
                        <i class="fa fa-save"></i>
                        <?php echo e($btn_name); ?> <?php echo e(__('common.certifictions')); ?>

                    </button>
                </div>

            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
<?php

if (old('image')) {
    $image = old('image');
} elseif (isset($certification[0]->image)) {
    $image = $certification[0]->image;
} else {
    $image = '';
}
?>
<?php echo $__env->make('sm-admin/common/common/image_form', ['header_name' => 'Certifictions', 'image' => $image], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
