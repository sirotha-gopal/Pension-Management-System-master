<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <<%@ include file="" %><%@ page contentType="text/html; charset=" %> charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <title>Pension Form</title>
   </head>
   <body class="container">
      <center>
         <div class="bg-primary">
            <h1 class="text-white ">Welcome Member</h1>
         </div>
      </center>
      <br><br>
      <div>
         <form:form action="/submitinfo" method="post" modelAttribute="pensionerInput">
            <table class = "table table-striped">
               <tr>
                  <td>
                     <label for="name" class="col-sm-2 col-form-label">Name :</label>
                     <div class="col-sm-10">
                        <form:input path="name" placeholder="Enter Pensioner's Name"  class="form-control" required="required"/>
                     </div>
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="dateOfBirth" class="col-sm-2 col-form-label">D.O.B:</label>
                     <div class="col-sm-10">
                        <form:input path="dateOfBirth" placeholder="Enter your D.O.B"  class="form-control" required="required"/>
                     </div>
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="pan" class="col-sm-2 col-form-label">PAN Number:</label>
                     <div class="col-sm-10">
                        <form:input path="pan" placeholder="Enter your PanCard" class="form-control"  required="required"/>
                     </div>
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="aadhar" class="col-sm-2 col-form-label">AadharCard Number:</label>
                     <div class="col-sm-10">
                        <form:input path="aadharNumber" class="form-control" placeholder="Enter your AadharCard Number"  length="12"  required="required"/>
                     </div>
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="selfPension" class="col-sm-2 col-form-label">Self Pension:</label>
                     <form:checkbox path="selfPension" class="form-control"/>
                     <label for="familyPension" class="col-sm-2 col-form-label">Family Pension:</label>
                     <form:checkbox path="familyPension" class="form-control"/>
                  </td>
               </tr>
            </table>
            <br><br>
            <center>
               <iv class="form-group row float-right">
               <button type="submit" class="btn btn-primary mx-1">Submit</button>
               <button type="reset" class="btn btn-primary">Reset</button>
      </div>
      </center>
      </form:form>
      </div>
   </body>
</html>