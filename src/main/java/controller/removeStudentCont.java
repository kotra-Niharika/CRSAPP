package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.studentApp;

@WebServlet("/removeStudent")
public class removeStudentCont extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int sid = Integer.parseInt(req.getParameter("sid"));
		studentApp s = new studentApp();
		s.setSid(sid);
		boolean b = s.removestd();
		if (b == true) {
			resp.sendRedirect("/CRSAPP/removeStudentSuccess.html");
		} else {
			resp.sendRedirect("/CRSAPP/manageControl.html");
		}

	}

}
