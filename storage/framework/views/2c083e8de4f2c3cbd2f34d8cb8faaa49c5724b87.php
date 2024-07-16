<?php

/**

 * Created by PhpStorm.

 * User: mrksohag

 * Date: 1/3/18

 * Time: 6:02 PM

 */

?>

<?php

if ($portfolios)

{

    $sl = 1;

    foreach ($portfolios as $portfolio)

    {

        ?>

        <tr id="tr_<?php echo e($portfolio->id); ?>">

            <td><label><input type="checkbox" class="smCheckbox subscriber subscriber<?php echo e($portfolio->id); ?>" value="<?php echo e($portfolio->id); ?>"></label></td>

            <td>

                <img class="img-blog" src="<?php echo SM::sm_get_the_src($portfolio->image, 80, 80); ?>" width="80px" alt="<?php echo $portfolio->title; ?>" />

            </td>

            <td>

              <?php

              echo $portfolio->title;

              ?>

          </td>

           <td>

        <?php if(count($portfolio->categories)>0): ?>

            <?php $__currentLoopData = $portfolio->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                <?php if($loop->iteration>1): ?>

                    <?php echo e(", "); ?>


                <?php endif; ?>

               <?php echo e($cat->title); ?> 

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <?php endif; ?>

    </td>

          <td><?php echo e($portfolio->sortby); ?></td>

          <td><?php echo e($portfolio->link); ?></td>

          <td><?php echo e($portfolio->duration); ?></td>

          <td> <?php echo str_limit($portfolio->description); ?> </td>

          

          <td><?php echo date('d F, Y', strtotime($portfolio->created_at)); ?></td>

          

          <td class="text-center">



            <a href="<?php echo url(config('constant.smAdminSlug') . '/portfolios/edit_portfolio'); ?>/<?php echo $portfolio->id; ?>" title="Edit" class="btn btn-xs btn-default" id="">

                <i class="fa fa-pencil"></i>

            </a>

            

            <a href="<?php echo url(config('constant.smAdminSlug') . '/portfolios/delete_portfolio'); ?>/<?php echo $portfolio->id; ?>"

             title="Delete" class="btn btn-xs btn-default delete_data_row"

             delete_message="Are you sure to delete this Gallery? This Gallery all data will be delete"

             delete_row="tr_<?php echo e($portfolio->id); ?>">

             <i class="fa fa-times"></i>

         </a>

         

     </td>

 </tr>

 <?php

 $sl++;

}

}

?>

