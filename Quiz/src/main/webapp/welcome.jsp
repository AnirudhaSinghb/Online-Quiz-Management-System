<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - Quiz System</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	margin: 0;
	padding: 0;
}

.welcome-container {
	max-width: 800px;
	margin: 50px auto;
	background-color: #fff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
}

.welcome-container h4 {
	color: #333;
	font-size: 22px;
	margin: 0;
}
</style>
</head>
<body>
	<jsp:include page="afterloginheader.jsp"></jsp:include>
	<div class="welcome-container">
		<h4>
			Welcome user:
			<%=session.getAttribute("fname") != null ? session.getAttribute("fname") : "Guest"%>
		</h4>
	</div>
</body>
</html>