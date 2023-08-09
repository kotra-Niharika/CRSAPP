package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CourseApp;

@WebServlet("/removeCourse")
public class removeCourseCont extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid = Integer.parseInt(req.getParameter("cid"));
		CourseApp c = new CourseApp();
		c.setCid(cid);
		boolean b = c.removec();
		if (b == true) {
			resp.sendRedirect("/CRSAPP/removeCourseSuccess.html");
		} else {
			resp.sendRedirect("/CRSAPP/manageControl.html");
		}

	}

}
