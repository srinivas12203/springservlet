<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
   
   
 
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
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
    </ul>
  </div>
</nav> -->

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
            <li><a href="ManageApplicants">Applications</a></li>
            <li><a href="adminselect">Shortlisted Applications</a></li>
           <li><a href="adminreject">Rejected Applications</a></li>
         
               
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employees
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ManageInternalApplicants">Applications</a></li>
            <li><a href="adminselectInternal">Approved Employees</a></li>
           <li><a href="adminrejectInternal">Rejected Employees</a></li>
               
          </ul>
        </li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CandidateStatus
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="trselectExternalAdmin">Level-I selectedList</a></li>
            <li><a href="trrejectExternalAdmin">Level-I RejectedList</a></li>
           <li><a href="hrselectExternalAdmin">Final List </a></li>
         
               
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">EmployeeStatus
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="trselectInternalAdmin">Level-I SelectedList</a></li>
            <li><a href="trrejectInternalAdmin">Level-I RejectedList</a></li>
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
<br><br><br><br>
<center><h2> Post New Job...</h2></center>
<br>
      <form:form action = "addJob" method = "GET">
        <center>
         <table>
            <tr>
               <td><form:label path = "jobId"><h5>Job Id:</h5></form:label></td>
               <td><form:input path = "jobId" class="form-control" required="required"/></td>
            </tr>
            <tr>
               <td><form:label path = "jobDomain"><h5>Job Domain:</h5></form:label></td>
               <td><form:input path = "jobDomain" class="form-control"  required="required"/></td>
            </tr>
            <tr>
               <td><form:label path = "jobDesignation"><h5>Job Designation:</h5></form:label></td>
               <td><form:input path = "jobDesignation" list="Designation" class="form-control" required="required"/></td>
                <datalist id="Designation">
                	 <option value="Associate Engineer"/>
              		 <option value="Engineer"/>
 					 <option value="Consultant"/>
 					 <option value="Senior Consultant"/>
 					 <option value="Team Leader"/>
 					 <option value="Business Analyst"/>
 					  <option value="Architect"/>
 					  <option value="Senior Architect"/>
 					   <option value="Business Analyst"/>
 					<option value="Manager"/>
 					<option value="Senior Manager"/>
            </tr>
            
            <tr>
               <td><form:label path = "location"><h5>Job Location:</h5></form:label></td>
               <td><form:input path = "location" class="form-control" required="required"/></td>
            </tr>
            <tr>
               <td><form:label path = "interviewDate"><h5>Date Of Interview:</h5></form:label></td>
               <td><form:input path = "interviewDate" id="dob"  class="form-control" required="required"/></td>
 
            </tr>
             <tr>
               <td><form:label path = "venueDetails"><h5>Venue</h5></form:label></td>
               <td><form:textarea path = "venueDetails" class="form-control" required="required"/></td>
            </tr>
                 <tr>
               <td><form:label path = "Trpannel"><h5>Tr pannel</h5></form:label></td>
               <td><form:input path = "Trpannel" list="Trpannel" class="form-control" required="required"/></td>
               <datalist id="Trpannel">
                  <c:forEach items="${Trlist}" var="Tr">
               <option value="${Tr.personalDetails.firstName}${Tr.personalDetails.lastName}">
               </option></c:forEach>
            </tr>
               <tr>
               <td><form:label path = "Hrpannel"><h5>Hr pannel</h5></form:label></td>
               <td><form:input path = "Hrpannel" list="Hrpannel" class="form-control" required="required"/></td>
               <datalist id="Hrpannel">
                  <c:forEach items="${Hrlist}" var="Hr">
               <option value="${Hr.personalDetails.firstName} ${Hr.personalDetails.lastName}">
               </option></c:forEach>
            </tr>
            
             <tr>
               <td><form:label path = "projectName"><h5>Project Name</h5></form:label></td>
               <td><form:input path = "projectName" list="ProjectName" class="form-control" required="required"/></td>
                   <datalist id="ProjectName">
                	 <option value="citi Payment"/>
              		 <option value="citi classic"/>
 					 <option value="BMO"/>
 					 <option value="JP Morgan"/>
 					<option value="PayPal"/>
 					<option value="Training"/>
 					<option value="Car Pooling"/>
 					</datalist>
            </tr>
            
             <tr>
               <td><form:label path = "projectManager"><h5>Project Manager</h5></form:label></td>
               <td><form:input path = "projectManager" list="ProjectManager" class="form-control" required="required"/></td>
                <datalist id="ProjectManager">
                  <c:forEach items="${pmlist}" var="pm">
               <option value="${pm.personalDetails.firstName}${pm.personalDetails.lastName}">
               </option></c:forEach>
            </tr>
            
             <tr>
               <td><form:label path = "vacancies"><h5>vacancies</h5></form:label></td>
               <td><form:input path = "vacancies" class="form-control" required="required"/></td>
            </tr>
            
            <tr>
               <td colspan = "2">
               <br>
                <center>  <input type = "submit"   class="btn btn-default" value = "Submit"/> </center>
               </td>
            </tr>
         </table>  
         </center>
      </form:form>
    <!--   <script> 
            $('#dob').datepicker();
            </script> -->
              <script> 
            /*   var date=$('#dob').datepicker({dateFormat:'yy-mm-dd'}) */
  var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
        $('#dob').datepicker({
	dateFormat:'mm-dd-yyyy',
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome',
            minDate: today,
            maxDate: function () {
                return $('#endDate').val();
            }
        });
 </script>


</div>
</div>
<br>

<div id="footer">
 <center>CopyRight@Vconnect</center>
</div> 
<!-- <section> 
 <div id="footer">
  <i class='fab fa-facebook' style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i class='fab fa-twitter'   style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-google'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-linkedin'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
		<span style="font-style:oblique;"> CopyRight@Virtusa
 </section>	 -->
     
     
     <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires", 0);
if(session.getAttribute("Id")==null)
response.sendRedirect("index1.jsp");
%> 
   </body>
   
</html>