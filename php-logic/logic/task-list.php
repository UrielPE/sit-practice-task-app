<?php 

require_once( '../connection/connection.php');

$query = "SELECT * FROM task";
$result = mysqli_query( $connection, $query );

if( !$result )
{
   die( "Query Failed" );
}

$json = array();
while( $row = mysqli_fetch_array($result))
{
  $json[] = array(
    'id' => $row[ 'id' ],
    'name' => $row[ 'name' ],
    'description' => $row[ 'description' ]
  );
}

$jsonString = json_encode($json);
echo $jsonString;
