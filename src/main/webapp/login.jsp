<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>${msg }</h1>
	<h1>Login Here</h1>
	<form action="login">
		<input type="text" name="email" placeholder="Enter Email">
		<input type="text" name="password" placeholder="Enter Password">
		<button type="submit">Login</button>
	</form>
	
	<p> <strong>Don't You Have Account? </strong> Click <a href="create_emp.jsp">Here</a> To Create    </p>
	
</body>
</html>