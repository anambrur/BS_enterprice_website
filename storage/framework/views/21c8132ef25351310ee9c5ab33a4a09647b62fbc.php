<?php $__env->startSection('title', 'Admin Certificate List'); ?>
<?php $__env->startSection('content'); ?>

    <section id="widget-grid">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="jarviswidget" id="slider_list_wid">

                    <header>
                        <span class="widget-icon"> <i class="fa fa-comments"></i> </span>
                        <h2><?php echo e(__('common.certifications')); ?></h2>
                    </header>
                    <div>
                        <div class="jarviswidget-editbox">
                            <input class="form-control" type="text">
                        </div>
                        <div class="widget-body">
                            <table id="manage_blog" class="table table-striped table-bordered" width="100%">

                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Image</th>
                                        <th class="text-center">Status</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($d->id); ?></td>
                                            <td><?php echo e($d->title); ?></td>
                                            <td><?php echo e($d->description); ?></td>
                                            <td>
                                                <img class="img-blog" src="<?php echo e(SM::sm_get_the_src($d->image, 80, 80)); ?>"
                                                    width="80px" alt="slider" />
                                            </td>
                                            <td class="text-center">
                                                <select class="form-control change_status" data-route=""
                                                    data-post_id="<?php echo e($d->id); ?>">
                                                    <option value="1" <?php if($d->status == 1): ?> selected="selected" <?php endif; ?>>
                                                        Published</option>
                                                    <option value="2" <?php if($d->status == 2): ?> selected="selected" <?php endif; ?>>
                                                        Pending</option>
                                                    <option value="3" <?php if($d->status == 3): ?> selected="selected" <?php endif; ?>>
                                                        Canceled</option>
                                                </select>
                                            </td>
                                            <td class="text-center">
                                                <a href="<?php echo e(route('editCertifications', $d->id)); ?>" title="Edit"
                                                    class="btn btn-xs btn-default">
                                                    <i class="fa fa-pencil"></i>
                                                </a>

                                                <form action="<?php echo e(route('destroyCertifications', $d->id)); ?>" method="POST" style="display:inline;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" onclick="return confirm('Are you sure you want to delete?')"
                                                        class="btn">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </form>

                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Image</th>
                                        <th class="text-center">Status</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </tfoot>
                            </table>

                        </div>
                    </div>
                </div>
            </article>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('sm-admin/master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>