<?php 

require_once( '../connection/connection.php');

$search = $_POST['search'];

if( !empty( $search ) ):
  $query = "SELECT * FROM task WHERE name LIKE '$search%'";
  $result = mysqli_query( $connection, $query );

  if( !$result ):
    die( 'Query error '. mysqli_error( $connection ) );
  endif;

  $json = array();
  while ( $row = mysqli_fetch_array($result)) {
    $json[] = array(
     'name' => $row['name'],                 
     'description' => $row['description'],
     'id' => $row['id']
    );
  }
  $jsonString = json_encode($json);
  echo $jsonString;
endif;
