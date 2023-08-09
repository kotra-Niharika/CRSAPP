package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CourseApp {
	int cid;
	String cname;
	int fees;
	int dur_months;
	private PreparedStatement pstmt1;
	private ResultSet resultSet1;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getFees() {
		return fees;
	}

	public void setFees(int fees) {
		this.fees = fees;
	}

	public int getDur_months() {
		return dur_months;
	}

	public void setDur_months(int dur_months) {
		this.dur_months = dur_months;
	}

	public static PreparedStatement pstmt;
	static String user_name;
	static String password;

	private static Connection con;

	private static ResultSet res;

	public CourseApp() {
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

	public static boolean login() {
		try {
			String sql = "select * from users where user_name=? and password=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, user_name);

			pstmt.setString(2, password);

			res = pstmt.executeQuery();

			if (user_name.equals("admin") && password.equals("admin")) {

				return true;

			} else {

				return false;

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return false;

	}

	public boolean admin() {
		boolean b = login();

		if (b == true) {

			return true;

		} else {
			return false;

		}
	}

	public static String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public static String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean course() {
		try {
			String sql = "insert into course values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getCid());
			pstmt.setString(2, getCname());
			pstmt.setInt(3, getFees());
			pstmt.setInt(4, getDur_months());

			int x = pstmt.executeUpdate();
			if (x > 0) {
				// CRSApp.sleep(3000);
				// System.out.println(c.getCname() + "\n Course Added--------- :");
				return true;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean removec() {
		try {
			String sql = "delete from course where cid=?";
			pstmt = con.prepareStatement(sql);
			String sqls = "select cname from course where cid=?";
			pstmt1 = con.prepareStatement(sqls);

			pstmt1.setInt(1, getCid());
			resultSet1 = pstmt1.executeQuery();

			if (resultSet1.next()) {
				cname = resultSet1.getString("cname");
			} else {
				return false;
			}

			pstmt.setInt(1, getCid());

			int x = pstmt.executeUpdate();
			if (x > 0) {
				// System.out.println( "removing course - "+cname);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}
