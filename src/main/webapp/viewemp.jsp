<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,h1 {
	margin: auto;
	text-align: center;
	border-collapse: collapse;
	
}

</style>
</head>
<body>
	<h1>${msg }</h1>
	<h1>Employee Details</h1>
	
	
	<table border="5" cellspacing="10" cellpadding="10">
		<tr>
			<th colspan="2"">Attribute</th>
		</tr>
		<tr>
			<td>First Name</td> <td>${e.getFname() }</td>
		</tr>
		<tr>
			<td>Last Name</td> <td>${e.getLname() }</td>
		</tr>
		<tr>
			<td>Email</td> <td>${e.getEmail() }</td>
		</tr>
		<tr>
			<td>Phone Number</td> <td>${e.getPhone() }</td>
		</tr>
		<tr>
			<td>Salary</td> <td>${e.getSalary() }</td>
		</tr>
		<tr>
			<td>Department</td> <td>${e.getDepartment() }</td>
		</tr>
		<tr>
			<td>Status</td> <td>${e.getStatus() }</td>
		</tr>
	</table>
	
	<a href="addedupage?id=${e.getId() }"> <button>Add Education</button> </a>
	
	<h1>Education Details</h1>
	<table border="5" cellspacing="10" cellpadding="10">
		<tr>
			<th>ID</th>
			<th>Qualification</th>
			<th>University Name</th>
			<th>Percentage</th>
			<th>Year of Pass out</th>
			<th>Highest Qualification</th>
			<th colspan="2">Action</th>
		</tr>
		
		<c:forEach var="edu" items="${eduList }" >
			<tr>
				<td>${edu.getId() }</td>
				<td>${edu.getQualification() }</td>
				<td>${edu.getUniversityName() }</td>
				<td>${edu.getPercentage() }</td>
				<td>${edu.getYop() }</td>
				<td>${edu.getHighestQualification() }</td>
				<td> <a href="delete"> <button>Delete</button> </a> </td>
				<td> <a href="updatepage"> <button>Update</button> </a> </td>
			</tr>
		</c:forEach>
	</table>
	
	
	<a href="addaddresspage?id=${e.getId() }"> <button>Add Address</button> </a>
	
	
	
	
	
</body>
</html>