<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>

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
.tab button.active {
    background-color: #deb887;
}
    
</style>
</head>

<body background="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" width=100 height=100>

<div class="navbar">

<a href="#">Sign in</a>
    <a>
<i class='fas fa-user-tie' style='font-size:24px'></i>
</a>
   <a href="#home">Contact</a>
   <a href="#home">AboutUs</a>
   <div class="dropdown">
   
    <button class="dropbtn">Candidate
     
    </button>
    <div class="dropdown-content">
    
      <a href="#">Employee</a>
      <a href="#">External Candidate</a>
     
    </div>
  </div> 
  <a href="#news">Home</a>
  <img alt="" src="C:\Users\arjanapudisv\Desktop/logo1.png" width="200px" height="50px">
</div>

<h2 class="w3-center">Automatic Slideshow</h2>

<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="C:\Users\arjanapudisv\Desktop\images\mixing-desk-351478_1920.jpg" style="width:100%">
  <img class="mySlides" src="C:\Users\arjanapudisv\Desktop\profilePic2.png" style="width:100%">
  <img class="mySlides" src="C:\Users\arjanapudisv\Desktop\logo.png" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<section>


<div class="image">
<img src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg" style="position: absolute;" width="100%"></div>
<div class="container" style="position: relative; top: 100px" align="center">
<form action="" method="post">
<div class="box">
<label for="job_name">Job Name</label>
<input list="jobname" placeholder="job name" name="jobname">
<datalist id="jobname">
<option value="CoreJava Developer"/>
<option value="Fullstack Developer"/>
<option value="QA Selenium"/>
<option value="Hadoop"/>
<option value="Protractor"/>
<option value="Appium"/>
<br></datalist>
<label for="job_location">Job Location</label>
<input list="location" placeholder="joblocation" name="joblocation">
<datalist id="location">
<option value="Chennai"/>
<option value="Hyderabad"/>
<option value="Pune"/>
<option value="Banglore"/>
<option value="Noida"/>
<option value="Kochin"/>
</datalist>
<button type="submit" class='fas fa-search'></button>
</form>
</div>
</section>

<div id="footer">
 <center>CopyRight@Virtusa</center>
</div> 
		  
		
</body>
</html>