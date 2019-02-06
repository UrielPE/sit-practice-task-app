<?php

require_once( '../connection/connection.php');

if( isset($_POST['id']) )
{
  $id =  $_POST['id'];
  $query = "SELECT * FROM task WHERE id = $id;";
  $result = mysqli_query( $connection, $query );

  if( $result ):
    $json = array();
    while( $row = mysqli_fetch_array( $result ))
    {
      $json[] = array(
        'id' => $row['id'],
        'name' => $row[ 'name' ],
        'description' => $row[ 'description' ]
      );
    }

    $jsonString = json_encode( $json[0] );
    echo $jsonString;
  else:
    die( "Query Failed" );
  endif;
}
