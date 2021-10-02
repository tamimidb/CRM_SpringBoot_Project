<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="/user/register" method="POST">	
	<label>Name</label>
	<input type="text" name="name" /> <br/>
	
	<label>Username</label>
	<input type="text" name="username" /> <br/>
	
	<label>Password</label>
	<input type="text" name="password" /> <br/>
	
	<input type="submit" value="Register">
</form>


</body>
</html>