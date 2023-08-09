<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.awt.Label"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Graded Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        h1 {
            font-size: 2rem;
            margin-top: 50px;
            color: #333;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.1rem;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }

        span {
            font-size: 1.1rem;
        }

        b {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Student Graded Successfully</h1>
    <br>
    <p><a href="menu.jsp">Back To Menu</a></p>
    <br>

    <%
    int cid = 0;
    String pname = "";
    String cname = "";
    String sname = ""; 
    int sid = 0;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/courses";
        String user = "root";
        String pass = "Welcome@123";

        Connection con = DriverManager.getConnection(url, user, pass);

        session = request.getSession();
        sid = (int) session.getAttribute("sid");

        PreparedStatement prep = con.prepareStatement("Select * from student where sid=?");
        prep.setInt(1, sid);
        ResultSet r1 = prep.executeQuery();
        if (r1.next()) {
            cid = r1.getInt(2);
            sname = r1.getString(3);
        }

        PreparedStatement prep1 = con.prepareStatement("Select * from professor where c_id=?");
        prep1.setInt(1, cid);
        ResultSet r2 = prep1.executeQuery();
        if (r2.next()) {
            pname = r2.getString(3);
        }

        PreparedStatement prep2 = con.prepareStatement("Select * from course where cid=?");
        prep2.setInt(1, cid);
        ResultSet r3 = prep2.executeQuery();
        if (r3.next()) {
            cname = r3.getString(2);
        }
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    %>

    <span>Professor </span>
    <b><%= pname %></b>
    <span> graded </span>
    <b><%= sname %></b>
    <span>, who was enrolled in a </span>
    <b><%= cname %></b>
    <span> course, with an excellent score.</span>

</body>
</html>
