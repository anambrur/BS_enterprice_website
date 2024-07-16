<?php
if ($contacts)
{
    $sl = 1;
    foreach ($contacts as $contact)
    {
        ?>
        <tr id="tr_{{$contact->id}}">
            <td><?php echo $sl; ?></td>
             
          <td>{{ $contact->fullname }}</td>
          <td>{{ $contact->email }}</td>
          <td>{{ $contact->phone }}</td>
          <td>{{ $contact->subject }}</td>
          <td>{!! str_limit($contact->message, 30) !!}</td> 
          
          <td>{{ date('d F, Y', strtotime($contact->created_at)) }}</td> 
          <td> <button type="button" id="btn_send_mail_contact" value="{{ $contact->id }}" class="btn btn-success"><i class="fa fa-envelope" aria-hidden="true"></i> Send Mail</button></td>
          <td class="text-center">  
            
            <a href="<?php echo url(config('constant.smAdminSlug') . '/contacts/delete_contacts'); ?>/<?php echo $contact->id; ?>"
             title="Delete" class="btn btn-xs btn-default delete_data_row"
             delete_message="Are you sure to delete this Contact? This Contact all data will be delete"
             delete_row="tr_{{$contact->id}}">
             <i class="fa fa-times"></i>
         </a> 
     </td>
 </tr>
 <?php
 $sl++;
}
}
?>
