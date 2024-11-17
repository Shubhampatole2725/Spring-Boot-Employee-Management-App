<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
		
	<script type="text/javascript">
	
	function registerData(){
		alert('Register..!!!')
		document.myForm.action="reg";
		document.myForm.submit();
	}

	function loginData(){
		alert('Login..!!!')
		document.myForm.action="log";
		document.myForm.submit();
	}
	
	
	</script>
	
</head>
<body style="background-image: 
			url('https://t4.ftcdn.net/jpg/07/83/85/29/240_F_783852928_l4yZrX95wAZbf1DfrVzTW2hL0PCKgdxK.jpg');
			background-repeat: no-repeat;
			background-size: cover;
			 ">
	<div align="center">

	<marquee  scrollamount="12" width="100%" direction="left" height="100px" style="font-size: 90px; background-color: ivory;">Welcome To Employee Management System</marquee>
	<hr>
	
	<form name="myForm">
		<br><br>
		<button onclick="registerData()">Register</button> &nbsp;&nbsp;&nbsp;&nbsp;
		<button onclick="loginData()">Login</button>
		</div>
		
	</form>	
</body>
</html>