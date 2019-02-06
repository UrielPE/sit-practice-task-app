<?php 

require_once( '../connection/connection.php');

if( isset( $_POST['id'] ) )
{
  $id = $_POST['id'];

  $query = "DELETE FROM task WHERE id = $id";
  $result = mysqli_query( $connection, $query );

  if( $result ):
    echo "Task Delete Successful.";
  else:
    die ("Query Failed");
  endif;

}

