<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h1>Add Education Details : </h1>
	
	<form action="save_edu">
		<input type="hidden" name="emp_id" value="${id }" readonly="readonly">
		<input type="text" name="qualification" placeholder="Enter Qualification" >
		<input type="text" name="universityName" placeholder="Enter University Name">
		<input type="text" name="percentage" placeholder="Enter Percentage">
		<input type="text" name="yop" placeholder="Enter Year Of Passout">
		<select name="highestQualification">
			<option value="NO">---SELECT---</option>
			<option value="YES">YES</option>
			<option value="NO">NO</option>
		</select>
		<button type="submit">SUBMIT</button>
	</form>
	
</body>
</html>