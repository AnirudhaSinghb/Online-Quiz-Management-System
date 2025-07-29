<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top 5 Results</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap + FontAwesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	margin: 0;
	padding: 0;
}

.jumbotron {
	background-color: #fff;
	margin: 30px auto;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	padding: 30px;
	max-width: 900px;
}

.history-container {
	background-color: #fff;
	padding: 30px;
	margin: 20px auto;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	max-width: 900px;
}

table {
	width: 100%;
	margin-top: 20px;
}

th, td {
	text-align: center;
	padding: 12px;
}

th {
	background-color: #f5f5f5;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

h2, h4 {
	color: #333;
}
</style>
</head>
<body>

	<jsp:include page="afterloginheader.jsp"></jsp:include>

	<div class="jumbotron text-center">
		<h2>
			Hello
			<%=session.getAttribute("fname")%></h2>
		<h4>Top 5 Result History</h4>
	</div>

	<div class="history-container">
		<h2 class="text-center">History</h2>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Subject</th>
					<th>Marks</th>
				</tr>
			</thead>
			<tbody>
				<%
				DBUtil x = new DBUtil();
				String sql = "SELECT * FROM resultanalysis ORDER BY totalmarks DESC LIMIT 5";
				ResultSet rs = x.Query_Returner(sql);
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
