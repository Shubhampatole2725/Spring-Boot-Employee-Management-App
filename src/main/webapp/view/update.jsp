<%@page import="com.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: ivory;">

		<% 
			Employee emp = (Employee) request.getAttribute("employee");
		%>
		
		<div align="center">
			<h1>Edit Employee Details</h1><hr>
			
			<form action="update">
			
				<input type="hidden" name="id" value="<%=emp.getId()%>">
				
				<label>Name : </label>
				<input type="text" name="name" value="<%=emp.getName() %>" ><br><br>
			
				<label>Address : </label>
				<input type="text" name="address" value="<%=emp.getAddress() %>" ><br><br>
			
				<label>Designation : </label>
				<input type="text" name="designation" value="<%=emp.getDesignation() %>" ><br><br>
			
				<label>Salary : </label>
				<input type="number" name="salary" value="<%=emp.getSalary() %>" ><br><br>
				
				<input type="submit" value="UPDATE"> 
			
			</form>
			
		</div>

</body>
</html>