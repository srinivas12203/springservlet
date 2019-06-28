
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://www.zoho.com/lp/fonts/proxima-nova/stylesheet.css" rel="stylesheet" type="text/css" >
<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700" rel="stylesheet">
<link href="https://www.zoho.com/css/common-header-footer.css" rel="stylesheet" type="text/css">
<link href="https://www.zoho.com/css/common-landing.css" rel="stylesheet" type="text/css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
<!-- Footer tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Home Page</title>

<style>
body {
    font-family: "Lato", sans-serif;
}

.sidebar {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    float:right;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidebar a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidebar a:hover {
    color: #f1f1f1;
}

.sidebar .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

.openbtn {
    font-size: 20px;
    cursor: pointer;
    background-color: #111;
    color: white;
    padding: 10px 15px;
    border: none;
}

.openbtn:hover {
    background-color: #444;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
    .sidebar {padding-top: 15px;}
    .sidebar a {font-size: 18px;}
}


/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    color: #818181;
    display: block;
    border: none;
    background: none;
    width: 100%;
    text-align: left;
    cursor: pointer;
    outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
    color: #f1f1f1;
}

/* Add an active class to the active dropdown button */
.active {
    background-color: green;
    color: white;
}


.dropdown-container {
    display: none;
    background-color: #262626;
    padding-left: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}





.navbar {
    overflow: hidden;
    background-color: #F2F2F2;
    font-family: Arial, Helvetica, sans-serif;
    margin: 0px; 
      
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

.box{  
  padding:50px;
  position:static;
  width: 900px;
  height: 200px;
	border-style:groove;
	border:3px;
  color:Black;
  zoom: 1;
}
 .container{
  position:absolute;
  text-align:center;
   left:6cm; 
   /* right:4cm; */
   margin: 20px;
   height: 300px;
   
    max-width: 600px;
   top:5cm;
   bottom:3cm; 
 /*  max-width: 500px; */
 
  background: rgb(0, 0, 0); /* Fallback color */
  background:#A0E8FF; /* Black background with 0.5 opacity */
  color: #f1f1f1;
  border-bottom:4px;
}
 




.container input[list] {
	 background-color:#f2f2f2;
	  border-radius: 50px;
	  border-bottom: 20px;
	  border-bottom-width: thick;
	  border-color: black;
}

.fas
{
background-color:#80000;
border-radius: 50px;
  border-bottom: 20px;
  padding:7px;
	  border-bottom-width: thick;
}

.container1{
position: absolute;
}


.section{
top:100%;
display: block;

} 

.mySlides {display:none;}

.responsive {
    max-width: 100%;
    height: auto;
}

.header-right {
  float: right;
  }
  
  .header a.logo {
  font-size: 25px;
  font-weight: bold;
}







</style>
</head>

<body>
<header id ="head">
<nav>


<div class="header-right">
<a href="login.jsp"><i class='fas fa-user-tie' style='font-size:18px'></i><b style='font-size:18px'>Sign in</b></a>
 
<img alt="" src="C:\Users\lakshmin\Desktop\logo.png" width="300px" height="60px">
</div> 
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">X</a>
  <div class="sidenav">

<!-- <a href="login.jsp">Sign in <i class='fas fa-user-tie' style='font-size:18px'></i></a>  -->
 <a href="#">Home</a>
 <a href="#">About Us</a>
  <a href="#contact">Contact</a>
  <a href="#">Feedback</a>
  <button class="dropdown-btn">Candidate 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="#">Employee</a>
    <a href="index.jsp">External Candidate</a>
   
   </div>
 <!--  <a href="#contact">Search</a>  -->
</div>
</div>

<div id="main">
  <button class="openbtn" onclick="openNav()">Menu</button>  
  <!-- <h2>Collapsed Sidebar</h2>
  <p>Click on the hamburger menu/bar icon to open the sidebar, and push this content to the right.</p> -->
</div> 
  

</nav>
</header> 



<section>

     <!-- <img class="mySlides" src="C:\Users\naganeelimad\Desktop\sri1.jpg"      width="100%" style="opacity: 0.5">
  <img class="mySlides" src="C:\Users\naganeelimad\Desktop\sri2.jpg"     width="100%" style="opacity: 0.5">  
  <img class="mySlides" src="C:\Users\naganeelimad\Desktop\sri3.jpg"    width="100%" height="10%" style="opacity: 0.5">  -->


<div class="w3-content w3-section" style="max-width:100%">
  <img class="mySlides" src="C:\Users\lakshmin\Desktop\Home1.png"    style="width:100%" >
  <img class="mySlides" src="C:\Users\lakshmin\Desktop\middle.jpg"     style="width:100%"> 
  <img class="mySlides" src="C:\Users\lakshmin\Desktop\Home3.jpg"    style="width:100%">
</div>
  
  
  
   <div class="container" style="position:absolute;top:100px" align="right"> 
 
<form action="" method="post" class="container">
<div class="box">
<h4><label for="job_name">Job Name&nbsp;&nbsp;</label>
<input list="jobname" placeholder="job name" name="jobname">
<datalist id="jobname">
<option value="CoreJava Developer"/>
<option value="Fullstack Developer"/>
<option value="QA Selenium"/>
<option value="Hadoop"/>
<option value="Protractor"/>
<option value="Appium"/>
<br></datalist><br><br>
<label for="job_location">Job Location</label>
<input list="location" placeholder="  joblocation" name="joblocation">
<datalist id="location">
<option value="Chennai"/>
<option value="Hyderabad"/>
<option value="Pune"/>
<option value="Banglore"/>
<option value="Noida"/>
<option value="Kochin"/>
</datalist>
<br><br><br>
<button type="submit" class='fas fa-search'>search</button> </h4></div>
</form>
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


function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}


