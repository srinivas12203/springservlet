<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@page isELIgnored="false" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>  <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
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
 
  .container {
      padding: 80px 120px;
      width:100%;
      left:0px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
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
  .modal-header, .close {
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
  }<!-- Footer tags -->


div#list{
display:inline;
}


/* Footer */

	div#footer
{
font-family: verdana;
color:white;
background:#353434 ;
bottom:0px;
position:fixed;
width:100%;
text-align:center;
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
body{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
    width:100%;
    height:100%;
}
.profile-img img{
    width: 70%;
    height: 70%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 150%;
    padding: 8%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}

<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
   float: left;
    width: 30%;
    height: 250px;
   /*  left-margin:30; */
}

/* Style the buttons inside the tab */
.tab button {
   
    
     color: black; 
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ff9224;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ffc890;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    width: 50%;
    border-left: none;
    height:600px
}

.tabcontent1{

  	float: right;
    padding: 0px 12px;
    width: 70%;
    border-left: none;
    height: 300px;
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
        <li><a href="tr">HOME</a></li>
        
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Candidate
          <span class="caret"></span></a> 
          <ul class="dropdown-menu">
           <li><a href="viewappTRExternal">View Applicants</a></li>
         <li><a href="trselectExternal">Approved list</a></li>
        <li><a href="trrejectExternal">Rejected list</a></li>
        </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee
          <span class="caret"></span></a> 
          <ul class="dropdown-menu">
           <li><a href="viewappTRInternal">View Applicants</a></li>
         <li><a href="trselectInteral">Approved list</a></li>
        <li><a href="trrejectInternal">Rejected list</a></li>
        </ul>
        </li>
     <li><a href="feedt">FeedBack</a></li>
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">${uname}
          <span class="caret"></span><i class='fas fa-user-tie' style='font-size:14px'></i></a> 
          <ul class="dropdown-menu">
         
             <li><a href="viewtrprofile">Profile</a></li>
            <li><a href="logout">LogOut</a></li>
           
          </ul>
        </li>
        
        <!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>


<br><br>
<div>
<form:form action="edit" method="post">
<table>

  <tr>
     <td>
     
        <div class="thumbnail">
      <div class="profile-img">
                            <img src="C:\Users\lakshmin\Desktop\profilePic2.png" width="50%" height="50%" alt="profile"/>
               <div class="file btn btn-lg btn-primary">
                              
                                <input type="file" name="file"> <h4 align="center" ></h4>
                       </div>
                  
           </div>
     </div>
    </td>
    <td> <div class="profile-head"><h1>${emp.personalDetails.firstName}${emp.personalDetails.lastName}</h1><h3>${emp.employeeRole}</h3></div> 
                                    
      </td>
     <td> 
      <!-- <a class="profile-edit-btn" name="btnAddMore"  href="updateProfile.jsp"style:text-decoration="none">Edit Profile</a> -->        
       <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/> 
  </td>
   </tr>
  </table>
  </form:form>
</div>

<br><br>
 

<div><center>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Profile')" id="defaultOpen">Profile</button>
  <button class="tablinks" onclick="openCity(event, 'EducationalProfile')">Educational Profile</button>
    <button class="tablinks" onclick="openCity(event, 'Experience')">Experience</button>
  <button class="tablinks" onclick="openCity(event, 'SkillSet')">Skill Set</button>
</div>
<form:form>
<div id="Profile" class="tabcontent">
  <table>         
                   <tr><td><h4>EmployeeId:</h4></td> <td><p>${emp.employeeId}</p></td></tr> 
                   <tr><td><h4>Name:</h4></td> <td><p>${emp.personalDetails.firstName}</p></td></tr>
                <tr><td><h4>Email:</h4></td> <td><p>${emp.basicDetails.emailId}</p></td></tr> 
               <tr><td><h4>Current Address:</h4></td><td><p>${emp.personalDetails.presentAddress}</p></td></tr> 
                <tr><td><h4>PhoneNumber:</h4></td> <td><p>${emp.basicDetails.contactNumber}</p></td></tr>
                   </table>      
</div>
<div id="SkillSet" class="tabcontent" >
  <h3>Skill Set</h3>
  <table>
  <tr><td>${emp.skillSet.technology}</td></tr> 
  </table>
  
</div>
<div id="EducationalProfile" class="tabcontent">
<table>
<tr><td><h4>Institution:</h4></td><td>${emp.educationalDetails.pGCollegeName}</td></tr>
<tr><td><h4>PG CGPA/% :</h4></td><td>${emp.educationalDetails.pGPercentage}</td></tr>
<tr><td><h4>Institution:</h4></td><td>${emp.educationalDetails.uGCollegeName}</td></tr>
<tr><td><h4>Graduation CGPA/% :</h4></td><td>${emp.educationalDetails.uGpercentage}</td></tr>
<tr><td><h4>HSC School:</h4></td><td>${emp.educationalDetails.intermediateCollegeName}</td></tr>
<tr><td><h4>XII CGPA/% :</h4></td><td>${emp.educationalDetails.intermediatePercentage}</td></tr>
<tr><td><h4>SSC School :</h4></td><td>${emp.educationalDetails.sscSchoolName}</td></tr>
<tr><td><h4>X CGPA/% :</h4></td><td>${emp.educationalDetails.sscPercentage}</td></tr>
</table>
</div>

<div id="Experience" class="tabcontent" >
  <h3>Experience</h3>
  <table>
 <tr><td><h4>Recently Worked Project:</h4></td><td> <tr><td>${emp.experienceDetails.recentProject}</td></tr>
  <tr><td><h4>Year of Experience:</h4></td><td> <tr><td>${emp.experienceDetails.yearOfExperience}</td></tr>
  </table>
  
</div>
</div>



<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</form:form>
</div>


<!-- <tr>
   <td colspan=2 >   </td>
   </tr>
   <tr>
   <td>
      <div class="profile-work">      
        <ul class="nav nav-tabs" id="myTab" role="tablist">
         <li class="nav-item">
        
           <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><p><h3>profile</h3></p></a>
             </li>
           <li class="nav-item">
         <a class="nav-link" id="profile-tab" data-toggle="tab" href="#postGraduation" role="tab" aria-controls="profile" aria-selected="false"><p><h3>Educational Profile</h3></p> </a>
      </li>
            <li class="nav-item">
         <a class="nav-link" id="skillprofile-tab" data-toggle="tab" href="#skill" role="tab" aria-controls="skilprofile" aria-selected="false"><p><h3>Skill Set</h3></p> </a>
      </li>
   </ul>     
        </div>
        </td>
         <td>
         <div class="tab-content profile-tab" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
               <table>         
                   <tr><td><h3>UserId:</h3></td> <td><p>Sneha123</p></td></tr> <br>
                   <tr><td><h3>Name:</h3></td> <td><p>Sneha</p></td></tr>
                <tr><td><h3>Email:</h3></td> <td><p>sneha24@gmail.com</p></td></tr> <br>
                <tr><td><h3>PhoneNumber:</h3></td> <td><p>8765687543</p></td></tr> <br>
                   </table>                        
        </div>
         <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <table>
           
            </table>
        
        
       </div>
                      
    
     </td>
     
   </tr>
     --> 

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires", 0);
if(session.getAttribute("Id")==null)
response.sendRedirect("Employeepage.jsp");
%>

 
 <div id="footer">
  
		<span style="font-style:oblique;"> CopyRight@Virtusa
 
</body>
</html>