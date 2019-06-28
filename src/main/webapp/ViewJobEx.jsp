<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
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
      height:60%;
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
  .btn {
      
      background-color: gray;
      color: white;
      
  }
  th{
  background-color: gray;
  color: white;
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
      background-color:#353434;
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
  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  
  #One
  {
  	color:blue;
  }
  </style>
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
        <li><a href="start">HOME</a></li>
          <li><a href="#">External Candidate</a></li>
        
        
       
      </ul>
    </div>
  </div>
</nav>


 <div id="abc" class="container">
  <h3 class="text-center">Welcome to <span id="One"> Vconnect!!!</span></h3>
  <p class="text-center"><em>Jobs That are Recommonded for U</em></p>

<form:form>
<table class="table table-hover">
<tr>
<th>Job Id</th>
<th>Job Domain</th>
<th>Job Designation</th>
<th>Job Location</th>

<th>Apply</th>

</tr>
<c:forEach items="${jlist}" var="j">
<tr>
<td><c:out value="${j.jobId}"></c:out></td>
<td><c:out value="${j.jobDomain}"></c:out></td>
<td><c:out value="${j.jobDesignation}"></c:out></td>
<td><c:out value="${j.location}"></c:out></td>
<td> <button   class="btn btn-blue-grey"  formaction="register${j.jobId}">Apply</button> </td> 

</tr>
</c:forEach>
</table>
</form:form>
</div>
<br><br><br><br><br><br><br>

 <div id="footer">
 <center>CopyRight@Virtusa</center>
</div> 
</body>
</html>