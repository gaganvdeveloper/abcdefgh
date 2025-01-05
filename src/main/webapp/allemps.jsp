<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@   taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border-collapse: collapse;
		margin: auto;
	}
	h1{
		text-align: center;
	}
</style>
</head>
<body>
<h1>${msg }</h1>
	<h1>All Employees</h1>
	<a href="create_emp.jsp"> <button>Create Employee</button> </a>
	<table border="5" cellspacing="10" cellpadding="10">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Department</th>
			<th>Salary</th>
			<th colspan="2">Action</th>
		</tr>
		<c:forEach var="e" items="${el }">
			<tr>
				<td>${e.getFname() }</td>
				<td>${e.getLname() }</td>
				<td>${e.getEmail() }</td>
				<td>${e.getPhone() }</td>
				<td>${e.getDepartment() }</td>
				<td>${e.getSalary() }</td>
				<td> <a href="view?id=${e.getId() }"> <button>View More</button> </a> </td>
				<td> <a href="delete?id=${e.getId() }"> <button>Delete</button> </a> </td>
			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>