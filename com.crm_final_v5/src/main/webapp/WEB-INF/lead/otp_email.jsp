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
		
	<br> <br><br> <br><br> <br>
	<form action="otp">
		<div class="form-group">
			<td><label class="field-label" for="otpNumber">   We have sent OTP to your email</label></td><br>
			<td><input type="text" class="form-control" name="otpNumber"  placeholder="Please
					Enter Your OTP Number Here:"/></td>
		</div>
		<a href="/lead/otp"><input type="submit"
			class="bottom__header__button__saveAndNew" value="Verify"></a>

	</form>
	</div>
</body>
</html>