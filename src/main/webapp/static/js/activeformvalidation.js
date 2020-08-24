$(document).ready(function() {
	console.log("Active form working ..");
	$('#tempwdcheck').hide();
	$('#newpwdcheck').hide();
	$('#conpasscheck').hide();
	
	var tempwd_err = true;
	var newpwd_err = true;
	var confirmPwd_err = true;
	
	$('#temppwd').keyup(function(){
		
	tempwd_password();	
	});
	
	function tempwd_password(){
		
		var tempwd = $("#temppwd").val();
		
		if(tempwd.length== ''){
			$('#tempwdcheck').show();
			$('#tempwdcheck').html("*Please Enter the Temprory password");
			$('#tempwdcheck').focus();
			$('#tempwdcheck').css("color","red");
			tempwd_err = false;
			return false;
		}
		else{
			
			$('#tempwdcheck').hide();
		}			
	
	}
	

	
    $('#newpwd').keyup(function(){
	  newpwd_password();	
	
	 });
	
      function newpwd_password(){
      var newpwd = $('#newpwd').val();
	  
      if(newpwd.length == ''){
    	
    	  $('#newpwdcheck').show();
			$('#newpwdcheck').html("*Please Enter new password");
			$('#newpwdcheck').focus();
			$('#newpwdcheck').css("color","red");
			newpwd_err = false;
			return false;
		}
		else{
			
			$('#newpwdcheck').hide();
		}	
      
      
      if((newpwd.length < 3) || (newpwd.length > 8)){
      	
    	  $('#newpwdcheck').show();
			$('#newpwdcheck').html("*password length must be between 3 and 8*");
			$('#newpwdcheck').focus();
			$('#newpwdcheck').css("color","red");
			newpwd_err = false;
			return false;
		}
		else{
			
			$('#newpwdcheck').hide();
		}	   
    	    
    }	
	
      $('#confirmPwd').keyup(function(){
    	  confirmPwd();	
    	
     });
      
      function confirmPwd(){
      var confirmpwd = $('#confirmPwd').val(); 
      var newpwd = $('#newpwd').val();
      if( newpwd != confirmpwd){
    	  $('#conpasscheck').show();
			$('#conpasscheck').html("*password are not match");
			$('#conpasscheck').focus();
			$('#conpasscheck').css("color","red");
			confirmPwd_err = false;
			return false;
		}
		else{
			
			$('#conpasscheck').hide();	  	  
      }	     	  
   }	
  	
      
      $('#regbtn').click(function(){
    	 tempwd_err = true;
         newpwd_err = true;
         confirmPwd_err = true;
         
         tempwd_password();	
         newpwd_password();
         confirmPwd();	
     	 if((tempwd_err == true) && ( newpwd_err == true)   && (confirmPwd_err == true)){
     		 return true;
     		 
     	 }else{
     		 return false;
     	 }
    	  
      });
      
      
      
    
});