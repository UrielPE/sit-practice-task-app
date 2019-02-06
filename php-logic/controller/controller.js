$( function(){
  console.log( 'JQuery it\'s working' );
  let edit = false;
  $('#task-result').hide();
  fetchTask();

  //Evento para buscar una tarea
  $( '#search' ).keyup(function(event){
    if( $('#search').val() )
    {
      let search = $('#search').val();
      $.ajax({
       url: 'php-logic/logic/search-php.php',
       type: 'POST', 
       data: {search},
       success: function(response){
        let tasks = JSON.parse( response );
        let template = '';

        tasks.forEach( task => {
          template += '<li>'+task.name+'</li>';
        });

        $('#container').html( template );
        $('#task-result').show();
       }
      });
    }
  });

  //Evento para guardar una tarea
  $('#task-form').submit(function(event) {
    event.preventDefault(); //->cancela el comportamiento predefinido del form
    
    const postData = {
      id : $( '#id' ).val(),
      name: $( '#name' ).val(),
      description: $( '#description' ).val()
    };    
    console.log( postData );

    let url = edit === false ? 'php-logic/logic/save-task.php': 'php-logic/logic/update-task.php';
    console.log( url );

    $.post( url, postData, function(response){
      console.log( response );
      edit = false;
      
      fetchTask();
      $('#task-form').trigger('reset');//Limpia los inputs del form
    });
  });


  
  function fetchTask()
  {
    //Se ejecuta una vez se inicia el programa
    $.ajax({
      url: 'php-logic/logic/task-list.php',
      type: 'GET',
      dataType: 'json',
    })
    .done(function( response )   {
      console.log(response);

      let template = "";
      response.forEach( task => {
        template += "<tr task-id="+task.id+"><td>"+task.id+"</td><td><a href='#' class='task-item'>"+task.name+"</a></td><td>"+task.description+"</td><td><button class='task-delete btn btn-danger'>Delete</button></td></tr>";        
      });

      //Aplica los estilos
      $('#task-table').html( template );
    })
    .fail(function(err) {
      console.log(err.responseText);
    })
    .always(function() {
      console.log("complete");
    });
  }

  //Para la eliminación
  $(document).on( 'click', '.task-delete', function(){
    if( confirm( 'Are you sure you want to delete it?' ) )
    {
      let element = $(this)[0].parentElement.parentElement;
      let id =  $(element).attr('task-id');
      console.log( id );

      $.post( 'php-logic/logic/delete-task.php', {id}, function( response ){
        console.log( response );
        fetchTask();
      });
    }
  });

  //Para la modificacion
  $(document).on( 'click', '.task-item' ,function(){
    let element = $(this)[0].parentElement.parentElement;
    let id =  $(element).attr('task-id');
    console.log( id );

    $.post( 'php-logic/logic/task-single.php', {id}, function( response ){
        const task = JSON.parse( response );
        console.log( task );

        $( '#id' ).val( task.id );
        $('#name').val( task.name );
        $('#description').val( task.description );
        edit = true;
      });

  });

});
