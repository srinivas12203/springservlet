<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html>
<html>

<body link="#000000" vlink="#808080" alink="#FF0000" bgcolor=#c0c0c0>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="C:\Users\sridharkr\Desktop\calender.css">
<link rel="stylesheet" type="text/css" href="fixedtopdown.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
body {
	font-family: Arial;
	color: black;
}

table {
	color: black;
	font-weight: bold;
}

.navbar {
	overflow: hidden;
	background-color: #F2F2F2;
	font-family: Arial, Helvetica, sans-serif;
	margin: 0px;
}

.container {
	position: relative;
	text-align: center;
	color: white;
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

header#head {
	top: 0px;
	min-height: 70px;
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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
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
div#footer {
	font-family: verdana;
	color: black;
	background: #F2F2F2;
	bottom: 0px;
	position: fixed;
	width: 100%;
	padding: 8px;
	float: right;
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

.container {
	width: 100%;
	height: 100%;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker();
	});
	function fname_validation() {
		var fname = document.getElementById("Firstname").value;
		var fnameregex = /^[a-zA-Z]+$/;
		if (fnameregex.test(fname)) {
			return true;

		} else {

			document.getElementById('fname_error').innerHTML = '*enter valid firstname';
			return false;
		}

	}
	function lname_validation() {
		var lname = document.getElementById("Lastname").value;
		var lnameregex = /^[a-zA-Z]+$/;
		if (lnameregex.test(lname)) {
			return true;

		} else {

			document.getElementById('lname_error').innerHTML = '*enter valid lastname';
			return false;
		}

	}

	$(document).ready(function() {
		$("#password").change(function() {
			var pwd = $("input#password").val();
			if (pwd.length < 8) {
				$(function() {
					$("span#pwd_error").show();
				});
			} else {
				$(function() {
					$("span#pwd_error").hide();
				});
			}
		});

	});
	$(document).ready(function() {
		$("#C_password").change(function() {
			var pwd = $("input#password").val();
			var cpwd = $("input#C_password").val();
			if (pwd != cpwd) {
				$(function() {
					$("span#cpwd_error").show();
				});
			} else {
				$(function() {
					$("span#cpwd_error").hide();
				});
			}
		});
	});
	$(document).ready(function() {
		$("#mobile_number").change(function() {
			var mno = $("input#mobile_number").val();
			if (mno.length != 10) {
				$(function() {
					$("span#mno_error").show();
				});
			} else {
				$(function() {
					$("span#mno_error").hide();
				});
			}
		});

	});

	/* function date_validation()
	 {
	 var month1 = document.getElementById("month").value;
	 alert("**"+month1);
	 var date1 = document.getElementById("date").value;
	 alert("**"+date1);
	 var year1 = document.getElementById("year").value
	 alert("**"+year1);
	 if(month1%2==1)
	 {
	 if(date1>=1 && date1<=31)
	 {
	 alert("2T");
	 return true
	 }
	 else
	 {	alert("2F")
	 document.getElementById('date_error').innerHTML ='*enter valid date';
	 return false;
	 }
	 }
	 else if((year1%4==0) && (month1==2))
	 {
	 if(date1>=1 && date1<=29)
	 {
	 alert("3T");
	 return true;
	 }	
	 else 
	 {
	 alert("3F");
	 document.getElementById('date_error').innerHTML ='*enter valid date';
	 return false;
	 }
	
	 }
	 else if(month1==2)
	 {
	 if(date1>=1 && date<=28)
	 {
	 alert("4T");
	 return true;
	 }
	 else
	 {	 alert("4F");
	 document.getElementById('date_error').innerHTML ='*enter valid date';
	 return false;
	 }
	 }
	 else
	 {
	 if(date1>=1 && date1<=29)
	 {
	 alert("5T");
	 return true;
	 }	
	 else
	 {
	 alert("5F");
	 document.getElementById('date_error').innerHTML ='*enter valid date';
	 return false;
	 }
	 }
	
	 } */
</script>

<title>Register</title>
</head>
<body>
	<header id="head">
		<nav>
			<div class="navbar">
				<img alt="" src="C:\Users\sridharkr\Desktop\Capture.png"
					width="200px" height="50px"> <a href="#">Sign in <i
					class='fas fa-user-tie' style='font-size: 18px'></i></a> <a
					href="#home">Contact</a> <a href="#home">AboutUs</a>
				<div class="dropdown">
					<button class="dropbtn">Candidate</button>
					<div class="dropdown-content">
						<a href="#">Employee</a> <a href="#">External Candidate</a>
					</div>
				</div>
				<a href="FinalhomePage.jsp">Home</a>

			</div>

		</nav>
	</header>




	<section>
		<div class="image">
			<img alt=""
				src="http://everything-pr.com/wp-content/uploads/2016/01/Women-in-Public-Relations.jpg"
				style="position: absolute" "; width="100%" height="100%">
			<div class="container" style="position: relative;">


				<table align="center" cellpadding="10">

					<form:form action="addCandidate" method="POST">
						<tr>
						<tr>
							<td><h3 align="center">REGISTERATION FORM</td>
						</tr>
						</tr>
						</h3>


						<tr>
							<td><form:label path = "firstName" >firstName</form:label></td>
							<td><form:input path = "firstName" /></td>
						</tr>
						<tr>
							<td><form:label path = "lastName" >lastName</form:label></td>
							<td><form:input path= "lastName" /></td>
						</tr>
						<tr>
							<td><form:label path = "gender" >Gender</form:label></td>
							<td>Male<form:radiobutton path= "gender" value="M" />Female<form:radiobutton path="gender" value="F"/></td>
						</tr>
						<tr>
							<td>Email_ID</td>
							<td><form:input path= "emailId" /></td>
						</tr>

						<tr>
							<td>Mobile Number</td>
							<td><form:input path="mobileNumber"/></td>
						</tr>
						<tr>
							<td>Resume upload</td>
							<td><form:input path="resume" type="file" accept=".pdf"/></td>
						</tr>
						<tr>
							<td><span style="color: red">*</span>is required field</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;<input type="submit" name="submit"
								value="Submit" /> &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
								name="reset" value="Cancel" /></td>
						</tr>
					</form:form>
				</table>
			</div>
		</div>
	</section>
	<br><br><br>
	<section>
		<div id="footer">
			<i class='fab fa-facebook' style="font-size: 35px"></i>&nbsp;&nbsp;&nbsp;
			<i class='fab fa-twitter' style="font-size: 35px"></i>&nbsp;&nbsp;&nbsp;
			<i class='fab fa-google' style="font-size: 35px"></i>&nbsp;&nbsp;&nbsp;
			<i class='fab fa-linkedin' style="font-size: 35px"></i>&nbsp;&nbsp;&nbsp;

		
	</section>

</body>
</html>