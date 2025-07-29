<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="questionbank.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Take Quiz</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #74ebd5, #acb6e5);
	margin: 0;
	padding: 0;
}

.quiz-container {
	background-color: #fff;
	padding: 30px;
	margin: 40px auto;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	max-width: 900px;
}

.quiz-container h2 {
	font-size: 22px;
	margin-bottom: 20px;
	color: #333;
}

table.table {
	margin-top: 10px;
}

label {
	font-weight: normal;
}

.btn-success {
	font-size: 16px;
	padding: 10px 30px;
	margin-top: 20px;
	border-radius: 8px;
}

hr {
	border-top: 1px solid #ccc;
}

.center {
	text-align: center;
}

.question-header {
	font-weight: bold;
	font-size: 18px;
}
</style>
</head>
<body>
	<jsp:include page="afterloginheader.jsp"></jsp:include>

	<form action="history.jsp">

		<%!String subject = "";
	static String[] question;
	static String[][] choice;
	static String[] n;
	static int cnt = 0;%>
		<%
		String t = request.getParameter("t");

		if (t.trim().equals("cn")) {
			subject = "Computer Network";
			session.setAttribute("sub", subject);
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = ComputerNetwork.nw[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = ComputerNetwork.nwchoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = ComputerNetwork.nwans[Integer.parseInt(qno[i].toString())];
			}

		}
		if (t.trim().equals("oot")) {
			subject = "Object Oriented Technology";
			session.setAttribute("sub", subject);
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = oot.oot[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = oot.ootchoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = oot.ootanswer[Integer.parseInt(qno[i].toString())];
			}

		}

		if (t.trim().equals("ds")) {
			subject = "Data Structure";
			session.setAttribute("sub", subject);
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = DataSt.ds[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = DataSt.dschoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = DataSt.dsans[Integer.parseInt(qno[i].toString())];
			}

		}

		if (t.trim().equals("se")) {
			subject = "Software Engneering";
			session.setAttribute("sub", subject);
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = SE.se[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = SE.sechoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = SE.seans[Integer.parseInt(qno[i].toString())];
			}

		}

		if (t.trim().equals("os")) {
			subject = "Operating System";
			session.setAttribute("sub", subject);
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = OS.os[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = OS.oschoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = OS.osanswer[Integer.parseInt(qno[i].toString())];
			}

		}

		if (t.trim().equals("dbms")) {
			subject = "Database Management System";
			question = new String[10];
			Object qno[] = new UniqueRandomNumber().unique();

			for (int i = 0; i < 10; i++) {
				question[i] = dbms.dbms[Integer.parseInt(qno[i].toString())];
			}

			choice = new String[10][4];
			for (int i = 0; i < choice.length; i++) {
				for (int j = 0; j < 4; j++) {
			int qn = Integer.parseInt(qno[i].toString());
			choice[i][j] = dbms.dbmschoice[qn][j];
				}
			}

			n = new String[10];
			for (int i = 0; i < 10; i++) {
				n[i] = dbms.dbmsanswer[Integer.parseInt(qno[i].toString())];
			}

		}

		DBUtil x = new DBUtil();
		String sql = "insert into testresult(email,fname,subject) values('" + session.getAttribute("email") + "','"
				+ session.getAttribute("fname") + "','" + subject + "')";

		x.Query_Executer(sql);

		sql = "select max(testid) from testresult";
		DBUtil x1 = new DBUtil();
		ResultSet rs = x1.Query_Returner(sql);
		rs.next();
		int testid = rs.getInt(1);

		session.setAttribute("testid", testid);

		for (int i = 0; i < 10; i++) {
			DBUtil x2 = new DBUtil();
			sql = "insert into testresultdesc values(" + testid + "," + (i + 1) + ",'" + question[i] + "','E','" + n[i] + "')";
			x2.Query_Executer(sql);

		}
		session.setAttribute("sub", subject);

		out.println("<div class='quiz-container'><h2>Subject: " + subject + "</h2></div>");

		for (int i = 0; i < 10; i++) {
		%>
		<div class="quiz-container">
			<h2>
				Question No:
				<%=i + 1%></h2>
			<div class="question-header">
				Q:
				<%=question[i]%></div>
			<table class="table">
				<tr>
					<td><input type="radio" id="q<%=i%>a"
						name="fav_language<%=i + 1%>" value="A"> <label
						for="q<%=i%>a">Option A: <%=choice[i][0]%></label></td>
				</tr>
				<tr>
					<td><input type="radio" id="q<%=i%>b"
						name="fav_language<%=i + 1%>" value="B"> <label
						for="q<%=i%>b">Option B: <%=choice[i][1]%></label></td>
				</tr>
				<tr>
					<td><input type="radio" id="q<%=i%>c"
						name="fav_language<%=i + 1%>" value="C"> <label
						for="q<%=i%>c">Option C: <%=choice[i][2]%></label></td>
				</tr>
				<tr>
					<td><input type="radio" id="q<%=i%>d"
						name="fav_language<%=i + 1%>" value="D"> <label
						for="q<%=i%>d">Option D: <%=choice[i][3]%></label></td>
				</tr>
			</table>
		</div>
		<%
		}
		%>

		<div class="quiz-container center">
			<button type="submit" class="btn btn-success" name="b1">Submit</button>
		</div>
	</form>
</body>
</html>