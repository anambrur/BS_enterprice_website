
<?php $__env->startSection('title','Media Library'); ?>
<?php $__env->startSection('content'); ?>
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            <!-- NEW WIDGET START -->
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-id-media_lib" data-widget-editbutton="false"> 
                    <header>
                        <ul id="sm_media_tab" class="nav nav-tabs in">
                            <li class="active">
                                <a href="#media_library_tab" data-toggle="tab"><?php echo e(__("media.mediaLibrary")); ?></a>
                            </li>
							<?php
							$upload = SM::check_this_method_access( 'media', 'upload' ) ? 1 : 0;
							if ($upload === 1)
							{
							?>
                            <li class="">
                                <a href="#upload_media_tab"
                                   data-toggle="tab"><?php echo e(__("media.uploadMediaFiles")); ?></a>
                            </li>
							<?php
							}
							?>
                        </ul>
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
                        <div class="widget-body no-padding">

                            <div id="sm_media_tab_content" class="tab-content bge5 padding-10">
                                <div class="tab-pane fade in active" id="media_library_tab">
                                    <?php echo $__env->make(('sm-admin/common/media/files'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                </div>
								<?php
								if ($upload)
								{
								?>
                                <div class="tab-pane fade" id="upload_media_tab">
                                    <form action="<?php echo e(url(config('constant.smAdminSlug').'/media/upload')); ?>" class="dropzone"
                                          id="mydropzone">
                                        <label style="color: #ff0000; font-size: 20px;display: none"><input id="is_private" name="is_private" value="1" type="checkbox"> Is private file?
                                        </label><br>
                                        <?php echo csrf_field(); ?>

                                    </form>
                                </div>
								<?php
								}
								?>
                            </div>
                        </div>
                        <!-- end widget content -->
                    </div>
                    <!-- end widget div -->
                </div>
                <!-- end widget -->
            </article>
            <!-- WIDGET END -->
        </div>
        <!-- end row -->
    </section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make(('sm-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>