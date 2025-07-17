<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - Quiz System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	margin: 0;
	padding: 0;
}

.navbar-inverse {
	border-radius: 0 0 12px 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	border: none;
}

.navbar-brand {
	font-size: 20px;
	font-weight: bold;
	color: #fff !important;
}

.nav>li>a {
	color: #ddd !important;
	font-weight: 500;
}

.nav>li>a:hover, .nav>li.active>a {
	background-color: #4CAF50 !important;
	color: white !important;
}

.dropdown-menu {
	border-radius: 8px;
	overflow: hidden;
}

.dropdown-menu>li>a {
	color: #333;
}

.dropdown-menu>li>a:hover {
	background-color: #f0f0f0;
}

.navbar-right .glyphicon-log-in {
	margin-right: 5px;
}

.container-fluid {
	padding: 0 40px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Quiz Web App</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="welcome.jsp">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Test <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="takequiz.jsp?t=cn">Computer Network</a></li>
						<li><a href="takequiz.jsp?t=os">OS</a></li>
						<li><a href="takequiz.jsp?t=se">SE</a></li>
						<li><a href="takequiz.jsp?t=ds">DS</a></li>
						<li><a href="takequiz.jsp?t=oot">OOT</a></li>
						<li><a href="takequiz.jsp?t=dbms">DBMS</a></li>
					</ul></li>

				<li><a href="history.jsp">Result History</a></li>

				<li><a href="top5.jsp">Top 5 Result</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Sign Out</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>