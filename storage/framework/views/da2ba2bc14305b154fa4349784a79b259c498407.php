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
            <span class="widget-icon"> <i class="fa fa-sliders"></i> </span>
            <h2><?php echo e($f_name); ?> <?php echo e(__("common.slider")); ?></h2>

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
                    <?php echo $__env->make("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>false, "table"=>"sliders"], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                    <div class="sm-form<?php echo e($errors->has('description') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('description',__("common.description")); ?>

                        <?php echo Form::textarea('description', null,['class'=>'form-control', 'placeholder'=>__("common.description")]); ?>

                        <?php if($errors->has('description')): ?>
                            <span class="help-block">
                                <strong><?php echo e($errors->first('description')); ?></strong>
                            </span>
                        <?php endif; ?>
                    </div>
                    <div class="slider_btn_row">
                        <?php if(isset($slider->extra) && count($slider->extra)>0): ?>
                            <?php $__currentLoopData = $slider->extra["button_label"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php
								$buttonLink = isset( $slider->extra["button_link"][ $key ] ) ? $slider->extra["button_link"][ $key ] : "";
								?>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="sm-form<?php echo e($errors->has('buttion[button_label][]') ? ' has-error' : ''); ?>">
                                            <?php echo Form::label('buttion[button_label][]',__("common.buttonLabel")); ?>

                                            <?php echo Form::text('buttion[button_label][]', $value,['class'=>'form-control', 'placeholder'=>__("common.buttonLabel")]); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="sm-form<?php echo e($errors->has('buttion[button_link][]') ? ' has-error' : ''); ?>">
                                            <?php echo Form::label('buttion[button_link][]',__("common.buttonLink")); ?>

                                            <?php echo Form::text('buttion[button_link][]', $buttonLink,['class'=>'form-control', 'placeholder'=>__("common.buttonLink")]); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <?php if($loop->first): ?>
                                            <a class="btn btn-primary slider_btn add_more_btn"><i
                                                        class="fa fa-plus"></i></a>
                                        <?php else: ?>
                                            <a class="btn btn-danger slider_btn remove_btn"><i class="fa fa-times"></i></a>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="sm-form<?php echo e($errors->has('buttion[button_label][]') ? ' has-error' : ''); ?>">
                                        <?php echo Form::label('buttion[button_label][]',__("common.buttonLabel")); ?>

                                        <?php echo Form::text('buttion[button_label][]', null,['class'=>'form-control', 'placeholder'=>__("common.buttonLabel")]); ?>

                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="sm-form<?php echo e($errors->has('buttion[button_link][]') ? ' has-error' : ''); ?>">
                                        <?php echo Form::label('buttion[button_link][]',__("common.buttonLink")); ?>

                                        <?php echo Form::text('buttion[button_link][]', null,['class'=>'form-control', 'placeholder'=>__("common.buttonLink")]); ?>

                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <a class="btn btn-primary slider_btn add_more_btn"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
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
            <h2><?php echo e(__("common.slider")); ?> <?php echo e(__("common.publish")); ?></h2>

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
                    <?php echo Form::label('status', __("common.slider")." ".__("common.publicationStatus")); ?>

                    <?php echo Form::select('status',['1'=>'Publish','2'=>'Pending / Draft', '3'=>'Cancel'],null,['required'=>'','class'=>'form-control']); ?>

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
                        <?php echo e($btn_name); ?> <?php echo e(__("common.slider")); ?>

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
if ( old( 'image' ) ) {
	$image = old( 'image' );
} elseif ( isset( $slider->image ) ) {
	$image = $slider->image;
} else {
	$image = '';
}
?>
<?php echo $__env->make('sm-admin/common/common/image_form',['header_name'=>'Slider', 'image'=>$image], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>