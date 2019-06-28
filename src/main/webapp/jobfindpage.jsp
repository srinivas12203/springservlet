<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Spring MVC Form Handling</title>
   </head>

   <body>
      <h2>Student Information</h2>
      <form:form action="search" method="POST">
         <table>
            <tr>
               <td><form:label path = "jobDomain">JOB domain</form:label></td>
               <td><form:input path = "jobDomain" /></td>
            </tr>
            <tr>
               <td><form:label path = "jobLocation">Job Location</form:label></td>
               <td><form:input path = "jobLocation" /></td>
            </tr>
           
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
      </form:form>
   </body>
   
</html>