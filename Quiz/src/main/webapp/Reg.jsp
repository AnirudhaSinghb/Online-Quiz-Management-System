<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register - Quiz System</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.register-box {
	background-color: #fff;
	padding: 30px 40px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
	width: 400px;
}

.register-box h2 {
	margin-bottom: 25px;
	color: #333;
}

.register-box label {
	float: left;
	font-weight: bold;
	margin-bottom: 5px;
	color: #555;
}

.register-box input[type="text"], .register-box input[type="email"],
	.register-box input[type="password"] {
	width: 100%;
	padding: 10px 12px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 8px;
	outline: none;
	font-size: 14px;
}

.register-box input[type="submit"] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 10px 0;
	border: none;
	border-radius: 8px;
	font-size: 16px;
	cursor: pointer;
	transition: background 0.3s ease;
}

.register-box input[type="submit"]:hover {
	background-color: #45a049;
}

.register-box a {
	display: block;
	margin-top: 15px;
	color: #0066cc;
	text-decoration: none;
}

.register-box a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="register-box">
		<h2>Create Account</h2>
		<form action="./RegController" method="post">
			<label for="fname">First Name:</label>
			<input type="text" id="fname" name="fname" required> 
			<label for="lname">Last Name:</label>
			<input type="text" id="lname" name="lname"> 
			<label for="email">Email:</label> 
			<input type="email" id="email" name="email" required> 
			<label for="pass">Password:</label> 
			<input type="password" id="pass" name="pass" required> 
			<input type="submit" value="Register"> <a href="Login.jsp">Already have an account? Login</a>
		</form>
	</div>
</body>
</html>