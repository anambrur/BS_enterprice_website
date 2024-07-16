// <?php 
// symlink('/home4/orangfx8/public_html/nextpagesite_source/storage/app/public', '/home4/orangfx8/public_html/nptl/storage');
// ?>

<?php
$target = '/home4/orangfx8/public_html/nptl_source/storage/app/public';
// var_dump($target);
// exit;
$shortcut = '/home4/orangfx8/public_html/nextpagetl/storage';
var_dump(symlink($target, $shortcut));
exit;


?>