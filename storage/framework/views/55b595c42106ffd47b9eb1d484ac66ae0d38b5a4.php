

<?php $__env->startSection('title','Gallery'); ?>

<?php $__env->startSection('content'); ?>

<?php echo $__env->make(('sm-admin/common/media/media_pop_up'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<section id="widget-grid" class="">



    <!-- row -->

    <div class="row">



        <!-- NEW WIDGET START -->

        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">



            <!-- Widget ID (each widget will need unique ID)-->

            <div class="jarviswidget" id="">



                <header>

                    <span class="widget-icon"> <i class="fa fa-users"></i> </span>

                    <h2>Gallery list </h2>



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

                          <table id="manage_blog" class="table table-striped table-bordered data_table" width="100%">



                            <thead>

                                <tr>

                                    <th width="5"><label><input type="checkbox" class="allCheck"></label></th>

                                    <th>Image</th>

                                    <th>Title</th>

                                    <th>Categories</th>

                                     <th>Sortby</th>

                                    <th>Link</th>

                                    <th>Duration</th>

                                    <th>Description</th>

                                    <th>Created At</th>

                                    <th class="text-center">Action</th>

                                </tr>

                            </thead>

                            <tbody id="dataBody">

                                <?php echo $__env->make('sm-admin.common.portfolios.portfolios', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

                            </tbody>

                            <tfoot>

                                <tr>

                                    <th>Select</th>

                                    <th>Image</th>

                                    <th>Title</th>

                                    <th>Categories</th>

                                    <th>Sortby</th>

                                      <th>Link</th>

                                    <th>Duration</th>

                                    <th>Description</th>

                                    <th>Created At</th>

                                    <th class="text-center">Action</th>

                                </tr>

                            </tfoot>

                        </table>

                        <?php echo $__env->make('sm-admin.common.common.pagination_links', ['smPagination'=>$portfolios], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

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

<?php $__env->startSection('footer_script'); ?>



<?php $__env->stopSection(); ?>
<?php echo $__env->make(('sm-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>