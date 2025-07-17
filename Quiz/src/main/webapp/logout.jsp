<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logging Out...</title>
<meta http-equiv="refresh" content="1;URL='Login.jsp'" />
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

.logout-message {
	background-color: #fff;
	padding: 30px 40px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
	color: #333;
}

.logout-message h2 {
	margin-bottom: 10px;
}

.logout-message p {
	color: #777;
}
</style>
</head>
<body>
	<div class="logout-message">
		<h2>Logging out...</h2>
		<p>Please wait while we redirect you to the login page.</p>
	</div>
	<%
	session.invalidate();
	response.sendRedirect("Login.jsp");
	%>
</body>
</html>