<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2>HTML Table</h2>

<table>
<form:form>
  <tr>
    <th>EmployeeInfo</th>
    <th>Data</th>
   
  </tr>
  <tr>
    <td>EmployeeId</td>
    <td>${emp.employeeId}</td>
      </tr>
  <tr>
    <td>EmployeeName</td>
    <td><p>${emp.personalDetails.firstName}${emp.personalDetails.lastName}</p></td>
    
  </tr>
  <tr>
    <td>EmailId</td>
    <td>${emp.basicDetails.emailId}</td>
    
  </tr>
  <tr>
    <td>YearsOfExperience</td>
    <td>${emp.experienceDetails.yearOfExperience}</td>
   
  </tr>
  <tr>
    <td>Technology</td>
    <td>${emp.skillSet.technology}</td>
   
  </tr>
  <tr>
    <td>JobId</td>
    <td>${joblist.jobId}</td>
    
  </tr>
  <tr>
    <td>JobDomain</td>
    <td>${joblist.jobDomain}</td>
   
  </tr>
  <tr>
    <td>JobDesignation</td>
    <td>${joblist.jobDesignation}</td>
   
  </tr>
  <tr>
    <td>Job Location</td>
    <td>${joblist.location}</td>
   
  </tr><br>
  <br>
  
 
  <tr>

  <td><button formaction="addempjob" >Confirm</button></td>&nbsp;&nbsp;
<td><button formaction="back">Back</button></td></tr>

</form:form>
</table>
<div id="footer">
 <center>CopyRight@Virtusa</center>
</div> 
</body>
</html>
