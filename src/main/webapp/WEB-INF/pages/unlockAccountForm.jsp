<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Information System</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">


<!-- Latest compiled and minified CSS -->

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css"> 


<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>

<style>

 body {
  background-image: url("paper.gif");
  background-color: #cccccc;
  }

  span{
      
      float:left;
  }
 h5{
   float:left;
 }
 
 
    .top_bar{
	    background:	#FF5733;
	    height:40px;
	}
  
  span{
	   margin-right:5px;
	}
	.contact{ color:white; padding:5px; font-size:16px;}
	P1{color:white;font-size:24px;}
 
 #temppwd{
 
    box-shadow:0 0 10px #000;
 }
 
 
 #newpwd{
    box-shadow:0 0 10px #000;
 }
 
 
 #confirmPwd{
     box-shadow:0 0 10px #000;
 }
 
 #eye{
   position: absolute;
   top:40%;
   right:16px;
   transform:translateY(-50%);
   cursor:pointer;
   font-size:1.8rem;
   color:#7a797e;
 
 }
 
 #eyenew{
 
   position: absolute;
   top:40%;
   right:16px;
   transform:translateY(-50%);
   cursor:pointer;
   font-size:1.8rem;
   color:#7a797e;
 }
 
 
 #eyeconf{
    position: absolute;
   top:40%;
   right:16px;
   transform:translateY(-50%);
   cursor:pointer;
   font-size:1.8rem;
   color:#7a797e;
 
 }
 
</style>

<script>
$(document).ready(function(){
	console.log("its working");
	$("#password").blur(function(){
		
		var enteredpassword =$("#password").val();
		var email=$("email").val();
		$.ajax({
			   url:'checkpwd?email=' + email,
			   data: "password=" +enteredpassword,
			   success : function(result){
				if(result == 'wrongpassword'){
				 $("#pwdMsg").html("Please Enter correct password...!!");
				 $("#password").focus();
				 $("#regbtn").prop("disable",false);
				}else{
					$("#pwdMsg").html("");
					$("#regbtn").prop("disable",false);
				}
			 }
		   });
		
	     });
	   
	    
});

</script>

<style>


	
	

</style>

 
</head>
<body>

  
   <div class="container-fluid top_bar fixed-top">
	 <div class="row">
	   <div class="col-md-6">
	      <a href="#" data-toggle="tooltip" data-placement="bottom" title="facebook" class="social_icon"><i class="fa fa-facebook" style="font-size:20px; padding:4px; margin-right:4px;color:#fff;"></i></a>
		  <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter" class="social_icon"><i class="fa fa-twitter" style="font-size:20px;color:#fff; margin-right:4px;"></i></a>
		  <a href="#" data-toggle="tooltip" data-placement="bottom" title="Youtube" class="social_icon"><i class="fa fa-youtube-play" style="font-size:20px;color:#fff; margin-right:4px;"></i></a>
		  <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+" class="social_icon"><i class="fa fa-google-plus" style="font-size:20px;color:#fff; margin-right:4px;"></i></a>
	  </div><!---first colum close---->
	  
	  <div class="col-md-2"></div>
	  
	  
	  
	 <div class="col-md-4 contact">
     <span class="glyphicon glyphicon-user"> <a href="/login" style="color:white">Login</a></span> 
     <span class="glyphicon glyphicon-registration-mark"><a href="/register" style="color:white">Register</a></span>
     <span class="glyphicon glyphicon-registration-mark">&nbsp;&nbsp;<a href="#" style="color:white">HSI Health Insurance plan</a></span>
    
   
    </div> <!---second colum close---->
	
	</div><!---row close------>
 </div><!---container fluid close here------>
      
   <div class="container text-center">
       <div class="row">
         <div class="col-md-2"></div>
         
         <div class="col-md-8">
	     <h2 style="color:red">Activate Account</h2>
                
				<div class="panel panel-success">
	             <div class="panel panel-heading">Confirm</div>  
	              <div class="panel panel-body"> 
	              <font color='red'><div id="errId"></div></font>
				   <form class="form-horizontal" id="validForm" method="POST" action="unlockUser" modelAttribute="unlockAcc">	 
					
					 <div class="form-group">
						<label class="control-label col-md-3">Your Email:</label>
						<div class="col-md-1">
							${email} 	
						</div>
					</div>
					 
					 
					<div class="form-group">
						<label for="temppwd" class="control-label col-md-3">Old Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" id="temppwd" name="tempPwd"  data-toggle="password"  placeholder="old password" required="required" />
							<span id="eye" class="fa fa-eye"></span>
							<h5 id="tempwdcheck"></h5>
							 <span style="color:red; float:left;">${errMsg}</span>
						</div>
						
					</div>
				   	
					<div class="form-group">
						<label class="control-label col-md-3"  for="newpwd">New password</label>
						<div class="col-md-7">
						<input type="password" class="form-control" name="newpwd" id="newpwd" data-toggle="password" placeholder="new password"/> 
					    <span id="eyenew" class="fa fa-eye"></span>
					   <h5 id="newpwdcheck"></h5>	
						</div>	
					</div>
					<div class="form-group">
						<label class="control-label col-md-3"  for="confirmPwd">Confirm Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="confirmPwd" id="confirmPwd" data-toggle="password" placeholder="confirm password" required="required"/>
						<h5 id="conpasscheck"></h5>	
						<span id="eyeconf" class="fa fa-eye"></span>
						</div>	
						
					</div>
				   
					<div class="form-group ">
						<input type="submit" id="regbtn"  value="Unlock Account" onclick="javascript:return validatePwds()"class="btn btn-primary btn-lg" />
						
					</div>
					
				</form>
				 </div>
               </div>
              </div>
              
			
			
   <div class="col-md-2"></div>
   </div>			
     
</div> 

<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!--<script src="static/js/jquery-1.11.1.min.js"></script>-->
	<script src="static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./static/js/activeformvalidation.js"></script>
	<script type="text/javascript" src="./static/js/passwordshowhide.js"></script>
	
	
	
</body>
</html>	
	