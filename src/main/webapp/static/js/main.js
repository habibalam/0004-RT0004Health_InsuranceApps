$(document).ready(function() {
	console.log("..... View file js its working kar raha hai......");
	 $('#roles').change(function (){  
	
      var roles = $("#roles").val();
      alert('roles');
      $.ajax({
  	   type : "GET",
  	   //url :"/getroles?roles =" + roles,oh
  	   url: "/getroles?roles=" + roles,
  	   success :function(result){ 
  	   $('#tb').html(result);
  	  
  	  }
     
    });
	

});
	 
}); 
	 
	 