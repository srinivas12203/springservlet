<%-- <%@ page isELIgnored="false" %>
<html>
<body>
<h2>Hello World!</h2>
<a href="register">External Register</a>
<a href="registeri">Internal register</a><br>

<a href=jobfindpage.jsp>search</a>
<br>
<<!-- a href="viewapplicant">viewApp</a>
<a href=viewjob>Viewjob</a>
<a href=view>Profile</a> -->
<a href=post>PostJob</a>
<a href="start">abc</a>
</body>
</html>
 --%>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%
String redirectURL = "start";
response.sendRedirect(redirectURL);%>