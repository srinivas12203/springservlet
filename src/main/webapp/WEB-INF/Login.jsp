<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<!-- Footer tags -->

<title>Home Page</title>
<style type="text/css">
body {
	font-family:  Arial;
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
.container {
  width: 100%;
  height:100%;
  
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
<header id = "head">
<nav>
<div class="navbar">
<img alt="" src="C:\Users\lakshmin\Desktop/logo.png" width="200px" height="50px">
 <a href="#home">Contact</a>
<a href="#home">AboutUs</a>
<div class="dropdown">
<button class="dropbtn">Candidate</button>
<div class="dropdown-content">
<a href="#">Employee</a>
</div>
</div> 
<a href="#news">Home</a>

</div>

</nav>
</header>




<section>
 <div class="image">
        <img src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" width="100%" height="100%" style="position:absolute">
      </div>
      <div class="container" align="center" style="position: relative;">
<h1 align="center"> Login</h1>
<table  align="center" cellpadding = "10" >
<form method="post" action="FirstServlet" >
<tr>
<td>EmployeeId:</td>
<td><input type="text" name="uname" maxlength="30" required><br><br>
</td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pswd" required><br><br></td>
</tr>

 <tr><td><button type="submit" class="loginbtn">Login</button></td>

<td><button type="reset" class="cancelbtn">Cancel</button>
</td>
</tr>
<tr><td><a href="Registration.html">Not a Member??</a></td>
</tr>
</form>
</table>
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