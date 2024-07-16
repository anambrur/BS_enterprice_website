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

        <tr id="tr_{{$portfolio->id}}">

            <td><label><input type="checkbox" class="smCheckbox subscriber subscriber{{$portfolio->id}}" value="{{$portfolio->id}}"></label></td>

            <td>

                <img class="img-blog" src="<?php echo SM::sm_get_the_src($portfolio->image, 80, 80); ?>" width="80px" alt="<?php echo $portfolio->title; ?>" />

            </td>

            <td>

              <?php

              echo $portfolio->title;

              ?>

          </td>

           <td>

        @if(count($portfolio->categories)>0)

            @foreach($portfolio->categories as $cat)

                @if($loop->iteration>1)

                    {{", "}}

                @endif

               {{$cat->title}} 

            @endforeach

        @endif

    </td>

          <td>{{ $portfolio->sortby }}</td>

          <td>{{ $portfolio->link }}</td>

          <td>{{ $portfolio->duration }}</td>

          <td> {!! str_limit($portfolio->description) !!} </td>

          

          <td><?php echo date('d F, Y', strtotime($portfolio->created_at)); ?></td>

          

          <td class="text-center">



            <a href="<?php echo url(config('constant.smAdminSlug') . '/portfolios/edit_portfolio'); ?>/<?php echo $portfolio->id; ?>" title="Edit" class="btn btn-xs btn-default" id="">

                <i class="fa fa-pencil"></i>

            </a>

            {{--@if($portfolio->id!=1)--}}

            <a href="<?php echo url(config('constant.smAdminSlug') . '/portfolios/delete_portfolio'); ?>/<?php echo $portfolio->id; ?>"

             title="Delete" class="btn btn-xs btn-default delete_data_row"

             delete_message="Are you sure to delete this Gallery? This Gallery all data will be delete"

             delete_row="tr_{{$portfolio->id}}">

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

