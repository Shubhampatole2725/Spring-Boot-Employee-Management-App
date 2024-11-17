<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<script type="text/javascript">
	
		function back(){
			document.backForm.action="/";
			document.backForm.submit();
		}
		
	</script>

</head>
<body style="background-color: ivory;">

		<div align="center">
			<h1>Register Page</h1><hr>
		
			<form name="backForm" action="register">
			
				<label>Name : </label>
				<input type="text" name="name" placeholder="Enter Your Name Here" required="required"><br><br>
			
				<label>Address : </label>
				<input type="text" name="address" placeholder="Enter Your Name Here" required="required"><br><br>
			
				<label>Designation : </label>
				<input type="text" name="designation" placeholder="Enter Your Name Here" required="required"><br><br>
			
				<label>Salary : </label>
				<input type="number" name="salary" placeholder="Enter Your Name Here" required="required"><br><br>
				
				<input type="submit" value="Register"> &nbsp;&nbsp;&nbsp;
				<button onclick="back()" >Back</button> 
			
			</form>
			
		</div>

</body>
</html>