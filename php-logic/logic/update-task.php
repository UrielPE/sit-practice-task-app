<?php

require_once( '../connection/connection.php');

$id = $_POST[ 'id' ];
$name = $_POST[ 'name' ];
$description = $_POST[ 'description' ];

$query = "UPDATE task set name = '$name', description='$description' WHERE id = $id; ";
$result = mysqli_query( $connection, $query );

if( !$result ):
  die( "Query Failed" );
endif;

echo "Update Task successful";
