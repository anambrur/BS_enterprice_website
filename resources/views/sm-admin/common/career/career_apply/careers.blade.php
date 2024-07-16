<?php

if ($pages)
{
$sl = 1;
foreach ($pages as $page)
{
?>
<tr id="tr_{{$page->id}}">
    <td><?php echo $sl; ?></td>
    <td><strong><a href="{{ $page->id }}">{{ $page->name }}</a></strong></td>
    <td>
        <ul style="list-style-type:none;">
          <li><span> Email: </span>{{ $page->email }}</li>
          <li><span> Phone: </span>{{ $page->phone }}</li>
          
        </ul>
    </td>
    <td>
        <ul style="list-style-type:none;">
          <li><span><b>Thana:</b>  </span>{{ $page->p_thana }}</li>
          <li><span><b>District:</b></span>{{ $page->p_district }}</li>
          <li><span><b>Dvision:</b></span>{{ $page->p_division }}</li>
          <li><span><b>Address:</b></span>{{ $page->p_address }}</li>
          
        </ul>
    </td>
    <td>
        <ul style="list-style-type:none;">
          <li><span><b>Thana:</b></span>{{ $page->per_thana }}</li>
          <li><span><b>District:</b> </span>{{ $page->per_district }}</li>
          <li><span><b>Dvision:</b> </span>{{ $page->per_division }}</li>
          <li><span><b>Address:</b> </span>{{ $page->per_address }}</li>
          
        </ul>
    </td>
    <td><strong><a href="{{ $page->id }}">{{ $page->career->title }}</a></strong></td>
    <td>
        <a target="_blank" href="{{Storage::disk('public')->url('career/'.$page->image) }}"><strong>File</strong></a>
    </td>
    <td>
        <a target="_blank" href="{{Storage::disk('public')->url('career/'.$page->cv) }}"><strong>File</strong></a>
    </td>
    <td>
        <button type="button" id="btn_send_mail_career_apply" value="{{ $page->id }}" class="btn btn-success"><i
                    class="fa fa-envelope" aria-hidden="true"></i> Send Mail</button>
    </td>
    <td>
        <a href="<?php echo url(config('constant.smAdminSlug') . '/careerapplys/destroy'); ?>/<?php echo $page->id; ?>"
           title="Delete" class="btn btn-xs btn-default delete_data_row"
           delete_message="Are you sure to delete this Page?"
           delete_row="tr_{{$page->id}}">
            <i class="fa fa-times"></i>
        </a>
    </td>


</tr>
<?php
$sl++;
}
}
?>