var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}










</script>
</div>
</section>

<section class="control-flow" class="section">
  <div class="z-row z-three-col pbot-zero">
    <div class="z-content-wrap">
      <div class="column-block"> <i class="custom-icon custom-icon1"></i>
        <h3>Source Candidates</h3>
        <p>Gather resumes from different sources with Vconnect Recruit. Organise according to your company needs to not weed out qualified candidates.</p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon2"></i>
        <h3>Parse Resumes</h3>
        <p>Parse resumes within seconds. Extract resumes from the web using Vconnect Recruit's very own Resume Extractor. </p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon3"></i>
        <h3>Track effectively</h3>
        <p>Track the progress of candidates efficiently and get the best hire with Vconnect Recruit.</p>
      </div>
    </div>
  </div>
  <div class="z-row z-three-col">
    <div class="z-content-wrap">
      <div class="column-block"> <i class="custom-icon custom-icon4"></i>
        <h3>Spread the word</h3>
        <p>Publish your job opening adverts to the world in just a click as Vconnect Recruit has joined hands with the most visited job boards.</p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon5"></i>
        <h3>Manage your Clients</h3>
        <p>With Vconnect Recruit, managing clients and their contacts has just become easier with personalized modules. </p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon6"></i>
        <h3>Remodel your Recruit!</h3>
        <p>Vconnect Recruit can boast of being the most customizable ATS in the market. To each recruiter, his own.</p>
      </div>
    </div>
  </div>
  </section>
  <section class="testimonial">
    <div class="content-wrap"> <span class="customer1"></span> <small>Lakshmi Nagubadi<em>Managing Director, SalesRoads</em> </small>
      <p>"Vconnect Recruit has been an invaluable resource for our business. It has allowed us to be more efficient and allowed us to ensure that we interview and on-board the best candidates possible." </p>
      <a class="popup-controller watch-icon" href="https://www.youtube.com/embed/4o0XpWUNIxs"><span>WATCH A VIDEO</span></a> </div>
  </section>
  <section class="control-flow" class="section">
  <div class="z-row z-three-col pbot-zero">
    <div class="z-content-wrap">
      <div class="column-block"> <i class="custom-icon custom-icon7"></i>
        <h3>Google apps integration</h3>
        <p>Integrate the apps you use everyday, like Google calendar, into Vonnect Recruit to ease your everyday work. </p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon8"></i>
        <h3>Track Interviews & Events</h3>
        <p>Track all your scheduled interviews and events with Vconnect Calendar and Google Calendar.</p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon9"></i>
        <h3>Boolean search</h3>
        <p>A variety of search options helps you search the candidate details along with attachments.</p>
      </div>
    </div>
  </div>
  <div class="z-row z-three-col">
    <div class="z-content-wrap">
      <div class="column-block"> <i class="custom-icon custom-icon10"></i>
        <h3>Intelligent Integrations</h3>
        <p>Joining hands with Zapier, Vconnect Analytics, Vconnect CRM to name a few, makes work on Vconnect Recruit absolutely effortless.</p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon11"></i>
        <h3>Ditch the desk</h3>
        <p>Vconnect Recruit is now on Android and iOS devices. Now you don't need to be at your workplace to Recruit!</p>
      </div>
      <div class="column-block"> <i class="custom-icon custom-icon12"></i>
        <h3>A complete solution</h3>
        <p>Provides the best solution for both in-house recruiters and staffing agencies. Epitome of versatility.</p>
      </div>
    </div>
  </div>
  </section>
  <section class="footer-bottom z-section">
    <div class="z-row">
      <div class="z-small-content-wrap">
        <h5>Find the right candidate for your organization.</h5>
        <a class="button get-started">Get started now</a> </div>
    </div>
  </section>
<br><br><br>

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


