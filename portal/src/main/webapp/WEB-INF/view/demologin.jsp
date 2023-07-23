<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Login</title>
  </head>
  <body class="container">
 <div class="container mt-5">
   <div class="col-md-4 offset-md-4">
      <div class="card">
         <div class="card-header text-center bg-primary">
            <h4 class="text-white">Pension Management Portal</h4>
         </div>
         <div class="card-body">
           
            <form:form modelAttribute="login" action="/login" method="post">
              
              <div class="row">
                <div class="col">
                  <form:label path="username" >User name: </form:label>
                </div>
             </div>
             <div class="row">
                <div class="col">
                  <form:input path="username" required="required" placeholder="username" class="form-control"/>
               </div>
             </div>
             <div class="row">
                <div class="col">
                  <form:label path="password">Password:</form:label>
                </div>
             </div>
             <div class="row">
                <div class="col">
                  <form:password path="password" class="form-control" placeholder="password"  required="required"/>
               </div>
             </div>
             <br>
             <div class="row">
                <div class="col" >
                  <form:button class="btn btn-primary btn-block">Login</form:button>
               </div>
             </div> 
               
            </form:form>
           
           
         </div>
      </div>
   </div>
</div>
    
    
    
  </body>
</html>