<?php

use Zend\Text\Figlet\Figlet;


$dirautoload = __DIR__ . '/../vendor/autoload.php';
if(file_exists($dirautoload)){
    // Composer autoloading
    include($dirautoload);
}


if (class_exists(Figlet::class)) {
    $figlet = new Figlet();
    echo '<pre>'.$figlet->render('Saludos').'</pre>';
}else{
    echo "Saludos <br> no te olvides de instalar composer <br><br> ./scripts/tasks.composer.sh install";
}


