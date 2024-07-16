<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 1/3/18
 * Time: 6:04 PM
 */
?>
<?php
if ($all_order)
{
$edit_order = SM::check_this_method_access( 'orders', 'edit' ) ? 1 : 0;
$order_status_update = SM::check_this_method_access( 'orders', 'order_status_update' ) ? 1 : 0;
$delete_order = SM::check_this_method_access( 'orders', 'destroy' ) ? 1 : 0;
$per = $edit_order + $delete_order;
$sl = 1;
foreach ($all_order as $order)
{
?>
<tr id="tr_{{$order->id}}">
    <td>{{ SM::orderNumberFormat($order) }}</td>
    <td><?php
	    if ( $order->package_type == 2 ) {
		    $package_type = 'Pricing Plan 4 Columns';
	    } else if ( $order->package_type == 3 ) {
		    $package_type = 'Pricing Plan 4 Columns Duration Tab';
	    } else if ( $order->package_type == 4 ) {
		    $package_type = 'Content Marketing';
	    } else if ( $order->package_type == 5 ) {
		    $package_type = 'Social Media Marketing 3 Columns';
	    } else if ( $order->package_type == 6 ) {
		    $package_type = 'Social Media Marketing 4 Columns';
	    } else {
		    $package_type = 'Pricing Plan 3 Columns';
	    }
	    echo $package_type;
		?></td>
    <td id="total_{{$order->id}}">${{ number_format($order->net_total, 2) }}</td>
    <td id="paid_{{$order->id}}">${{ number_format($order->paid,2) }}</td>
    <td id="due_{{$order->id}}">
		<?php
		$due = $order->paid - $order->net_total;
		$dueSign = $due < 0 ? "-" : "+";
		$dueSign = $due == 0 ? "" : $dueSign;
		?>
        {{ $dueSign }} ${{ abs(number_format($due,2)) }}
    </td>
    <td id="files_{{$order->id}}">
		<?php
		if ( ! empty( trim( $order->completed_files ) ) ) {
			$files = SM::getMediaArrayFromStringImages( $order->completed_files );
			if ( count( $files ) > 0 ) {
				foreach ( $files as $file ) {
					$filename = $file->slug;
					$img      = SM::sm_get_galary_src_data_img( $filename, $file->is_private == 1 ? true : false );
					$src      = $img['src'];

					echo '<a class="order_image" href="' . url( SM::smAdminSlug( 'media/download/' . $file->id ) ) . '" title="Download ' . $file->title . '">
													<img src="' . $src . '"
                                                     caption="' . $file->caption . '" description="' . $file->description . '"
                                                     class="orderFile"></a>';
				}
			} else {
				echo 'No Files Added yet';
			}
		} else {
			echo 'No Files Added yet';
		}
		?>
    </td>
	<?php if ($order_status_update != 0): ?>
    <td class="text-center">
        <select class="form-control order_change_status"
                id="order_change_status_{{$order->id}}"
                data-post_id="<?php echo $order->id; ?>"
                data-due="<?php echo abs( $due ); ?>"
                data-row="{{$order->id}}">
            <option value="1" <?php
				if ( $order->order_status == 1 ) {
					echo 'Selected="Selected"';
				}
				?>>Completed
            </option>
            <option value="2" <?php
				if ( $order->order_status == 2 ) {
					echo 'Selected="Selected"';
				}
				?>>Progress
            </option>
            <option value="3" <?php
				if ( $order->order_status == 3 ) {
					echo 'Selected="Selected"';
				}
				?>>Pending
            </option>
            <option value="4" <?php
				if ( $order->order_status == 4 ) {
					echo 'Selected="Selected"';
				}
				?>>Canceled
            </option>
        </select>
    </td>
    <td class="text-center">
        <select class="form-control payment_change_status"
                id="payment_change_status_{{$order->id}}"
                data-post_id="<?php echo $order->id; ?>"
                data-due="<?php echo abs( $due ); ?>"
                data-row="{{$order->id}}">
            <option value="1" <?php
				if ( $order->payment_status == 1 ) {
					echo 'Selected="Selected"';
				}
				?>>Completed
            </option>
            <option value="2" <?php
				if ( $order->payment_status == 2 ) {
					echo 'Selected="Selected"';
				}
				?>>Pending
            </option>
            <option value="3" <?php
				if ( $order->payment_status == 3 ) {
					echo 'Selected="Selected"';
				}
				?>>Canceled
            </option>
        </select>
    </td>
	<?php endif; ?>
	<?php if ($per != 0): ?>
    <td class="text-center">
		<a href="javascript:void(0)"
		   data-post_id="<?php echo $order->id; ?>"
		   title="Send Mail" class="btn btn-xs btn-success showOrderMailModal">
			<i class="fa fa-envelope"></i>
		</a>
        <a target="_blank"
           href="<?php echo url( config( 'constant.smAdminSlug' ) . '/orders/' . $order->id ); ?>?isAdmin=1"
           title="View Invoice" class="btn btn-xs btn-default" id="">
            <i class="fa fa-eye"></i>
        </a>
        <a href="<?php echo url( config( 'constant.smAdminSlug' ) . '/orders/download/' . $order->id ); ?>"
           title="Download Invoice" class="btn btn-xs btn-default" id="">
            <i class="fa fa-download"></i>
        </a>
		<?php if ($delete_order != 0): ?>
        <a href="<?php echo url( config( 'constant.smAdminSlug' ) . '/orders/destroy' ); ?>/<?php echo $order->id; ?>"
           title="Delete Invoice" class="btn btn-xs btn-default delete_data_row"
           delete_message="Are you sure to delete this Order?"
           delete_row="tr_{{$order->id}}">
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
