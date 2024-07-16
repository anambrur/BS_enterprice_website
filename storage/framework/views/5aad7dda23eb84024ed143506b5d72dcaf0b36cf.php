<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-front-user-main" data-widget-editbutton="false"
         data-widget-deletebutton="false">
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
            <span class="widget-icon"> <i class="fa fa-user"></i> </span>
            <h2><?php echo e($f_name); ?> <?php echo e(__("user.user")); ?></h2>

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
                    <div class="col-sm-6">
                        <div class="sm-form <?php echo e($errors->has('username') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('username',__("user.username")); ?>

                            <?php echo Form::text('username', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("user.username")]); ?>

                            <?php if($errors->has('username')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('username')); ?></strong>
                                 </span>
                            <?php endif; ?>
                            <span class="displayNone red username_wr">
                                 <strong>Username already exist!</strong>
                              </span>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('email') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('email',__("user.email")); ?>

                            <?php echo Form::text('email', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("user.email")]); ?>

                            <?php if($errors->has('email')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('email')); ?></strong>
                                 </span>
                            <?php endif; ?>
                            <span class="displayNone red email_wr">
                                 <strong>Email already exist!</strong>
                            </span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('password') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('password',__("user.password")); ?>

                            <?php echo Form::password('password', ['class'=>'form-control', 'placeholder'=>__("user.password")]); ?>

                            <?php if($errors->has('password')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('password')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('password_confirmation') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('password_confirmation',__("user.passwordConfirmation")); ?>

                            <?php echo Form::password('password_confirmation', ['class'=>'form-control', 'placeholder'=>__("user.passwordConfirmation")]); ?>

                            <?php if($errors->has('password_confirmation')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('password_confirmation')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('mobile') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('mobile',__("user.mobile")); ?>

                            <?php echo Form::text('mobile', null,['id'=>'mobile','required'=>'','class'=>'form-control', 'placeholder'=>__("user.mobile")]); ?>

                            <?php if($errors->has('mobile')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('mobile')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('mobile2') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('mobile2',__("user.mobile2")); ?>

                            <?php echo Form::text('mobile2', null,['id'=>'mobile2','class'=>'form-control', 'placeholder'=>__("user.mobile2")]); ?>

                            <?php if($errors->has('mobile2')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('mobile2')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('skype') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('skype',__("user.skype")); ?>

                            <?php echo Form::text('skype', null,['id'=>'skype','class'=>'form-control', 'placeholder'=>__("user.skype")]); ?>

                            <?php if($errors->has('skype')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('skype')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="sm-form<?php echo e($errors->has('whats_app') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('whats_app',__("user.whatsapp")); ?>

                            <?php echo Form::text('whats_app', null,['id'=>'whats_app','class'=>'form-control', 'placeholder'=>__("user.whatsapp")]); ?>

                            <?php if($errors->has('whats_app')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('whats_app')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
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
            <h2>User Publish</h2>

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
                <div class="sm-form<?php echo e($errors->has('firstname') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('firstname',__("user.firstname")); ?>

                    <?php echo Form::text('firstname', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("user.firstname")]); ?>

                    <?php if($errors->has('firstname')): ?>
                        <span class="help-block">
                                    <strong><?php echo e($errors->first('firstname')); ?></strong>
                                 </span>
                    <?php endif; ?>
                </div>

                <div class="sm-form<?php echo e($errors->has('lastname') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('lastname',__("user.lastname")); ?>

                    <?php echo Form::text('lastname', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("user.lastname")]); ?>

                    <?php if($errors->has('lastname')): ?>
                        <span class="help-block">
                                    <strong><?php echo e($errors->first('lastname')); ?></strong>
                                 </span>
                    <?php endif; ?>
                </div>


                <div class="form-group smart-form">
                    <label class="toggle">
						<?php
						$gender = ( isset( $user->gender ) && $user->gender == "Male" ) ? true : false;
						?>
                        <?php echo Form::checkbox('gender',"Male", $gender); ?>

                        <i data-swchon-text="Male" data-swchoff-text="Female"></i>Gender
                    </label>
                </div>
                <br>
                <div class="form-group<?php echo e($errors->has('role_id') ? ' has-error' : ''); ?>">
					<?php
					$rolesArray = [];
					if ( count( $roles ) ) {
						foreach ( $roles as $role ) {
							$rolesArray[ $role->id ] = $role->name;
						}
					}
					?>
                    <?php echo Form::label('role_id', 'Role'); ?>

                    <?php echo Form::select('role_id',$rolesArray, null,
                    ['required'=>'','class'=>'form-control']); ?>

                    <?php if($errors->has('role_id')): ?>
                        <span class="help-block">
                     <strong><?php echo e($errors->first('role_id')); ?></strong>
                  </span>
                    <?php endif; ?>
                </div>
                <div class="form-group<?php echo e($errors->has('status') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('status', 'Admin User Publication Status'); ?>

                    <?php echo Form::select('status',['1'=>'Publish','2'=>'Pending / Draft', '3'=>'Cancel'],null,['required'=>'','class'=>'form-control']); ?>

                    <?php if($errors->has('status')): ?>
                        <span class="help-block">
                     <strong><?php echo e($errors->first('status')); ?></strong>
                  </span>
                    <?php endif; ?>
                </div>

                <div class="form-group">
                    <button class="btn btn-success btn-block" type="submit">
                        <i class="fa fa-save"></i>
                        <?php echo e($btn_name); ?> User
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


<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-user-contact" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-user"></i> </span>
            <h2><?php echo e(__("user.contactInfo")); ?></h2>

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
                <div class="col-sm-6">
                    <div class="sm-form<?php echo e($errors->has('street') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('street',__("user.street")); ?>

                        <?php echo Form::text('street', null,['class'=>'form-control', 'placeholder'=>__("user.street")]); ?>

                        <?php if($errors->has('street')): ?>
                            <span class="help-block">
                                    <strong><?php echo e($errors->first('street')); ?></strong>
                                 </span>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="sm-form<?php echo e($errors->has('zip') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('zip',__("user.zip")); ?>

                        <?php echo Form::number('zip', null,['class'=>'form-control', 'placeholder'=>__("user.zip")]); ?>

                        <?php if($errors->has('zip')): ?>
                            <span class="help-block">
                                    <strong><?php echo e($errors->first('zip')); ?></strong>
                        </span>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-4">
					<?php
					$cn = array();
					$countries = SM::$countries;
					$i = 1;
					foreach ( $countries as $country_name ) {
						//                                 if (in_array($i, array(17, 18, 19, 20)))
						//                                 {
						$cn[ $country_name ] = $country_name;
						//                                 }
						$i ++;
					}
					?>
                    <div class="form-group <?php echo e($errors->has('country') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('country', __("user.country")); ?>

                        <select name="country" id="country" class="form-control country p_complete" data-state="state"
                                required="" data-onload="<?php echo isset( $country ) ? $country : "" ?>">
                            <option value="">Select Your Country</option>
							<?php
							$countries = SM::$countries;
							$i = 1;
							foreach ($countries as $country_name)
							{
							//                                 if (in_array($i, array(17, 18, 19, 20)))
							//                                 {
							?>
                            <option value="<?php echo $country_name; ?>"
                                    data-id="<?php echo $i; ?>"><?php echo $country_name; ?></option>
							<?php
							//                                 }
							$i ++;
							}
							?>
                        </select>
                        <?php if($errors->has('country')): ?>
                            <span class="help-block">
                             <strong><?php echo e($errors->first('country')); ?></strong>
                          </span>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="sm-form<?php echo e($errors->has('city') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('city',__("user.city")); ?>

                        <?php echo Form::text('city', null,['class'=>'form-control', 'placeholder'=>__("user.city")]); ?>

                        <?php if($errors->has('city')): ?>
                            <span class="help-block">
                                <strong><?php echo e($errors->first('city')); ?></strong>
                             </span>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group <?php echo e($errors->has('state') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('state', __("user.state")); ?>

                        <select required="" name="state" id="state" class="form-control state p_complete" required=""
                                data-onload="<?php echo isset( $state ) ? $state : ""; ?>">
                            <option value="#">Select State / Province</option>
                        </select>
                        <?php if($errors->has('state')): ?>
                            <span class="help-block">
                             <strong><?php echo e($errors->first('state')); ?></strong>
                          </span>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group<?php echo e($errors->has('extra_note') ? ' has-error' : ''); ?>">
                        <?php echo Form::label('extra_note',__("user.extraNote")); ?>

                        <?php echo Form::textarea('extra_note', null,['class'=>'form-control ckeditor']); ?>

                        <?php if($errors->has('extra_note')): ?>
                            <span class="help-block">
                        <strong><?php echo e($errors->first('extra_note')); ?></strong>
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


<?php
if ( old( 'image' ) ) {
	$image = old( 'image' );
} elseif ( isset( $user->image ) ) {
	$image = $user->image;
} else {
	$image = '';
}
?>
<?php echo $__env->make(('sm-admin/common/common/image_form'),['header_name'=>'User', 'image'=>$image], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>