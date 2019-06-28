<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm</title>
<style>
.container {
      padding: 80px 120px;
      width:100%;
      left:0px;
      align:center;
  }
</style>
</head>
<body>

<div class="container">
  
  <h3> Regular Bootstrap Table Example</h3> 
    <table class="table">
    <form:form>
<thead>
<tr>
<th>Row</th><th>Table Type</th></tr>
</thead>
<tbody>
<tr><td>EmployeeId:</td><td>${emp.employeeId}</td></tr>
<tr><td>EmployeeName</td><td><p>${emp.personalDetails.firstName}</p>${emp.personalDetails.lastName}</td><td></tr>
<tr>
<td>emailId</td><td>${emp.basicDetails.emailId}</td></tr>
<tr>
<td>yearOfExperience</td><td>${emp.experienceDetails.yearOfExperience}</td></tr>
<tr>
<td>technology</td><td>${emp.skillSet.technology}</td></tr>      
<tr>
<td>jobId</td><td>${joblist.jobId}</td></tr>      
<tr>
<td>jobDomain</td><td>${joblist.jobDomain}</td></tr>      
<tr>
<td>jobDesignation</td><td>${joblist.jobDesignation}</td></tr>     
<tr><td>Job Location</td><td>${joblist.location}</td></tr> 
   <tr> <td> <button class="button" formaction="addempjob">Confirm</button> </td><td><button class="button" formaction="">Back</</button>  </td></tr>  
</tbody>
</form:form>
</table>

</div>

<div id="footer">
 <center>CopyRight@Virtusa</center>
</div> 


</body>
</html>