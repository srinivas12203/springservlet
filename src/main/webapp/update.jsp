<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored = "false" %>
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    
<title>Insert title here</title>
 <style type="text/css">
body {
	font-family:  Arial;
	}	

div#list{
display:inline;
}

/* .navbar a {
    float: right;
    font-size: 16px;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
 */
/* .dropdown {
    float: right;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: black;
    padding: 14px 16px;
    background-color: #F2F2F2;
    font-family: inherit;
    margin: 0;
} */

/* header#head{
top:0px;
min-height:70px;
border-bottom: #e8491d 3px solid;
} */

/* .navbar a:hover, .dropdown:hover .dropbtn {
    background-color: #58D3F7;
} */

/* .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
} */

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
  
 
.box{  
  padding:20px;
  margin: 100px auto;
  width: 300px;
  height: 50px;
	background-color:green;
  background:transparent;
  filter: alpha(opacity=30);
  filter: progid: DXImageTransform.Microsoft.Alpha(opacity=30);
  -moz-opacity: 0.30;
   color:gray;
  zoom: 1;
}


/* /*table css  */
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    overflow: scroll;
}

td, th {

  
    text-align: left;
    padding: 8px;
   
}
th{
background:pink;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
.container{
width: 100%;
height: 100%;
overflow:scroll;

}
#apply{
background-color:pink;
border-radius: 25px;
   
    padding: 20px,20px; 
    width: 100px;
    height: 40px;  
    cursor: pointer;  
} 


</style>
</head>
<body>


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
            <li><a href="ManageApplicants1">Applied Candidates</a></li>
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
        <li><a href="viewadminprofile">Profile</a></li>
           <li><a href="viewfeedback">View Feedback</a></li> 
          <li><a href="logout">Logout</a></li>
         
        </ul>
      </li>
      </ul>
    </div>
  </div>
</nav>
<div class="image">
<!-- <img alt="" src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" style="position:absolute""; width="100%" height="100%"> -->
<div class="container" style="position:relative;">
<br><br>
<center><h2>View Job Information</h2></center> 
 <br><br>
 <center>
 <form:form>
      <table style="width:100%" "color=white">
         <tr>
            <th>Job Id</th>
            <th>jobDomain</th>
            <th>Job Designation</th>
            <th>Location</th> 
            <th>Project Manager</th> 
            <th>Project Name</th> 
             
            <th>Trpannel</th>
            <th>Hrpannel</th>
           <th>Vancancy</th>
         </tr>
       <tr>
          <td>  <form:input path="jobId"/></td>
            <td>  <form:input path="jobDomain"/></td>
                <td><form:input path="jobDesignation"/></td>
                  <td><form:input path="location"/></td>
                  <td><form:input path="projectManager"/></td>
                  <td><form:input path="projectName"/></td>
                  <td><form:input path="Trpannel"/></td>
                  <td><form:input path="Hrpannel"/></td>
                  <td><form:input path="vacancies"/></td>
                  
             <td> <button   class="btn btn-blue-grey"  formaction="save${vlist.jobId}">save</button> </td> 
             
                <c:forEach items="${jlist}" var="j">
              <tr>
             <td>${j.jobId}</td>
            <td>${j.jobDomain}</td>
            <td>${j.jobDesignation}</td>
             <td>${j.location}</td>
             <td>${j.projectManager}</td>
             <td>${j.projectName}</td>
               <td>${j.trpannel}</td>
               <td>${j.hrpannel}</td>
                <td>${j.vacancies}</td>
             <td> <button   class="btn btn-blue-grey"  formaction="update1${j.jobId}">update</button> </td> 
             </tr></c:forEach>
         </tr>
      </table> 
      </form:form>
      </center> 
      </div>
      </div>
     
      <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires", 0);
if(session.getAttribute("Id")==null)
response.sendRedirect("index1.jsp");
%>
     
</body>
</html>