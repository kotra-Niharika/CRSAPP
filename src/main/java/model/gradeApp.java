package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class gradeApp {

	int sid;
	int test1_score;
	int test2_score;
	int practical_score;
	int final_score;
	String grade;
	private PreparedStatement pstmt;
	private Connection con;

	public gradeApp() {
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

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getTest1_score() {
		return test1_score;
	}

	public void setTest1_score(int test1_score) {
		this.test1_score = test1_score;
	}

	public int getTest2_score() {
		return test2_score;
	}

	public void setTest2_score(int test2_score) {
		this.test2_score = test2_score;
	}

	public int getFinal_score() {
		return final_score;
	}

	public void setFinal_score(int final_score) {
		this.final_score = final_score;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPractical_score() {
		return practical_score;
	}

	public void setPractical_score(int practical_score) {
		this.practical_score = practical_score;
	}

	public boolean grade() {
		this.setFinal_score((practical_score + test1_score + test2_score) / 3);
		if (final_score >= 90) {
			this.setGrade("O");
		} else if (final_score < 90 && final_score >= 70) {
			this.setGrade("E");
		} else if (final_score < 70 && final_score >= 50) {
			this.setGrade("A");
		} else {
			this.setGrade("F");
		}
		try {
			String sql = "insert into grading values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getSid());

			pstmt.setInt(2, getTest1_score());
			pstmt.setInt(3, getTest2_score());
			pstmt.setInt(4, getPractical_score());
			pstmt.setInt(5, getFinal_score());
			pstmt.setString(6, getGrade());
			int x = pstmt.executeUpdate();
			if (x > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

}
