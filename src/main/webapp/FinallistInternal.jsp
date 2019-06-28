<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 50%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: white;
      color:black;
  }
  .bg-1 h3 {color: black;}
  .bg-1 p {font-style: inherit;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
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
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
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
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
   th{
  background-color: gray;
  color: white;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  
/* Footer */
div#footer {
	font-family: verdana;
	color: white;
	background: #000000;
	bottom: 0px;
	position: fixed;
	width: 100%;
	padding: 8px;
	float: right;
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
  </style>
  <Script>$(document).ready(function(){
  $("#demo").click(function(){
	  $(this).prop('value', 'Approved');
	  $(this).prop("disabled",true);
  });
 
});
</script>
</head>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

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
             src="C:\Users\lakshmin\Desktop\final.png">
     
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="adminHome">HOME</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Candidates
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ManageApplicants">Applied Candidates</a></li>
            <li><a href="adminselect">Selected Candidates</a></li>
           <li><a href="adminreject">Rejected Candidates</a></li>
         
               
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employees
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ManageInternalApplicants">Applied Candidates</a></li>
            <li><a href="adminselectInternal">Selected Candidates</a></li>
           <li><a href="adminrejectInternal">Rejected Candidates</a></li>
               
          </ul>
        </li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CandidateStatus
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="trselectExternalAdmin">Tr ApprovedList</a></li>
            <li><a href="trrejectExternalAdmin">Tr RejectedList</a></li>
           <li><a href="hrselectExternalAdmin">FinalList </a></li>
         
               
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">EmployeeStatus
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="trselectInternalAdmin">Tr ApprovedList</a></li>
            <li><a href="trrejectInternalAdmin">Tr RejectedList</a></li>
           <li><a href="hrselectInternalAdmin">FinalList </a></li>
         
               
          </ul>
        </li>
        
        
        
        <!-- <li><a href="#tour"></a></li>
 -->     
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Jobs
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="insertjob">Post</a></li>
            <li><a href="viewjob1">View Jobs</a></li>
           <li><a href="delete">Delete Jobs</a></li>
           <li><a href="update">Update Jobs</a></li>         
          </ul>
        </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">${uname}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="view">View Profile</a></li>
           <li><a href="feedback12">Feedback</a></li> 
          <li><a href="logine">Logout</a></li>
         
        </ul>
      </li>
      </ul>
    </div>
  </div>
</nav>
<body>
<form:form><br><br><br>
<h3><center>HR Selected List</center></h3>
<table class="table table-hover">

 	    <th>Employee Id</th>
            <th>EmployeeName</th>
            <th>JobId</th>
            <th>JobDomain</th>
            <th>Experience</th>
            <th>PreviousProject</th>
            <th>skillSet</th>
             <th>status</th>
            

<c:forEach items="${vlist}" var="j">
<tr>
<td><c:out value="${j.employeeId}"></c:out></td>

<td><c:out value="${j.personalDetails.firstName}  ${j.personalDetails.lastName}"></c:out></td>

<c:forEach items="${j.job}" var="j1">
<td><c:out value="${j1.jobId}"></c:out></td>
                                        
<td><c:out value="${j1.jobDomain}"></c:out></td>
 </c:forEach>

<td><c:out value="${j.experienceDetails.yearOfExperience}"></c:out></td>

<td><c:out value="${j.experienceDetails.recentProject}"></c:out></td>

<td><c:out value="${j.skillSet.technology}"></c:out></td> 
<td><c:out value="${j.status}"></c:out></td> 

<%-- <td><button formaction="trApproveExternal${j.candidateId}" id="demo" type = "submit" >Approve</button></td>
<td> <button formaction="trRejectExternal${j.candidateId}" id="demo" type = "submit" >Reject </button></td> --%>
</tr>
</c:forEach>
</table>
</form:form>
</body>
</html>