<?php
/**
 * Created by PhpStorm.
 * User: rubelm6776
 * Date: 1/3/18
 * Time: 4:37 PM
 */
?>
<?php
if ($products) {
    $edit_package = SM::check_this_method_access( 'packages', 'edit' ) ? 1 : 0;
    $product_status_update = SM::check_this_method_access('products', 'product_status_update') ? 1 : 0;
    $delete_package = SM::check_this_method_access( 'packages', 'destroy' ) ? 1 : 0;
    $per = $edit_package + $delete_package;
    $sl = 1;
    foreach ($products as $product) {
        ?>
        <tr id="tr_<?php echo e($product->id); ?>">
            <td><?php echo $sl; ?></td>
            <td> <img class="img-blog" src="<?php echo SM::sm_get_the_src($product->image, 80, 80); ?>" width="80px" alt="<?php echo $product->title; ?>" /></td>
            <td><?php echo $product->title; ?></td>
            <td><?php echo $product->category_id; ?></td>
            <td><?php echo $product->batch_no; ?></td>
            <td><?php echo $product->description; ?></td>
                <?php if ($product_status_update != 0): ?>
                <td class="text-center">
                    <select class="form-control change_status"
                            route="<?php echo config('constant.smAdminSlug'); ?>/products/product_status_update"
                            post_id="<?php echo $product->id; ?>">
                        <option value="1" <?php
                        if ($product->status == 1) {
                            echo 'Selected="Selected"';
                        }
                        ?>>Published
                        </option>
                        <option value="2" <?php
                        if ($product->status == 2) {
                            echo 'Selected="Selected"';
                        }
                        ?>>Pending
                        </option>
                        <option value="3" <?php
                        if ( $product->status == 3 ) {
                            echo 'Selected="Selected"';
                        }
                        ?>>Canceled
                        </option>
                    </select>
                </td>
            <?php endif; ?>
        <td><?php echo date('d F, Y', strtotime($product->created_at)); ?></td>

        <td class="text-center">
            <a href="<?php echo url(config('constant.smAdminSlug') . '/products/edit_product'); ?>/<?php echo $product->id; ?>"
               title="Edit" class="btn btn-xs btn-default" id="">
                <i class="fa fa-pencil"></i>
            </a>
            
            
            <a href="<?php echo url(config('constant.smAdminSlug') . '/products/destroy'); ?>/<?php echo $product->id; ?>"            
               title="Delete" class="btn btn-xs btn-default delete_data_row"
               delete_message="Are you sure to delete this Package?"
               delete_row="tr_<?php echo e($product->id); ?>">               
                <i class="fa fa-times"></i>
            </a>

        </td>

        </tr>
        
        <?php
        $sl ++;
    }
}
?>
