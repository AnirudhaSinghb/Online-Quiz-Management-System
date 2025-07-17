package modal;

import java.sql.ResultSet;

import db.DBUtil;

public class RegUser {
	private String fname;
	private String lname;
	private String email;
	private String password;

	public RegUser() {

	}

	public RegUser(String fname, String lname, String email, String password) {
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean InsertUser() throws Exception {
		String Sql = "insert into reguser values('" + this.getFname() + "','" + this.getLname() + "','"
				+ this.getEmail() + "','" + this.getPassword() + "')";

		DBUtil obj = new DBUtil();
		obj.Query_Executer(Sql);
		return true;
	}

	public boolean CheckUser(String email, String pass) throws Exception {
		String sql = "select * from reguser where email='" + email + "' and password='" + pass + "'";

		DBUtil obj = new DBUtil();
		ResultSet rs = obj.Query_Returner(sql);
		if (rs.next()) {
			this.setFname(rs.getString(1));
			this.setLname(rs.getString(2));
			this.setEmail(rs.getString(3));
			return true;
		}
		return false;

	}

}
