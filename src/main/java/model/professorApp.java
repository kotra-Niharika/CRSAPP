package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class professorApp {

	int pid;
	String pname;
	int exp;
	int cid;
	String user_name;
	String password;
	private Connection con;
	private PreparedStatement pstmt;
	private PreparedStatement pstmt1;
	private ResultSet resultSet1;
	private Statement stmt;
	private ResultSet resultset;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public professorApp() {

		String url = "jdbc:mysql://localhost:3306/courses";

		String user = "root";

		String pwd = "root";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			con = DriverManager.getConnection(url, user, pwd);

		}

		catch (Exception e) {

			e.printStackTrace();

		}

	}

	public boolean register() {
		String sql = "insert into users values(?,?)";
		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, getUser_name());

			pstmt.setString(2, getPassword());

			int x = pstmt.executeUpdate();
			if (x > 0) {

				String sql1 = "insert into prequest values(?,?)";

				pstmt = con.prepareStatement(sql1);

				pstmt.setString(1, getUser_name());

				pstmt.setString(2, getPassword());

				int y = pstmt.executeUpdate();

				if (y > 0) {

					String sql2 = "insert into professor values(?,?,?,?)";
					pstmt = con.prepareStatement(sql2);
					pstmt.setInt(1, getPid());
					pstmt.setInt(2, getCid());
					pstmt.setString(3, getPname());
					pstmt.setInt(4, getExp());

					int z = pstmt.executeUpdate();

					if (z > 0) {

						return true;
					}

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean removePro() {
		try {
			String sql = "delete from professor where pid=?";

			pstmt = con.prepareStatement(sql);
			String sqls = "select pname from professor where pid=?";
			pstmt1 = con.prepareStatement(sqls);

			pstmt1.setInt(1, getPid());
			resultSet1 = pstmt1.executeQuery();

			String pname = "";

			if (resultSet1.next()) {
				pname = resultSet1.getString("pname");
			} else {
				return false;
			}

			pstmt.setInt(1, getPid());
			System.out.println(getPid());
			int x = pstmt.executeUpdate();
			if (x > 0) {
				return true;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public boolean loginprof() {
		try {

			String sql = "select * from prequest";
			stmt = con.createStatement();
			resultset = stmt.executeQuery(sql);

			while (resultset.next() == true) {

				if (user_name.equals(resultset.getString("user_name"))
						&& password.equals(resultset.getString("password"))) {
					return true;

				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

}
