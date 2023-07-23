<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
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

    <title>verified</title>
  </head>
  <body class="container">
    <br>
    <br>
   
    <div class="row">
      <div class="col">
      </div>
      
      
      <div class="col-sm-5 card card-5">
        <br>
         <center>
    <div class="">
      <img src="https://i.postimg.cc/9Q1V2JwX/tick.png" class="rounded d-block " alt="..." style="width: 90px; height: 90px; ">
    </div>
    <h3 style="color: blue">Verified</h3>
    </center>
        
        <br>
        
        <div class="row">
          <div class="col-sm-4 font-weight-bold">
            <p>Username:</p>
          </div>
          <div class="col-sm-8">
            <p>${name}</p>
          </div>
          
           <div class="col-sm-4 font-weight-bold">
            <p>PAN Number:</p>
          </div>
          <div class="col-sm-8">
            <p>${pan}</p>
          </div>
          
          <div class="col-sm-4 font-weight-bold">
            <p>D.O.B:</p>
          </div>
          <div class="col-sm-8">
            <p>${dob}</p>
          </div>
          
          <div class="col-sm-4 font-weight-bold">
            <p>Pension Type:</p>
          </div>
          <div class="col-sm-8">
            <p>${pensionType}</p>
          </div>
          
          <div class="col-sm-4 font-weight-bold">
            <p>Pension Amount:</p>
          </div>
          <div class="col-sm-8">
            <p>${pensionAmount}</p>
          </div>
        </div>
        
		<br>
        <p ><span class="font-weight-bold"> Note:</span> <span class="font-italic">Please make the note of pensioner's Pension amount.</span></p>
		<a  href="http://localhost:8090/disburse" class="btn btn-primary float-right">Submit for disbursement</a>	
        <br>
      </div>
      
      
      <div class="col">
      </div>
     </div>
   
  </body>
</html>