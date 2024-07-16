<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 1/3/18
 * Time: 6:02 PM
 */
?>
<?php
if ($services)
{
    $sl = 1;
    foreach ($services as $service)
    {
        ?>
        <tr id="tr_{{$service->id}}">
            <td><label><input type="checkbox" class="smCheckbox subscriber subscriber{{$service->id}}" value="{{$service->id}}"></label></td>
            <td>
                <img class="img-blog" src="<?php echo SM::sm_get_the_src($service->image, 80, 80); ?>" width="80px" alt="<?php echo $service->title; ?>" />
            </td>
            <td>
              <?php
              echo $service->title;
              ?>
          </td>
          <td>
              <?php
              echo $service->description;
              ?>
          </td>
          
          <td><?php echo date('d F, Y', strtotime($service->created_at)); ?></td>
          
          <td class="text-center">

            <a href="<?php echo url(config('constant.smAdminSlug') . '/services/edit_services'); ?>/<?php echo $service->id; ?>" title="Edit" class="btn btn-xs btn-default" id="">
                <i class="fa fa-pencil"></i>
            </a>
            {{--@if($service->id!=1)--}}
            <a href="<?php echo url(config('constant.smAdminSlug') . '/services/delete_services'); ?>/<?php echo $service->id; ?>"
             title="Delete" class="btn btn-xs btn-default delete_data_row"
             delete_message="Are you sure to delete this Services? This Services all data will be delete"
             delete_row="tr_{{$service->id}}">
             <i class="fa fa-times"></i>
         </a>
         {{--@endif--}}
     </td>
 </tr>
 <?php
 $sl++;
}
}
?>
