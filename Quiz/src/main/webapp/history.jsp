<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Result</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	margin: 0;
	padding: 0;
}

.jumbotron {
	background-color: #ffffff;
	margin: 30px auto;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	padding: 30px;
	max-width: 900px;
}

.result-container {
	background-color: #fff;
	padding: 30px;
	margin: 20px auto;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	max-width: 1000px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	text-align: center;
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

th:first-child, td:first-child {
	text-align: left;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

.fa-check {
	color: green;
}

.fa-remove {
	color: red;
}

.alert-success {
	font-size: 18px;
	margin-top: 30px;
	border-radius: 8px;
}
</style>
</head>
<body>

	<%
	Object testidObj = session.getAttribute("testid");
	if (testidObj == null) {
		response.sendRedirect("welcome.jsp");
		return;
	}

	String testid = testidObj.toString();
	int totalmarks = 0;
	boolean hasAnswers = false;

	for (int i = 0; i < 10; i++) {
		if (request.getParameter("fav_language" + (i + 1)) != null) {
			hasAnswers = true;
			break;
		}
	}

	if (hasAnswers) {
		DBUtil x = new DBUtil();
		for (int i = 0; i < 10; i++) {
			String userAns = request.getParameter("fav_language" + (i + 1));
			if (userAns == null)
		userAns = "";
			else
		userAns = userAns.replace("'", "''");

			String sql = "UPDATE testresultdesc SET uans='" + userAns + "' WHERE testid=" + testid + " AND qno=" + (i + 1);
			try {
		x.Query_Executer(sql);
			} catch (Exception e) {
		out.println("<div class='alert alert-danger'>SQL Error: " + e.getMessage() + "</div>");
			}
		}
	}
	%>

	<jsp:include page="afterloginheader.jsp"></jsp:include>

	<div class="jumbotron text-center">
		<h2>
			Hello
			<%=session.getAttribute("fname")%></h2>
		<h4>
			Test Result: Subject -
			<%=session.getAttribute("sub").toString()%></h4>
	</div>

	<div class="result-container">
		<table class="table table-bordered">
			<tr>
				<th>Question</th>
				<th>Your Answer</th>
			</tr>
			<%
			DBUtil x2 = new DBUtil();
			String sql = "SELECT * FROM testresultdesc WHERE testid=" + testid + " ORDER BY qno";
			ResultSet rs = x2.Query_Returner(sql);
			while (rs.next()) {
				String correctAns = rs.getString(4).trim();
				String userAns = rs.getString(5).trim();
				if (correctAns.equals(userAns))
					totalmarks++;
			%>
			<tr>
				<td><strong><em><%=rs.getInt(2)%></em></strong> <%=rs.getString(3)%></td>
				<td>
					<%
					if (correctAns.equals(userAns)) {
					%> <i class="fa fa-check"></i> <%
 } else {
 %> <i class="fa fa-remove"></i> <%
 }
 %>
				</td>
			</tr>
			<%
			}
			%>
		</table>

		<%
		if (hasAnswers) {
			DBUtil x3 = new DBUtil();
			String analysisSql = "REPLACE INTO resultanalysis VALUES(" + testid + ", '"
			+ session.getAttribute("fname").toString() + "', '" + session.getAttribute("sub").toString() + "', "
			+ totalmarks + ")";
			x3.Query_Executer(analysisSql);
		%>
		<div class="alert alert-success text-center">
			<strong>Result Submitted!</strong> You scored <strong><%=totalmarks%></strong>
			out of 10 in <strong><%=session.getAttribute("sub").toString()%></strong>.
		</div>
		<%
		}
		%>
	</div>

</body>
</html>
