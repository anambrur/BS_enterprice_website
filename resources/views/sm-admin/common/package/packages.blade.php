<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 1/3/18
 * Time: 4:37 PM
 */
?>
<?php
if ($all_package)
{
$edit_package = SM::check_this_method_access( 'packages', 'edit' ) ? 1 : 0;
$package_status_update = SM::check_this_method_access( 'packages', 'package_status_update' ) ? 1 : 0;
$delete_package = SM::check_this_method_access( 'packages', 'destroy' ) ? 1 : 0;
$per = $edit_package + $delete_package;
$sl = 1;
foreach ($all_package as $package)
{
?>
<tr id="tr_{{$package->id}}">
    <td><?php echo $sl; ?></td>
    <td><?php echo $package->title; ?></td>
    <td><?php
		if ( $package->type == 2 ) {
			echo 'Pricing Plan 4 Columns';
		} else if ( $package->type == 3 ) {
			echo 'Pricing Plan 4 Columns Duration Tab';
		} else if ( $package->type == 4 ) {
			echo 'Content Marketing';
		} else if ( $package->type == 5 ) {
			echo 'Social Media Marketing 3 Columns';
		} else if ( $package->type == 6 ) {
			echo 'Social Media Marketing 4 Columns';
		} else {
			echo 'Pricing Plan 3 Columns';
		}
		?></td>
    <td><?php echo $package->sale_qty; ?></td>
    <td class="text-right">$<?php echo number_format($package->sale_amount, 2); ?></td>
	<?php if ($package_status_update != 0): ?>
    <td class="text-center">
        <select class="form-control change_status"
                route="<?php echo config( 'constant.smAdminSlug' ); ?>/packages/package_status_update"
                post_id="<?php echo $package->id; ?>">
            <option value="1" <?php
				if ( $package->status == 1 ) {
					echo 'Selected="Selected"';
				}
				?>>Published
            </option>
            <option value="2" <?php
				if ( $package->status == 2 ) {
					echo 'Selected="Selected"';
				}
				?>>Pending
            </option>
            <option value="3" <?php
				if ( $package->status == 3 ) {
					echo 'Selected="Selected"';
				}
				?>>Canceled
            </option>
        </select>
    </td>
	<?php endif; ?>
	<?php if ($per != 0): ?>
    <td class="text-center">
        <a target="_blank"
           href="<?php echo url( '/packages/' . $package->slug ); ?>"
           title="View" class="btn btn-xs btn-success" id="">
            <i class="fa fa-eye"></i>
        </a>
		<?php if ($edit_package != 0): ?>
        <a href="<?php echo url( config( 'constant.smAdminSlug' ) . '/packages' ); ?>/<?php echo $package->id; ?>/edit"
           title="Edit" class="btn btn-xs btn-default" id="">
            <i class="fa fa-pencil"></i>
        </a>
		<?php endif; ?>
		<?php if ($delete_package != 0): ?>
        <a href="<?php echo url( config( 'constant.smAdminSlug' ) . '/packages/destroy' ); ?>/<?php echo $package->id; ?>"
           title="Delete" class="btn btn-xs btn-default delete_data_row"
           delete_message="Are you sure to delete this Package?"
           delete_row="tr_{{$package->id}}">
            <i class="fa fa-times"></i>
        </a>
		<?php endif; ?>
    </td>
	<?php endif; ?>
</tr>
<?php
$sl ++;
}
}
?>
