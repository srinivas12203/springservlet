<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password],input[type=number],select,input[type=checkbox],input[type=date] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus,input[type=checkbox]:focus,input[type=date]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body>

<h2 align="center">Employee Registration</h2>
  <form:form method="POST" class= "modal-content" action="addregister">
    <div class="container">
    	<form:label path = "employeeId" >EmployeeId</form:label>
      <form:input  path= "employeeId"></form:input>
    
      <form:label path = "employeeRole" >EmployeeRole</form:label>
      <form:input  path= "employeeRole"></form:input>
      <h1>Basic Information</h1>
      <p>Please fill in this form to update your security Information.</p>
      <hr>
      <form:label path = "basicDetails.contactNumber">Contact_No</form:label>
      <form:input  path= "basicDetails.contactNumber"></form:input>
      
    <form:label path = "basicDetails.emailId" >Email Id</form:label>
      <form:input  path= "basicDetails.emailId"></form:input>

       <form:label path = "basicDetails.password" >Password</form:label>
      <form:password path= "basicDetails.password"></form:password>

      <form:label path = "basicDetails.repeatPassword" >Confirm Password</form:label>
      <form:password  path= "basicDetails.repeatPassword"></form:password>
      <h1>Edit educational Details</h1>


     <!--  <p>Please fill in this form to update your educational Details.</p> -->
      <hr>
       <form:label path= "educationalDetails.sscSchoolName"><b>X School Name</b></form:label>
      <form:input  path="educationalDetails.sscSchoolName"></form:input>
      
      <form:label path= "educationalDetails.sscPercentage"><b>SSC Percentage</b></form:label>
      <form:input   path="educationalDetails.sscPercentage"></form:input>

      <form:label path= "educationalDetails.intermediateCollegeName"><b>Intermediate College Name</b></</form:label>
      <form:input  path= "educationalDetails.intermediateCollegeName" ></form:input>

      <form:label path= "educationalDetails.intermediatePercentage"><b>Intermediate %</b></form:label>
      <form:input  path= "educationalDetails.intermediatePercentage"></form:input>
      
      <form:label path= "educationalDetails.uGCollegeName" ><b>UG College Name</b></form:label>
      <form:input   path= "educationalDetails.uGCollegeName" ></form:input>

      <form:label path= "educationalDetails.uGpercentage"><b>UG %</b></form:label>
      <form:input   path= "educationalDetails.uGpercentage" ></form:input>
    
      
      <form:label path= "educationalDetails.pGCollegeName"><b>PG College Name</b></form:label>
      <form:input   path= "educationalDetails.pGCollegeName" ></form:input>

      <form:label path= "educationalDetails.pGPercentage"><b>PG %</b></form:label>
      <form:input   path= "educationalDetails.pGPercentage"></form:input>
      
      
      
      <h1>personal Details</h1>


      <!-- <p>Please fill in this form to update your educational Details.</p> -->
      <hr>
       <form:label path= "personalDetails.firstName"><b>First Name</b></form:label>
      <form:input   path= "personalDetails.firstName"></form:input>
      
      <form:label path= "personalDetails.lastName"><b>Last Name</b></form:label>
      <form:input   path= "personalDetails.lastName"></form:input>
     
	  <form:label path= "personalDetails.dateofBirth"><b>Date Of Birth</b></form:label>
      <form:input   path= "personalDetails.dateofBirth"></form:input>
		
      <form:label path= "personalDetails.presentAddress"><b>Present Address</b></form:label>
      <form:input  path= "personalDetails.presentAddress"></form:input>

      <form:label path= "personalDetails.permanentAddress"><b>Permanent Address</b></form:label>
      <form:input path= "personalDetails.permanentAddress" ></form:input>
      
      <form:label  path= "personalDetails.state"><b>State</b></form:label>
      <form:input  path= "personalDetails.state" ></form:input>

      <form:label path= "personalDetails.country"><b>Country</b></form:label>
      <form:input  path= "personalDetails.country" ></form:input>
     
      
      <form:label path= "personalDetails.pinCode"><b>Pincode</b></form:label>
      <form:input  path= "personalDetails.pinCode" ></form:input>
      
<h1>SkillSet</h1>
    <form:label path= "skillSet.technology"> Technology</form:label>
    <form:textarea path= "skillSet.technology"></form:textarea>
     
      <h1>Experience Details</h1>
    <form:label path= "experienceDetails.recentProject">Previous Technology</form:label>
    <form:textarea path= "experienceDetails.recentProject"></form:textarea>
    
    <form:label path= "experienceDetails.yearOfExperience">Experience in Years</form:label>
    <form:textarea path= "experienceDetails.yearOfExperience"></form:textarea>
    
     <!--  <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
 -->
      <div class="clearfix">
        <button type="reset" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Register</button>
      </div>
    </div>
 </form:form>




</body>
</html>
