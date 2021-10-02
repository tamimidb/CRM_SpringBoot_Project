<!DOCTYPE html>
<html lang="en">
<head>
<title>CRM Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="../app-assets/login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/login/css/main.css">
<!--===============================================================================================-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('../app-assets/login/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" action="/user/login" method="post">
					<span class="login100-form-title p-b-49"> CRM Login </span>

						<div class="wrap-input100 validate-input m-b-23"
							data-validate="Username is reauired">
							<span class="label-input100">Username</span> <input
								class="input100" type="text" id="username" name="username"
								placeholder="Type your username"> <span
								class="focus-input100" data-symbol="&#xf206;"></span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Password is required">
							<span class="label-input100">Password</span> <input
								class="input100" type="password" name="password" id="password"
								placeholder="Type your password"> <span
								class="focus-input100" data-symbol="&#xf190;"></span>
						</div>
						<br>
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<div style="text-align: center;">
									<input type="submit" value="Login" />
								</div>


							</div>
						</div>

					<div>
						<div class="text-right p-t-8 p-b-31">
							<a href="#"> Forgot password? </a>
						</div>



						<div class="txt1 text-center p-t-54 p-b-20">
							<span> Or Sign Up Using </span>
						</div>

						<div class="flex-c-m">
							<a href="#" class="login100-social-item bg1"> <i
								class="fa fa-facebook"></i>
							</a> <a href="#" class="login100-social-item bg2"> <i
								class="fa fa-twitter"></i>
							</a> <a href="#" class="login100-social-item bg3"> <i
								class="fa fa-google"></i>
							</a>
						</div>

						<div class="flex-col-c p-t-155">
							<span class="txt1 p-b-17"> Or Sign Up Using </span> <a href="#"
								class="txt2"> Sign Up </a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="../app-assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="../app-assets/login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../app-assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="../app-assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../app-assets/login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../app-assets/login/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="../app-assets/login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../app-assets/login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../app-assets/login/js/main.js"></script>

</body>
</html>