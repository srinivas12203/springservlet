<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  h1{
  color:#0080FF;
  }
  .container {
     margin-top:0px;
      padding: 80px 120px;
  -webkit-box-shadow: 0 10px 5px blue;
  -moz-box-shadow: 0 10px 5px blue;
  box-shadow: 0 10px 5px blue;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 50%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
      height:60%;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: white;
      color:black;
  }
  .bg-1 h3 {color: black;}
  .bg-1 p {font-style: inherit;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
   /* .btn {
     
      background-color: gray;
      color: white;
     
  } */
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  } */
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color:#353434;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #353434;
      color: white;
      left: 0px;
      right:0px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  
 
  </style>
</head>
<body>
<center>
<br>
  <h1>Job Application Form</h1></center>
		<div class="container">
    
        <!-- <div class="col-md-4 col-md-offset-4"> -->
            <div class="panel panel-default">
                <div class="panel-heading">
                  <strong>Details</strong>
                </div>
                <div class="panel-body">
                    <form:form action="addCandidate" class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="firstName">
                            First Name</label>
                        <div class="col-sm-9">
                            <form:input path="firstName" class="form-control" id="firstName" type="text" placeholder=" Enter First Name" required="required"/>
                        </div>
                    </div>
                   
                  
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="lastName">
                            Last Name</label>
                        <div class="col-sm-9">
                            <form:input path="lastName" class="form-control" id="lastName" type="text" placeholder="Enter Last Name"  required="required"/>
                        </div>
                    </div>
                   
                  <%--  <div class="form-group">
                   	
                   		  <label class="col-sm-3 control-label" for="inputPassword3">
                   		   role</label>
						<div class="radio">
    						   <label><form:input path="role" name="optradio"></form:input>Trainee</label>
    						   <label><form:input path="role"  name="optradio"></form:input>ProjectManager</label>
 				    </div>
								   
					</div> --%>
					
					 
					 <div class="form-group">
                        <label class="col-sm-3 control-label" for="MobileNumber">
                            Gender:</label>
                        <div class="col-sm-9">
                            Male<form:radiobutton path="gender" value="M"/>
                            Female<form:radiobutton path="gender" value="F"/>
                        </div>
                    </div>
					 
					 
                 
                       <div class="form-group">
                        <label class="col-sm-3 control-label" for="MobileNumber">
                            Mobile Number:</label>
                        <div class="col-sm-9">
                            <form:input path="mobileNumber" class="form-control" id="mobilenumber"  type="number" placeholder="Enter Mobile Number" required="required"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="emailid">
                            EmailId:</label>
                        <div class="col-sm-9">
                            <form:input path="emailId" class="form-control" id="emailId" type="mail" placeholder="Enter mailId " required="reqiured"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="experience">
                            Experience:</label>
                        <div class="col-sm-9">
                            <form:input path="experience" class="form-control" id="experience" placeholder="Enter experience " required="reqiured"/>
                        </div>
                    </div>
                    
                   <%--  <div class="form-group">
                        <label class="col-sm-3 control-label" for="previousCompany">
                            Previous Company:</label>
                        <div class="col-sm-9">
                            <form:input path="previousCompany" class="form-control" id="previousCompany"  placeholder="Enter previousCompany Name " required="reqiured"/>
                        </div>
                    </div> --%>
    <div class="form-group">
     <label class="col-sm-3 control-label" for="previousCompany">Previous Company: </label>
    <div class="col-sm-9">
      <form:select path="previousCompany" class="form-control" id="previousCompany"  placeholder="Enter previousCompany Name" required="reqiured">
                <form:option value="val1 "> None </form:option>
                  <form:option value=" val2">Fresher  </form:option>
                    <form:option value=" val3">IBM  </form:option>
                      <form:option value="val4 "> Infosys </form:option>
                        <form:option value=" val5">  HCL</form:option>
                          <form:option value=" val6"> Mind Tree </form:option>
                            <form:option value="val7 ">  TCS</form:option>
                              <form:option value="val8 ">Intellect  </form:option>
                                <form:option value=" val9">  Accenture</form:option>
                                 <form:option value=" val10"> Tech Mahindra </form:option>
                                  <form:option value="val11 ">Torry Horris  </form:option>
                                  <form:option value="val12 ">NTT Data  </form:option>
                                   <form:option value="Other">Other</form:option>
       
              </form:select>
     <form:input path="previousCompany" type="text" id="other" placeholder="Enter Company Name" style="display: none;" /> 
    <!--   <input id="other" type="text" id="other" style="display: none;" /> -->
    
      
      </div>
      </div>
     
      
                     <div class="form-group">
                        <label class="col-sm-3 control-label" for="country">
                            Country:</label>
                        <div class="col-sm-9">
                            <form:input path="country" class="form-control" id="country"  placeholder="Enter your Country " required="reqiured"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="skillset">
                           Skill Set:</label>
                        <div class="col-sm-9">
                            <form:input path="skillset" class="form-control" id="skillSet" type="text" placeholder="Enter Skills " required="reqiured"/>
                        </div>
                    </div>
                    <div class="form-group">
                    
                        <label class="col-sm-3 control-label" for="resume">
                            Resume:</label>
                        <div class="col-sm-offset-3 col-sm-9">
                            <form:input path="resume" class="form-control" id="resume" type="file"  required="reqiured"/>
                        </div>
                    </div>
                 
                    <div class="form-group last">
                    
                        <div class="col-sm-offset-3 col-sm-9">
                            <form:button type= "submit" class="btn btn-primary" >Apply</form:button>
                              
                                 <button class="btn btn-primary" type="reset">
                                Reset</button>
                        </div>
                    </div>
                    </form:form>
                </div>
               
        <!-- </div> -->
    </div>

<br><br><br><br><br><br><br>
<script>
$('#previousCompany').change(function() {
    $('#other').css('display', ($(this).val() == 'Other') ? 'block' : 'none');
});
</script>

</body>
</html>