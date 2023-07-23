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
         <title>Pension Process</title>
   </head>
   <body>
      <center></center>
      <br><br>
      <div class="container">
         <div class="row card-5">
            <div class="col-sm-6">
               <img src="https://i.postimg.cc/13qbg0jj/6573.jpg" class="img-fluid" alt="Responsive image">
            </div>
            <div class="col-sm-6 card ">
               </br>
          
        <p class="font-weight-bold text-center " style="font-size:1.5em">Enter Pension Process Input</p>
           
           <br>
               <form:form action="/disburse" method="post" modelAttribute="processPensionInput" id="basicBootstrapForm" class="form-horizontal">
                  <div class="form-group row">
                     <label path="aadharNumber" for="name" class="col-sm-3 col-form-label font-weight-bold">Aadhar Number:</label>
                     <div class="col-sm-9">
                        <form:input path="aadharNumber"  class="form-control" placeholder="Enter the Pensioner's Aadhar Number"  length="12" required="required"/>
                     </div>
                  </div>
                  <div class="form-group row">
                     <label for="dateOfBirth" path="pensionAmount" class="col-sm-3 col-form-label font-weight-bold">Pension Amount:</label>
                     <div class="col-sm-9">
                        <form:input path="pensionAmount" class="form-control" placeholder="Enter the Pension Amount" required="required"/>
                     </div>
                  </div>
                  <div class="form-group row">
                     <label for="pan" path="bankCharge" class="col-sm-3 col-form-label font-weight-bold">Bank Charge:</label>
                     <div class="col-sm-9">
                        <form:input path="bankCharge" class="form-control"  placeholder="Enter the Bank Charge according to its type" required="required"/>
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