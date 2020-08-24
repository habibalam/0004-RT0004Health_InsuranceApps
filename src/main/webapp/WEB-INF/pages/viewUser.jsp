<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Information System</title>
<link href="./static/css/bootstrap.min.css" rel="stylesheet">
<link href="../static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>





<style>
   .top_bar{
	    background:	#FF5733;
	    height:40px;
	}
  
  span{
	   margin-right:5px;
	}
	.contact{ color:white;}
	P1{color:white;font-size:24px;}
	
	

    .map {
        min-width: 300px;
        min-height: 300px;
        width: 100%;
        height: 100%;
    }
  
</style>




</head>
<body id="tb">
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
     <span class="glyphicon glyphicon-user"></span> <a href="/getuserDetails" style="color:white">All Users</a>
   
    </div> <!---second colum close---->
	
	</div><!---row close------>
 </div><!---container fluid close here------>
  
                
	<div class="container text-center" id="tasksDiv">
				<h3 style="color:red">All Users</h3>
				
                <select name="roles" id="roles" class="form-control">
				   <option value="">Select-Roles</option>
				   <option value="adminUSer">AdminUser</option>
				   <option value="caseWorker">CaseWorker</option>
				</select>
				<hr>
		        
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>S.No</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Email</th>
								<th>Gender</th>
								<th>Roles</th>
								<th>Account-Status</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
					<tbody>
					
					 <c:forEach var="user" items ="${Listrole}"  varStatus="index">
						    <tr>
									<td>${index.count}</td>
									<td>${user.firstName}</td>
									<td>${user.lastName}</td>
									<td>${user.email}</td>
									<td>${user.gender}</td>
									<td>${user.roles}</td>
									<td>${user.actStatus}</td>
									
									<td><a href="/editUser?userId=${user.userId}"><span class="glyphicon glyphicon-pencil" id="editButton"></span></a></td>	
									 		
									<td><a href="#"><span class="glyphicon glyphicon-trash "></span></a></td>
								</tr>
	                      
	 
                         </c:forEach>
					 
					
						    
	     	        </tbody>
		            </table>
	
</div>	

<!-- -model from here -->

  <!-- Modal 2-->
<div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

 <div role="document" class="modal-dialog" id="content">
 <div class="container"  class="modal-content">
  <div class="row">
   <div class="col-sm-6">
    <div class="panel panel-primary">
	 <div class="panel panel-heading" style="color:white">Update User
	 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
     </button>
	 </div>
	 
	  <div class="panel panel-body">
	   <form action="/updateCourse"  method="put">
	  
	    <div class="col-sm-12">
		<label for="cid" class="col-md-lable">User Id</label>
	    <input type="text" name="userId" id="edituserId" class="form-control" readonly="readonly">
		</div>
		
	   
	    <div class="col-sm-12">
		<label for="courseName" class="col-md-lable">First Name</label>
	    <input type="text" name="firstName" id="editfirstName" class="form-control">
		</div>
		
		<div class="col-sm-6">
		<label for="courseCode" class="col-md-lable">Last Name</label>
	    <input type="text" name="lastName" id="editlastName" class="form-control">
	    </div>
	    
	    <div class="col-sm-6">
		<label  for="fee" class="col-md-lable">Email</label>
	    <input type="text" name="email" id="editemail" class="form-control">
	    </div>
		
		 <div class="col-sm-6">
		<label  for="localTime" class="col-md-lable">Roles</label>
	    <input type="text" name="roles" id="editroles" class="form-control">
	    </div>
		
		<div class="col-sm-6">
		<label for="faculty" class="col-md-lable">Gender</label>
	    <input type="text" name="gender" id="editgender" class="form-control">
	    </div>
		
		
		<div class="col-sm-6">
		<label for="duration" class="col-md-lable">Status</label>
	    <input type="text" name="actStatus" id="editactStatus" class="form-control">
	    </div>
	    
		<div class="col-sm-9">
		<div class="form-group">  
        <input type="submit" name="submit" id="update" class="btn btn-primary " style="width:100px;float:right; margin-top:40px"></button>   
         
       </div> 
	   </div> 
	   </form>
	  </div>
    </div>
  </div>
</div>
</div> 
</div> 
  
 </div>
 
 




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!--<script src="../static/js/jquery-1.11.1.min.js"></script>-->
	<script src="../static/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../static/js/main.js"></script>
	<script type="text/javascript" src="../static/js/editUser.js"></script>
	


	
</body>
</html>	
	