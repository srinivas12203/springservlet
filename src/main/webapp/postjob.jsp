<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
   
   
   <!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://www.zoho.com/lp/fonts/proxima-nova/stylesheet.css" rel="stylesheet" type="text/css" >
<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700" rel="stylesheet">
<link href="https://www.zoho.com/css/common-header-footer.css" rel="stylesheet" type="text/css">
<link href="https://www.zoho.com/css/common-landing.css" rel="stylesheet" type="text/css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'> -->
<!-- Footer tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <title>Spring MVC Form Handling</title>
      <style type="text/css">
body {
	font-family:  Arial;
	opacity: 0.5px;
	}	

.navbar {
    overflow: hidden;
    background-color: #F2F2F2;
    font-family: Arial, Helvetica, sans-serif;
    margin: 0px;    
}

div#list{
display:inline;
}

.navbar a {
    float: right;
    font-size: 16px;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
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
}

header#head{
top:0px;
min-height:70px;
border-bottom: #e8491d 3px solid;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: #58D3F7;
}

.dropdown-content {
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
}
.formas{
background: gray;
}

/* Footer */

	div#footer
{
font-family: verdana;
color:black;
background:#F2F2F2 ;
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

</style>
      
   </head>

   <body>
   <section>
<header id = "head">
<nav>
<div class="navbar">
<img alt="" src="C:\Users\lakshmin\Desktop\final.png" width="200px" height="50px">


<a href="#">Profile <i class='fas fa-user-tie' style='font-size:18px'></i></a> 
 <a href="#home">Contact</a>
<a href="#home">FeedBack</a>
<!-- <div class="dropdown">
<button class="dropbtn">Candidate</button>
<div class="dropdown-content">
<a href="#">Employee</a>
<a href="#">External Candidate</a></div>
</div> 
<a href="#news">Home</a>
 -->
</div>

</nav>
</header>

</section>

<section>
<div class="image">
<img alt="" src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" style="position:absolute""; width="100%" height="100%">
<div class="container" style="position:relative;">
<br><br><br>
<center><h2>Enter Job Details</h2></center>
<br>
      <form:form action = "postJobs" method = "GET"  >
        <center>
         <table>
            <tr>
               <td><form:label path = "jobId"><h6>JobId</h6></form:label></td>
               <td><form:input path = "jobId" class="form-control" /></td>
            </tr>
            <tr>
               <td><form:label path = "jobDomain"><h6>JobDomain</h6></form:label></td>
               <td><form:input path = "jobDomain" class="form-control" /></td>
            </tr>
            <tr>
               <td><form:label path = "jobDesignation"><h6>JobDesignation</h6></form:label></td>
               <td><form:input path = "jobDesignation" class="form-control" /></td>
            </tr>
            
            <tr>
               <td><form:label path = "location"><h6>Location</h6></form:label></td>
               <td><form:input path = "location" class="form-control" /></td>
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

</div>
</div>
</section>
<section> 
 <div id="footer">
  <i class='fab fa-facebook' style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i class='fab fa-twitter'   style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-google'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
<i  class='fab fa-linkedin'  style="font-size:35px"></i>&nbsp;&nbsp;&nbsp;
		<span style="font-style:oblique;"> CopyRight@Virtusa
 </section>	
      
   </body>
</html>