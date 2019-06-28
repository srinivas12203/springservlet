<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<html lang="en">
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
   
  <script>
$(document).ready(function(){
  $("#demo").click(function(){
	  $(this).prop('value', 'Approved');
	  $(this).prop("disabled",true);
  });
 
});
</script> 
   
   
    <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
      margin-left: 4px;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
     margin-left: 0px;
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
     
      background-color:gray;
      color:white;
      
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
  
/* Footer */

 #footer {
   font-family: Montserrat, sans-serif;
      margin-bottom: 0px;
      background-color:#353434;
      border: 0;
      padding:15px;
      color:white;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  #footer a {
      color: #f5f5f5;
  }
  #footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .space{
 	text-align: center;
  }
  
  table {
    font-family: arial, sans-serif;
  
    width: 100%;
    overflow: scroll;
    margin-left: 0px;
}

td, th {

  
    text-align: left;
    padding: 8px;
   
}
th{
background:pink;
}

  </style>
</head>


<div class="container">
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
       <!--  <li class="dropdown">
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
            <li><a href="ManageInternalApplicants">Applied Candidates</a></li>
            <li><a href="adminselect1">Selected Candidates</a></li>
           <li><a href="adminreject1">Rejected Candidates</a></li>
               
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
        
        
         
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Jobs
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="insertjob">Post Job</a></li>
            <li><a href="viewjob1">View Jobs</a></li>
           <li><a href="delete">Delete Jobs</a></li>
           <li><a href="update">Update Jobs</a></li>
          </ul>
        </li> -->
   
        
      
        <li><a href="viewfeedback">View Feedback</a></li> 
         <li><a href="viewadminprofile">Profile</a></li>
           <li>   <a href="#">${uname}</a></li>
        <li><a href="logout">Logout</a></li>
         
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<br>
<br>
<br>
<div id="abc" class="container">
  <h3 class="text-center">Welcome to Vconect!!!</h3>
  
<c:if test="${empty viewlist}">
    <p class="text-center"><em><span style:color="blue"></span>Currently No applicants applied</em></p>
</c:if>
<c:if test="${not empty viewlist}">
   </c:if> 
<p class="text-center"><em><span style:color="blue"></span>Applicants for respective Job</em></p>
<form:form>
  <h2><center>Job Applications</center></h2>
  <p></p>  
  <input class="form-control" id="myInput" type="text" placeholder="Search according to job domain ,Designation,Experience..">
  <br>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
      <th>CandidateId</th>
        <th>CandidateName</th>
      
        <th>JobDomain</th>
        <th>JobDesignation</th>
         <th>PreviousCompany</th>
        <th>Experience</th>
        
       
        <th>Status</th>
         <th>Resume</th>
    <tbody id="myTable">
  
                   <c:forEach items="${viewlist}" var="j">
<tr>
<td><c:out value="${j.candidateId}"></c:out></td>
 <td><c:out value="${j.firstName}  ${j.lastName}"></c:out></td>
<td class="space"><c:out value="${j.jobDomain}"></c:out></td>
<td><c:out value="${j.jobDesignation}"></c:out></td>
<td><c:out value="${j.previousCompany}"></c:out></td>
 <td><c:out value="${j.experience}"></c:out></td>
  <td><c:out value="${j.status}"></c:out></td>
 <td><a href="${j.resume}">View Resume</a></td> 
<td><button  class="btn btn-blue-grey" formaction="adminApprove${j.candidateId}" id="demo" type = "submit" >Approve</button></td>
<td><button  class="btn btn-blue-grey" formaction="adminReject${j.candidateId}" id="demo" type = "submit" >Reject </button></td> 
</tr>
</c:forEach>
    </tbody>
  </table>
  
  </form:form>
</div>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<br>
<br><br><br><br><br><br><br><br><br><br>

<footer>
<div class="footer-copyright text-center py-3">© 2018  Copyright @Vconnect
      
    </div>
    <!-- Copyright -->

  </footer>
</body>

</html>





