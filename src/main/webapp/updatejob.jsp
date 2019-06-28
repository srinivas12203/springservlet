<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
   
   
<!-- Footer tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <title>Spring MVC Form Handling</title>
      <style type="text/css">
body {
	font-family:  Arial;
	}	

/* .navbar {
    overflow: hidden;
    background-color: #F2F2F2;
    font-family: Arial, Helvetica, sans-serif;
    margin: 0px;    
} */

div#list{
display:inline;
}


/* Footer */

	div#footer
{
font-family: verdana;
color:white;
background:black ;
bottom:0px;
position:fixed;
width:100%;
padding:8px;
float:right;
}
	
.fa {
  padding: 5px;
  font-size: 15px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
 
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
} 

.modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
      }
      
      .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  
 
  
  
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  
</style>
      
   </head>

   <body>
   <section>
<header id = "head">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" >
      <img style="max-width:150px; max-height:80px; margin-top: -7px ;margin-bottom:-10px ;"
             src="C:\Users\naganeelimad\Desktop\final.png">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="adminHome">HOME</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Candidates
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ManageApplicants">Applied Candidate</a></li>
            <li><a href="adminselect">Selected Candidates</a></li>
           <li><a href="adminreject">Rejected Candidates</a></li>
               
          </ul>
        </li>
         
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employees
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ManageApplicants1">Applied Candidates</a></li>
            <li><a href="adminselect1">Selected Candidates</a></li>
           <li><a href="adminreject1">Rejected Candidates</a></li>
               
          </ul>
        </li>
        <!-- <li><a href="#tour"></a></li>
 -->       
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Jobs
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="insertjob">Post Job</a></li>
            <li><a href="viewjob1">View Jobs</a></li>
           <li><a href="delete">Delete Jobs</a></li>
           <li><a href="update">Update Jobs</a></li>
          </ul>
        </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">UName<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewprofile">View Profile</a></li>
          <li><a href="feedback12">Feedback</a></li> 
          <li><a href="#">Logout</a></li>
         
        </ul>
      </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
</header>

</section>

<section>
<div class="image">
<!-- <img alt="" src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" style="position:absolute""; width="100%" height="100%"> -->
<div class="container" style="position:relative;">
<br><br>
<center><h2>Enter Job Details For Update</h2></center>
<br>
      <form:form action ="/updateJob" method = "GET">
        <center>
         <table>
            <tr>
               <td><form:label path = "jobId"><h5>JobId:</h5></form:label></td>
               <td><form:input path = "jobId" class="form-control"/></td>
            </tr>
          <tr>
                <td><form:label path = "jobDomain"><h5>jobDomain:</h5></form:label></td>
               <td><form:input path = "jobDomain" class="form-control" /></td>
            </tr>
            <tr>
               <td><form:label path = "jobDesignation"><h5>JobDesignation:</h5></form:label></td>
               <td><form:input path = "jobDesignation" class="form-control"/></td>
            </tr>
           
            <tr> 
               <td><form:label path = "location"><h5>Location:</h5></form:label></td>
               <td><form:input path = "location" class="form-control"/></td>
            </tr>
            <tr>
               <td colspan = "2">
               <br>
                <center>  <input type = "submit" value = "Submit"/> </center>
               </td>
            </tr>
         </table>  
         </center>
      </form:form>

</div>
</div>
</section>
<section> 
 <div id="footer">
  <i class='fab fa-facebook' style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i class='fab fa-twitter'   style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-google'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-linkedin'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
		<span style="font-style:oblique;"> CopyRight@Virtusa
 </section>	
      
   </body>
   
</html>