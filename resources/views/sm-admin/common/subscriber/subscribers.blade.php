<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 1/3/18
 * Time: 6:07 PM
 */

 
if ($pages)
{
$sl = 1;
foreach ($pages as $page)
{
?>
<tr id="tr_{{$page->id}}">
    <td><?php echo $sl; ?></td>
    <td><strong>{{ $page->email }}</strong></td> 
    <td>{{ $page->ip }}</td>      
    <td>
        <button type="button" id="btn_send_mail_subscriber" value="{{ $page->id }}" class="btn btn-success"><i class="fa fa-envelope" aria-hidden="true"></i> Send Mail</button>
    </td>


</tr>
<?php
$sl++;
}
}
?>
