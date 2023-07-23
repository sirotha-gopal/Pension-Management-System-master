<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
  <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <style>
       .card-5 {
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
  
}
     </style>

    <title>Pension Form</title>
  </head>
  <body>
  <center>
</center><br><br>
  
  <div class="container">
    <div class="row card-5">
         <div class="col-sm-6">
           
           <img src="https://i.postimg.cc/SxRqqLdb/Happy-tiny-people-growing-money-tree.jpg" class="img-fluid" alt="Responsive image">
           
           
           
           
           
           
           
           
           
   
         </div>
         <div class="col-sm-6 card ">
            </br>
            <form:form action="/submitinfo" method="post" modelAttribute="pensionerInput" id="basicBootstrapForm" class="form-horizontal">
 	<div class="form-group row">
    <label for="name" class="col-sm-3 col-form-label font-weight-bold">Username :</label>
    <div class="col-sm-9">
      <form:input path="name" placeholder="Enter Pensioner's Name"  class="form-control" required="required"/>
    </div>
  </div>
  
  
  <div class="form-group row">
    <label for="dateOfBirth" class="col-sm-3 col-form-label font-weight-bold">D.O.B:</label>
    <div class="col-sm-9">
      <form:input path="dateOfBirth" placeholder="Enter your D.O.B"  class="form-control" required="required"/>
    </div>
  </div>
 
      
   <div class="form-group row">
    <label for="pan" class="col-sm-3 col-form-label font-weight-bold">PAN Number:</label>
    <div class="col-sm-9">
      <form:input path="pan" placeholder="Enter your PanCard" class="form-control"  required="required"/>
    </div>
  </div>
 
 
   <div class="form-group row">
    <label for="aadhar" class="col-sm-3 col-form-label font-weight-bold">Aadhar Number:</label>
    <div class="col-sm-9">
      <form:input path="aadharNumber" class="form-control" placeholder="Enter your AadharCard Number"  length="12"  required="required"/>
    </div>
  	  </div>		
  	 
            
              
               
              <div class="form-group row">
                
                <label class="col-sm-3 col-form-label font-weight-bold">Pension Type</label>
                  <div class="col-sm-9">
                    <div class="radio"> 
                      <label for="selfPension" class="">Self Pension:</label>
  			<form:checkbox path="selfPension" />
                     </div>
         
                
  			<div class="radio">
  			
  			<label for="familyPension" class="">Family Pension:</label>
  			<form:checkbox path="familyPension" />
                    </div>
                </div>
		
	  </div>
              
              
              
              
  	

             
 
  <br><br>
 
  <div class="form-group">
    <div class="col-xs-9 col-xs-offset-3 float-right mb-3">
      <button type="submit" class="btn btn-primary">Submit</button>
      <button type="reset" class="btn btn-danger">Reset</button>
    </div>
  </div>

</form:form>
         </div>
         
      </div>
  </div>
  </body>
</html>