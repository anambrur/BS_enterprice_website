<?php $__env->startSection("title","Products"); ?>
<?php $__env->startSection("content"); ?>
<?php
//	$edit_package = SM::check_this_method_access( 'packages', 'edit' ) ? 1 : 0;
//	$package_status_update = SM::check_this_method_access( 'packages', 'package_status_update' ) ? 1 : 0;
//	$delete_package = SM::check_this_method_access( 'packages', 'destroy' ) ? 1 : 0;
//	$per = $edit_package + $delete_package;
?>
<section id="widget-grid" class="">

    <!-- row -->
    <div class="row">

        <!-- NEW WIDGET START -->
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget" id="package_list_wid">
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
                    <span class="widget-icon"> <i class="fa fa-heart"></i> </span>
                    <h2>Products list </h2>
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
                    <div class="widget-body table-responsive">

                        <!-- this is what the user will see -->
                        <table id="" class="table table-striped table-bordered sm_table" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Application</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Created At</th>
                                    <th class="text-center">Action</th>

                                </tr>
                            </thead>
                            <tbody id="dataBody">
                                <?php echo $__env->make('sm-admin.common.products.products', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                            </tbody>
                            
                        </table>
                        <?php echo $__env->make('sm-admin.common.common.pagination_links', ['smPagination'=>$products], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
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
<?php echo $__env->make("sm-admin/master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>