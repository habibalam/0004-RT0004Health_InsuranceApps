<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<style>
p {
	font-size: 150%;
}

span {
	float: left;
}

.error {
	color: red;
}

#gender{
     margin-right:50px;
}

</style>
<head>

<title>Health Insurance Registration</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>User Registration:...</title>

<style>
   .top_bar{
	    background: #FF5733;
	    height:40px;
	}
  
  span{
	   margin-right:5px;
	}
	.contact{ color:white; padding:5px; font-size:16px;}
	P1{color:white;font-size:24px;}
	
	

    .map {
        min-width: 300px;
        min-height: 300px;
        width: 100%;
        height: 100%;
       
    }
 body {
  background-image: url("paper.gif");
  background-color: #cccccc;
  }
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
     <span class="glyphicon glyphicon-user"> <a href="/#" style="color:white">Login</a></span> &nbsp;&nbsp;&nbsp;&nbsp;
     <span class="glyphicon glyphicon-registration-mark"><a href="/register" style="color:white">Register</a></span>
     <span class="glyphicon glyphicon-registration-mark"><a href="/#" style="color:white">USA HIS POLICY</a></span>
     
    </div> <!---second colum close---->	
	</div><!---row close------>
 </div><!---container fluid close here------>

    
	
	


<div class="container text-center">	
<div class="row">
 <div class="col-md-3"></div>
   
   
		
        <div class="col-md-6" >
        <p style="color:#334CFF"><u>Admin Registration</u></p>
		<div class="panel panel-success">
			<div class="panel panel-heading">User Registration</div>
			<p>
				<font color="orange" text-align:center>${successMsg}</font>
			<p>
			 
			 <p>
				<font color="orange" text-align:center>${errMsg}</font>
			<p>
			 
			<div class="panel panel-body">
				<form class="form-horizontal" id="validForm" 
					action="save" modelAttribute="userReg" method="POST">
					<input type="hidden" name="id" />
					<div class="form-group">
						<label class="control-label col-md-3" for="fname">FirstName</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstName" id="fname" placeholder="FIRST NAME"  required="required"/>
						</div>
                     
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="lname">Last
							Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" id="lname"
								name="lastName" placeholder="LAST NAME" required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">User Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email" id="email"
								form:errors path="email" cssClass="error" placeholder="EMAIL"
								required="required" /> <span id="emailMsg"
								style="color: red; align: right"></span>
						</div>
						
					</div>
                  
					<div class="form-group" id="gender">
					<label class="control-label col-md-3">Gender</label>
						<label for="male" >Male</label> 
						<input type="radio" id="male" name="gender" value="male" required="required">
						 <label	for="female">Female</label> 
					    <input type="radio" id="female" name="gender" value="female" required="required">
						 
					 </div>
                     
                     <div class="form-group">
						<label class="control-label col-md-3">Roles</label>
						<div class="col-md-7">
							<select name="roles" id="roles" class="form-control">
								<option value="adminUSer">AdminUser</option>
								<option value="caseWorker">CaseWorker</option>
							</select>
						</div>
					</div>
                     
                     

					<div class="form-group ">
						<input type="submit" id="regbtn" name="submit" class="btn btn-primary"
							value="Register" /> <input type="reset" class="btn btn-success"
							value="reset" />
					</div>

				</form>
			</div>
		</div>
		
	</div>
	
   
<div class="col-md-3"></div>
</div>
</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!--<script src="static/js/jquery-1.11.1.min.js"></script>-->
	<!--<script src="static/js/jquery-3.5.1.min.js"></script>-->
	<script src="static/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="./static/j/validate.js"></script>
   <script type="text/javascript" src="./static/js/main.js"></script>
   <script type="text/javascript" src="./static/js/dropDownList.js"></script>
   
 
 

</body>
</html>