package db;

import java.sql.*;

public class DBUtil {

	Connection conn;

	public DBUtil() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "root");

	}

	public void Query_Executer(String sql) throws Exception {
		try (Statement st = conn.createStatement()) {
			st.execute(sql);
		}
	}

	public ResultSet Query_Returner(String sql) throws Exception {
		Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		return st.executeQuery(sql);
	}

	public void close() {
		try {
			if (conn != null && !conn.isClosed())
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
