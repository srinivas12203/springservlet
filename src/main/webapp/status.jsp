<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  th{
  background-color: gray;
  color:white;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
      width:100%;
      left:0px;
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
      
      background-color: #333;
      color: #f1f1f1;
      
   
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: gray;
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
      color: red !important;
      background-color: white !important;
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
   #footer {
   font-family: Montserrat, sans-serif;
      margin-bottom: 5px;
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
  </style>
  <script>$(document).ready(function(){
  $("#demo").click(function(){
	  $(this).prop('value', 'Approved');
	  $(this).prop("disabled",true);
  });
 
});
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
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
        <li><a href="homepage">HOME</a></li>
        
        <li><a href="viewjobInternal">JOBS</a></li>
        <li><a href="status">STATUS</a></li>
        
            <li><a href="feedback">FEEDBACK</a></li>
        
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><b>${uname}</b>
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="view">Profile</a></li>
           <li><a href="logout">Logout</a></li>
          
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<br>
<br>
<body>
<div id="abc" class="container">
  <h3 class="text-center">Welcome to Vconect!!!</h3>
 <p class="text-center"><em>Your Current Status for the Applied Job</em></p>
<form:form>
<center><strong><h2>Job Status :</h2></strong></center>
<table class="table table-hover">

 	<tr>    <th>Employee Id</th> <td>${j.employeeId}</td></tr>
        <tr>    <th>EmployeeName</th><td>${j.personalDetails.firstName}  ${j.personalDetails.lastName}</td></tr>
        <c:forEach items="${j.job}" var="j1">
          <tr><th>JobId</th><td>${j1.jobId}</td></tr>
            <tr><th>Job Domain</th><td>${j1.jobDomain}</td></tr>
             <tr><th>Job Location</th><td>${j1.location}</td></tr>
</c:forEach>           
         <tr>    <th>status</th><td>${j.status}</td> </tr>



</tr>

</table>
</form:form>

</div>

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires", 0);
if(session.getAttribute("Id")==null)
response.sendRedirect("Employeepage.jsp");
%>

<div id="footer">
 <center>CopyRight@Virtusa</center>
</div> 
</body>
</html>
