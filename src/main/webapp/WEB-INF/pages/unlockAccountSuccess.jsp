<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>


<style>

  
	   .top_bar{
	    background:	#FF5733;
	    height:40px;
	}
	
	#arrow{
	color:white;
	 font-size:20px;
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

    .header {
        background-color: #F5F5F5;
        color: #36A0FF;
        height: 70px;
        font-size: 27px;
        padding: 10px;
    }

  
  #congrate {
  width: 800px;
  height: 150px;
  padding: 15px;
  background-color: orange;
  box-shadow: 10px 10px grey;
  
}
  img{
      height:300px;
      margin-top:10px;
  
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
	 <span class="glyphicon glyphicon-user"> <a href="/login" style="color:white">Login</a></span> &nbsp;&nbsp;&nbsp;&nbsp;
	 <span class="glyphicon glyphicon-envelope"></span>HIS-HealInsurance plan ,
    <span class="glyphicon glyphicon-registration-mark"><a href="#" style="color:white">Welcome</a></span>
    </div> <!---second colum close---->
	
	</div><!---row close------>
 </div><!---container fluid close here------>
 
<br><br><br>
 
 <center><div id="congrate">
  
   <span><h3 style="color:white;font-size:20px;">congratulations your Account is successfully Unlock Now you are login click Below Link</h3> </span><span id="arrow" class="glyphicon glyphicon-arrow-right">&nbsp;<a href="/login" style="color:white;font-size:20px;">Login Now..</a>
  
 </div>
   <img src="static/img/tham2.jpg"/>
 </center>
    
   

</body>
</html>