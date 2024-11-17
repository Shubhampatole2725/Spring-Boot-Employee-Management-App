<%@page import="com.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<script type="text/javascript">
		
		function editData(){
			alert('You are editing data..!!')
			document.myForm.action="edit";
			document.myForm.submit();
		}

		function deleteData(){
			alert('You are deleting data..!!')
			document.myForm.action="delete";
			document.myForm.submit();
		}
	
	</script>
	
</head>
<body style="background-color: ivory;">
	
	<%
			List<Employee> list = (List<Employee>)request.getAttribute("list");
	%>
	
	<div align="center">
		<h1>Success Page</h1><hr>
		
		<form name="myForm">
			
			<table border="2px">
				<caption>Employee Data</caption>
				<thead>
					<tr>
						<th>Select</th>
						<th>Employee Id</th>
						<th>Employee Name</th>
						<th>Employee Address</th>
						<th>Employee Designation</th>
						<th>Employee Salary</th>
					</tr>
				</thead>
				
				<tbody>
	
				<%
					for(Employee emp : list){
				%>
				
					<tr>
						<td><input type="radio" name="id" value="<%=emp.getId()%>"></td>
						<td><%=emp.getId() %></td>
						<td><%=emp.getName() %></td>
						<td><%=emp.getAddress() %></td>
						<td><%=emp.getDesignation() %></td>
						<td><%=emp.getSalary() %></td>
					</tr>
				</tbody>		
			<%
				}
			%>
			</table>
		</form>		
				
		<button onclick="editData()" style="background-color: green;">EDIT</button>&nbsp;&nbsp;&nbsp;
				
		<button onclick="deleteData()" style="background-color: red;">DELETE</button>
	
	</div>
	
		
</body>
</html>