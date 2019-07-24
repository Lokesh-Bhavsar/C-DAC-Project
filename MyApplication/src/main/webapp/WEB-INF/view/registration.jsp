<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Registration form</title>
<style type="text/css">
body {
	/* background:url() no-repeat; */
	height: 100%;
	width: 100%;
	background-image: url('static/image/3.jpg'); /*your background image*/
	background-repeat: no-repeat;
	/*we want to have one single image not a repeated one*/
	background-size: cover;
	/*this sets the image to fullscreen covering the whole screen*/
	/*css hack for ie*/
}

#log {
	/* border: 2px solid white; */
	padding: 30px 20px;
	background-color: ghostwhite;
	margin: 40px;
	-webkit-box-shadow: -1px -10px 25px -4px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: -1px -10px 25px -4px rgba(0, 0, 0, 0.75);
	box-shadow: -1px -10px 25px -4px rgba(0, 0, 0, 0.75);
}

img {
	width: 60px;
	margin: auto !important;
}

h1 {
	margin-top: -10px !important;
	color: wheat;
	text-align: center;
	font-weight: bolder;
}

label {
	font-size: 20px;
	color: white;
}

div {
	margin-top: 20px;
}
</style>

<!-- Bootstrap -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/registration">New Registration</a></li>
					
				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<h1>User Registration</h1>


				<form action="save-user" id="log" method="POST">

					<input type="hidden" name="id" value="${user.id }" />


					<div class="form-grop">
						Usename: <input type="text" name="username" class="form-control"
							value="${user.username }"> <span id="username"
							class="text-danger font-weight-bold"></span>
					</div>




					<!----------------------------------------------------------------------------------------->

					<div class="form-grop">
						Firstname: <input type="text" name="firstname"
							placeholder="Enter First Name" class="form-control"
							id="firstname" autocomplete="off" value="${user.firstname }">
						<span id="firstname" class="text-danger font-weight-bold"></span>
					</div>
					<!----------------------------------------------------------------------------------------->

					<div class="form-grop">
						Lastname: <input type="text" name="lastname"
							placeholder="Enter lastname Name" class="form-control"
							id="firstname" autocomplete="off" value="${user.lastname }">
						<span id="lastname" class="text-danger font-weight-bold"></span>
					</div>
					<!----------------------------------------------------------------------------------------->

					<div class="form-grop">
						Age: <input type="text" name="age" placeholder="Enter Age"
							class="form-control" id="age" autocomplete="off"
							value="${user.age }"> <span id="age"
							class="text-danger font-weight-bold"></span>
					</div>
					<!----------------------------------------------------------------------------------------->

					<div class="form-grop">
						Passsword: <input type="Password" name="Password"
							placeholder="Enter Password" class="form-control" id="password"
							autocomplete="off" value="${user.password }"> <span
							id="Password1" class="text-danger font-weight-bold"></span>
					</div>

					<!----------------------------------------------------------------------------------------


                        <div class="form-grop">
                            Confirm Password
                            <input type="text" name="cpass" placeholder="Enter Confirm Password" class="form-control" id="cpass" autocomplete="off">
                            <span id="cpass1" class="text-danger font-weight-bold"></span>
                        </div>-->

					<!------------------------------------------------------------------------------------------->
					<!-- <div class="form-grop">
                             Mobile Number
                             <input type="text" name="Mobile" placeholder="Enter Mobile Number " class="form-control" id="mobile" autocomplete="off">
                             <span id="mobile1" class="text-danger font-weight-bold"></span>
                         </div>-->
					<!--------------------------------------------------------------------------------------------->
					<!--<div class="form-grop">
                            Email
                            <input type="text" name="Email" placeholder="Enter Email address" class="form-control" id="email" autocomplete="off">
                            <span id="email1" class="text-danger font-weight-bold"></span>
                        </div>-->
					<br>

					<!--------------------------------------------------------------------------------------------->
					<!-- <input type="submit" name="submit" value="submit" class="btn btn-success"> -->
					<!--------------------------------------------------------------------------->
					<!-- <div class="checkbox">
        <label><input type="checkbox">Remember me</label>

    </div> -->
					<!-------------------------------------------------------------------------->
					<button type="submit" class="btn btn-success btn-block">Submit</button>
				</form>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/JavaScriptValidation.js"></script>

</body>
</html>