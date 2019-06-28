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
  h1{
  color:black;
  }
  .container {
     margin-top:0px;
      padding: 80px 120px;
  -webkit-box-shadow: 0 10px 5px blue;
  -moz-box-shadow: 0 10px 5px blue;
  box-shadow: 0 10px 5px blue;
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
   .btn {
     
      background-color: gray;
      color: white;
     
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  } */
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
  footer {
      background-color: #353434;
      color: white;
      left: 0px;
      right:0px;
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
  /* .btn btn-primary btn-xs{
  max-height: 2%;
 max-width: 2%;
 
  } */
 tr{
 max-height: 2px;
 max-width: 2px;

 }
  </style>
  <Script>$(document).ready(function(){
  $("#demo").click(function(){
	  $(this).prop('value', 'Approved');
	  $(this).prop("disabled",true);
  });
 
});
</script>
 <style>
.form-radio{
width:10px !important;
height:10px!important;
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
        <li><a href="hr">HOME</a></li>
        
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Candidate
          <span class="caret"></span></a> 
          <ul class="dropdown-menu">
           <li><a href="viewappHRExternal">View Applicants</a></li>
         <li><a href="hrselectExternal">Approved list</a></li>
        <li><a href="hrrejectExternal">Rejected list</a></li>
        </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee
          <span class="caret"></span></a> 
          <ul class="dropdown-menu">
           <li><a href="viewapphrInternal">View Applicants</a></li>
         <li><a href="hrselectInteral">Approved list</a></li>
        <li><a href="hrrejectInternal">Rejected list</a></li>
        </ul>
        </li>
   
        <li><a href="feedh">FeedBack</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">${uname}
          <span class="caret"></span><i class='fas fa-user-tie' style='font-size:14px'></i></a> 
          <ul class="dropdown-menu">
          
            <li><a href="view">Profile</a></li>
             
            <li><a href="logout">LogOut</a></li>
           
          </ul>
        </li>
        
        <!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>


<body>
<form:form> 
<h3>Job Applicants</h3>

<th><center><h2>VConnect HR Evaluation Form </h2></center></th>
<table class="table table-bordered">
 <thead>
 
 
 </thead>
    <tbody>
  <tr class="info"><td><form:label path = "candidateName">Candidate Name</form:label></td>
   <td >${emp.personalDetails.firstName}${emp.personalDetails.lastName}</td></tr> 
      <tr><td><form:label path = "jobDomain"><h5>Job Applied for</h5></form:label></td>
      <td><form:input path = "jobDomain" class="form-control"  required="required"/></td></tr> 
      <tr class="info"><td><form:label path = "department"><h5>Department</h5></form:label></td>
      <td><form:input path = "department" class="form-control" required="required"/></td></tr>
      <tr><td><form:label path = "interviewer"><h5>Interviewer</h5></form:label></td>
      <td><form:input path = "interviewer" class="form-control" required="required"/></td></tr>
      
       </tbody> 
       
       
       </table>
       
      <table class="table table-bordered">
    <thead>
      
    </thead>
    <tbody>  
      <center>
        <tr class="danger"><td><form:label path = "hire" for="hire">Hiring Information After Completion of interview</form:label></td>
      <td >Select<form:radiobutton   path = "hire" name="hire"  id="hire" value="hire"></form:radiobutton></td>
      <td >Reject<form:radiobutton  path = "hire" name="hire"  id="hire" value="nothire" ></form:radiobutton></td>
        <td><center><strong>Select/Reject</strong></center><center><input type="submit" class="btn btn-info" value="Submit "/></center></td>
       </tr>

</center>
    </tbody></table>
      <table class="table table-bordered">
    <thead>

    </thead>
    <tbody>
 <tr ><td><strong>Candidate Evaluation by Interviewer</strong></td></tr>


      <tr class="info">
      <td></td>
        <td>Poor</td>
        <td>Mediocre</td>
        <td>Satisfactory</td>
         <td>Good</td>
         <td>Excellent</td>
      </tr>
      <tr ><td><form:label path = "appearance">Appearance</form:label></td>
      <td><form:radiobutton  path = "appearance" name="appearance"  value="poor" /></td>
      <td><form:radiobutton path = "appearance" name="appearance"  value="Mediocre" /></td>
      <td><form:radiobutton path = "appearance" name="appearance"  value="Satisfactory" /></td>
      <td><form:radiobutton  path = "appearance" name="appearance"  value="Good" /></td>
      <td><form:radiobutton  path = "appearance" name="appearance"  value="Excellent"/></td>
      </tr>  
      
      
      <tr class="info"><td><form:label path = "bodyLanguage">Body Language</form:label></td>
      <td><form:radiobutton  path = "bodyLanguage" name="bodyLanguage"  value="poor" /></td>
      <td><form:radiobutton  path = "bodyLanguage" name="bodyLanguage"    value="Mediocre"/></td>
      <td><form:radiobutton  path = "bodyLanguage" name="bodyLanguage"   value="Satisfactory"/></td>
      <td><form:radiobutton  path = "bodyLanguage" name="bodyLanguage"   value="Good"/></td>
      <td><form:radiobutton  path = "bodyLanguage" name="bodyLanguage"  value="Excellent"/></td>
      </tr> 



      <tr ><td><form:label   path="eyeContact">Eye Contact</form:label></td>
      <td><form:radiobutton  path = "eyeContact" name="eyeContact"  value="poor" /></td>
      <td><form:radiobutton  path = "eyeContact" name="eyeContact"    value="Mediocre"/></td>
      <td><form:radiobutton  path = "eyeContact" name="eyeContact"   value="Satisfactory"/></td>
      <td><form:radiobutton  path = "eyeContact" name="eyeContact"   value="Good"/></td>
      <td><form:radiobutton  path = "eyeContact" name="eyeContact"  value="Excellent"/></td>
      </tr>
      
      
      <tr class="info"><td><form:label path = "responsibility" >Responsible</form:label></td>
      <td><form:radiobutton  path = "responsibility" name="responsibility"   value="poor" /></td>
      <td><form:radiobutton  path = "responsibility" name="responsibility"    value="Mediocre" /></td>
      <td><form:radiobutton  path = "responsibility" name="responsibility"   value="Satisfactory" /></td>
      <td><form:radiobutton  path = "responsibility" name="responsibility"   value="Good" /></td>
      <td><form:radiobutton  path = "responsibility" name="responsibility"  value="Excellent" /></td>
      </tr> 


      <tr><td><form:label path = "dedication">Dedication</form:label></td>
      <td><form:radiobutton  path = "dedication" name="dedication"  value="poor" /></td>
      <td><form:radiobutton  path = "dedication" name="dedication"    value="Mediocre"/></td>
      <td><form:radiobutton  path = "dedication" name="dedication"   value="Satisfactory"/></td>
      <td><form:radiobutton  path = "dedication" name="dedication"   value="Good"/></td>
      <td><form:radiobutton  path = "dedication" name="dedication"  value="Excellent"/></td>
      </tr> 
      
      <tr class="info"><td><form:label path = "learning">Ability to learn</form:label></td>
      <td><form:radiobutton  path = "learning" name="learning"  value="poor" /></td>
      <td><form:radiobutton  path = "learning" name="learning"   value="Mediocre" /></td>
      <td><form:radiobutton  path = "learning" name="learning"  value="Satisfactory" /></td>
      <td><form:radiobutton  path = "learning" name="learning"  value="Good" /></td>
      <td><form:radiobutton  path = "learning" name="learning"  value="Excellent"/></td>
      </tr>

      <tr><td><form:label path = "confidence">Confidence</form:label></td>
      <td><form:radiobutton  path = "confidence" name="confidence"  value="poor" /></td>
      <td><form:radiobutton  path = "confidence" name="confidence"    value="Mediocre"/></td>
      <td><form:radiobutton  path = "confidence" name="confidence"  value="Satisfactory" /></td>
      <td><form:radiobutton  path = "confidence" name="confidence"  value="Good" /></td>
      <td><form:radiobutton  path = "confidence" name="confidence"  value="Excellent"/></td>
      </tr> 
      
      <tr class="info"><td><form:label path = "decision">Decision Making</form:label></td>
      <td><form:radiobutton path = "decision" name="decision"   value="poor"/></td>
      <td><form:radiobutton path = "decision" name="decision"    value="Mediocre"/></td>
      <td><form:radiobutton path = "decision" name="decision"   value="Satisfactory"/></td>
      <td><form:radiobutton path = "decision" name="decision"   value="Good"/></td>
      <td><form:radiobutton path = "decision" name="decision"  value="Excellent"/></td>
      </tr>
      
      <tr><td><form:label path = "leadership">Leadership</form:label></td>
      <td><form:radiobutton path = "leadership" name="leadership"  value="poor"  /></td>
      <td><form:radiobutton path = "leadership" name="leadership"    value="Mediocre"/></td>
      <td><form:radiobutton path = "leadership" name="leadership"  value="Satisfactory" /></td>
      <td><form:radiobutton path = "leadership" name="leadership"  value="Good" /></td>
      <td><form:radiobutton path = "leadership" name="leadership"  value="Excellent"/></td>
      </tr>
      
      <tr class="info"><td><form:label path = "creativity">Creativity</form:label></td>
      <td><form:radiobutton path = "creativity" name="creativity"   value="poor"/></td>
      <td><form:radiobutton path = "creativity" name="creativity"   value="Mediocre" /></td>
      <td><form:radiobutton path = "creativity" name="creativity"   value="Satisfactory"/></td>
      <td><form:radiobutton path = "creativity" name="creativity"  value="Good" /></td>
      <td><form:radiobutton path = "creativity" name="creativity"  value="Excellent"/></td>
      </tr>
      
      <tr><td><form:label path = "timeManaging">Time Management</form:label></td>
      <td><form:radiobutton path = "timeManaging" name="timeManaging"   value="poor"/></td>
      <td><form:radiobutton path = "timeManaging" name="timeManaging"   value="Mediocre" /></td>
      <td><form:radiobutton path = "timeManaging" name="timeManaging"  value="Satisfactory" /></td>
      <td><form:radiobutton path = "timeManaging" name="timeManaging"   value="Good"/></td>
      <td><form:radiobutton path = "timeManaging" name="timeManaging"  value="Excellent"/></td>
      </tr>
      
      <tr class="info"><td><form:label path = "riskTaking">Risk Taking</form:label></td>
      <td><form:radiobutton path = "riskTaking" name="riskTaking"  value="poor"/></td>
      <td><form:radiobutton path = "riskTaking" name="riskTaking"    value="Mediocre"/></td>
      <td><form:radiobutton path = "riskTaking" name="riskTaking" value="Satisfactory" /></td>
      <td><form:radiobutton path = "riskTaking" name="riskTaking"   value="Good"/></td>
      <td><form:radiobutton path = "riskTaking" name="riskTaking"  value="Excellent"/></td>
      </tr>
          </tbody>
 </table>
</form:form>
</body>
</html>





