<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message</title>
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

.message-box {
	background-color: #fff;
	padding: 30px 40px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
	max-width: 500px;
}

.message-box h3 {
	color: #333;
	word-wrap: break-word;
}

.message-box a {
	margin-top: 20px;
	display: inline-block;
	color: #007BFF;
	text-decoration: none;
}

.message-box a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="message-box">
		<h3>
			<%
			String msg = request.getParameter("msg");
			if (msg != null) {
				out.print(msg);
			} else {
				out.print("No message to display.");
			}
			%>
		</h3>
		<a href="Login.jsp">Go to Login</a>
	</div>
</body>
</html>