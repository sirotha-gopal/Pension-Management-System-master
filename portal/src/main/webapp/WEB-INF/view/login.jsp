<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--  Links For Font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bitter&display=swap"
	rel="stylesheet">
<style>
.card-5 {
	box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px
		rgba(0, 0, 0, 0.22);
}

body {
	overflow-y: hidden;
	overflow-x: hidden;
}

.card {
	border: 1px solid rgb(205, 222, 254);
	height: 356px;
	margin-top: 70px;
}

.img-fluid {
	height: 480px;
	margin-top : 0px;
	margin-left: 90px;
}

</style>
<title>Pension Process</title>
</head>
<body>
	<br>
	<div class="">
		<div class="row h-50">

			<div class="col-sm-12 text-center"
				style="font-family: 'Noto Sans JP', sans-serif; font-size: 50px; font-weight:900; color:rgb(45, 119, 237);">Pension
				Managament Portal</div>
			<div class="col-sm-7">
				<img src="https://i.postimg.cc/sxgBp1Kk/image-2.jpg"
					class="img-fluid" alt="Responsive image">
			</div>
			<div class="card col-sm-4">
				<div class=" my-auto  ">
					<div style="font-family: 'Noto Sans JP', sans-serif; font-size: 20px; font-weight:900; color:rgb(45, 119, 237);">Login:</div>
					<br>				
					<form:form modelAttribute="login" action="/login" method="post">
						<div class="row">
							<div class="col">
								<form:label path="username" class="font-weight-bold">User name: </form:label>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<form:input path="username" required="required"
									placeholder="username" class="form-control" />
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								<form:label path="password" class="font-weight-bold">Password:</form:label>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<form:password path="password" class="form-control"
									placeholder="password" required="required" />
							</div>
						</div>
						<br>
						<br>
						<div class="row">
							<div class="col">
								<form:button class="btn btn-block text-light btn-outline-dark"
									style="background-color:#aec5f7
">Login</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>
</body>
</html>