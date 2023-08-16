package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.studentApp;

@WebServlet("/loginStudent")
public class loginStudent extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name = req.getParameter("user_name");
		String password = req.getParameter("password");
		studentApp s = new studentApp();
		s.setUser_name(user_name);
		s.setPassword(password);
		boolean b = s.loginstud();
		if (b == true) {
			resp.sendRedirect("/CRSAPP/loginStudentSuccess.jsp");
		} else {
			resp.sendRedirect("/CRSAPP/loginStudentFail.jsp");
		}

	}
}
