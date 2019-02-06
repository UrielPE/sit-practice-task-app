<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$DB_HOST =  'localhost' ;
$DB_USER =  'root' ;
$DB_NAME = 'sit_task_app' ;
$DB_PASSWORD = '' ;

$connection = new mysqli( $DB_HOST, $DB_USER, $DB_PASSWORD, $DB_NAME );

if( $connection -> connect_errno ):
  echo "Error: Conexión en base de datos. ". mysqli.connect_errno;
endif;
