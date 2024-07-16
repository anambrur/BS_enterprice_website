<?php
    $edit_category = SM::check_this_method_access('categories', 'edit') ? 1 : 0;
    $category_status_update = SM::check_this_method_access('categories', 'category_status_update') ? 1 : 0;
    $delete_category = SM::check_this_method_access('categories', 'destroy') ? 1 : 0;
    $per = $edit_category + $delete_category;
?>

<?php if($all_category): ?>
    <?php $sl = 1; ?>
    <?php $__currentLoopData = $all_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr id="tr_<?php echo e($category->id); ?>">
            <td><?php echo e($sl); ?></td>
            <td><?php echo e($category->title); ?></td>
            <td>
                <img class="img-blog" src="<?php echo e(asset('storage/uploads/' . $category->image)); ?>" width="40px"
                    alt="<?php echo e($category->title); ?>" />
            </td>
            <?php if($category_status_update != 0): ?>
                <td class="text-center">
                    <select class="form-control change_status"
                        route="<?php echo e(config('constant.smAdminSlug')); ?>/categories/category_status_update"
                        post_id="<?php echo e($category->id); ?>">
                        <option value="1" <?php if($category->status == 1): ?> selected="selected" <?php endif; ?>>Published
                        </option>
                        <option value="2" <?php if($category->status == 2): ?> selected="selected" <?php endif; ?>>Pending
                        </option>
                        <option value="3" <?php if($category->status == 3): ?> selected="selected" <?php endif; ?>>Canceled
                        </option>
                    </select>
                </td>
            <?php endif; ?>
            <?php if($per != 0): ?>
                <td class="text-center">
                    <?php if($edit_category != 0): ?>
                        <a href="<?php echo e(url(config('constant.smAdminSlug') . '/categories')); ?>/<?php echo e($category->id); ?>/edit"
                            title="Edit" class="btn btn-xs btn-default" id="">
                            <i class="fa fa-pencil"></i>
                        </a>
                    <?php endif; ?>
                    <?php if($delete_category != 0): ?>
                        <a href="<?php echo e(url(config('constant.smAdminSlug') . '/categories/destroy')); ?>/<?php echo e($category->id); ?>"
                            title="Delete" class="btn btn-xs btn-default delete_data_row"
                            delete_message="Are you sure to delete this Category?" delete_row="tr_<?php echo e($category->id); ?>">
                            <i class="fa fa-times"></i>
                        </a>
                    <?php endif; ?>
                </td>
            <?php endif; ?>
        </tr>
        <?php
            $sl++;
            SM::category_tree_for_category_table($category->id);
        ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
