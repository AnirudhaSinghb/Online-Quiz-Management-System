<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Quiz System</title>
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

.login-box {
	background-color: #fff;
	padding: 30px 40px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
	width: 350px;
}

.login-box h2 {
	margin-bottom: 25px;
	color: #333;
}

.login-box label {
	float: left;
	font-weight: bold;
	margin-bottom: 5px;
	color: #555;
}

.login-box input[type="email"], .login-box input[type="password"] {
	width: 100%;
	padding: 10px 12px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 8px;
	outline: none;
	font-size: 14px;
}

.login-box input[type="submit"] {
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

.login-box input[type="submit"]:hover {
	background-color: #45a049;
}

.login-box a {
	display: block;
	margin-top: 15px;
	color: #0066cc;
	text-decoration: none;
}

.login-box a:hover {
	text-decoration: underline;
}

.error-msg {
	margin-top: 15px;
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="login-box">
		<h2>Login to Quiz</h2>
		<form action="./LoginController" method="post">
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" required> <label for="pass">Password:</label> <input
				type="password" id="pass" name="pass" required> <input
				type="submit" value="Login"> <a href="Reg.jsp">New User?
				Register here</a>
		</form>

		<%
		if (request.getAttribute("msg") != null) {
		%>
		<div class="error-msg">Invalid email or password.</div>
		<%
		}
		%>
	</div>
</body>
</html>
