<?php $target = '/home/ecocolourchem/public_html/storage/app/public/';

$shortcut = '/home/ecocolourchem/public_html/public/storage/';
var_dump(symlink($target, $shortcut));
exit;

?>