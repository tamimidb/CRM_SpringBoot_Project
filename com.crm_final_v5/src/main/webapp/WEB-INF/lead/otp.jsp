<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div style="text-align: center;">
		<br> <br><br> <br><br> <br>
		<form action="/send-otp" method="post">
		<div class="form-group">
			<td><label class="field-label" for="otpNumber"></label></td>
			<td><input type="text" class="form-control" name="otp" placeholder="Please
					Enter Your otp Number Here:"/></td>
		</div>
		<button  type="submit" value="Send OTP">Send OTP</button>
		
		
		
		<!-- <a href="/lead/"><input type="submit"
			class="bottom__header__button__saveAndNew" value="Send OTP"></a> -->

	</form>
	
</body>
</html>