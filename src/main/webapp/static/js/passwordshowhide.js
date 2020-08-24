$(document).ready(function() {
	console.log("its loaded show hide.js kar raha hai..............");
	
	const lpassword= $('#lpassword')
	const passwordss= $('#confirmPwd');
	const passwords= $('#newpwd');
	const password= $('#temppwd');
	$('#eye').click(function(){
		
		if(password.prop('type') == 'password'){
			$(this).addClass('fa-eye-slash');
			password.attr('type','text')
		}else{
			$(this).removeClass('fa-eye-slash');
			password.attr('type','password');
		}
			
	});
	
	
	
	$('#eyenew').click(function(){
		
		if(passwords.prop('type') == 'password'){
			$(this).addClass('fa-eye-slash');
			passwords.attr('type','text')
		}else{
			$(this).removeClass('fa-eye-slash');
			passwords.attr('type','password');
		}
			
	});
	
	
	
     $('#eyeconf').click(function(){	
		if(passwordss.prop('type') == 'password'){
			$(this).addClass('fa-eye-slash');
			passwordss.attr('type','text')
		}else{
			$(this).removeClass('fa-eye-slash');
			passwordss.attr('type','password');
		}
			
	});
     
     
     $('#eye').click(function(){	
 		if(lpassword.prop('type') == 'password'){
 			$(this).addClass('fa-eye-slash');
 			lpassword.attr('type','text')
 		}else{
 			$(this).removeClass('fa-eye-slash');
 			lpassword.attr('type','password');
 		}
 			
 	});
 	
     
	

});

	
	
	

