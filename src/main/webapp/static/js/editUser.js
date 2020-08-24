$(document).ready(function() {
 console.log('Admin user loaded .... '); 
	$('.table #editButton').on('click', function(event){		
	 event.preventDefault();	
	 var href = $(this).attr('href'); 
       $.get(href, function(data,status){
    	  
          $('#edituserId').val(data.userId);
          $('#editfirstName').val(data.firstName); 
          $('#editlastName').val(data.lastName);
          $('#editemail').val(data.email);
          $('#editroles').val(data.roles);
		  $('#editgender').val(data.gender);
		  $('#editactStatus').val(data.actStatus);
		         
		});
		 
		  
	 
	  $('#editUser').modal(); 
	 
  });
	
	
	$('.table #deleteButton').on('click',function(event) {
		event.preventDefault();
		var href = $(this).attr('href');
		$('#deleteModal #delRef').attr('href', href);
		$('#deleteModal').modal();		
	});	
	
 	
});


