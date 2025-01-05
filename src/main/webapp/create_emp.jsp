<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Create Employee</h1>
	
	<form action="save_emp">
		<input type="text" name="fname" placeholder="Enter First Name">
		<input type="text" name="lname" placeholder="Enter Last Name">
		<input type="text" name="email" placeholder="Enter Email">
		<input type="text" name="phone" placeholder="Enter Phone Number">
		<input type="text" name="department" placeholder="Enter Department">
		<input type="text" name="salary" placeholder="Enter Salary">
		<select name="status">
			<option value="ACTIVE" >----SELECT----</option>
			<option value="ACTIVE" >ACTIVE</option>
			<option value="IN_ACTIVE" >IN_ACTIVE</option>
		</select>
		<button type="submit">SUBMIT</button>
	</form>
	
</body>
</html>