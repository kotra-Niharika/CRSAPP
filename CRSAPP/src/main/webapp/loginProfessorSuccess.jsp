<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        h1, h2 {
            font-size: 2rem;
            margin-top: 20px;
            color: #333;
        }

        form {
            display: inline-block;
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        label {
            font-size: 1.1rem;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            color: #fff;
            font-size: 1.1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        b {
            font-weight: bold;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <h1>Login Successful</h1><br><br>
    <form action="marksCon" method="post">
        <h2>Grade Student</h2><br>
        <label>Enter Student Id:</label><br>
        <input type="text" name="sid"><br><br>
        <label>Enter Test1 Score:</label><br>
        <input type="text" name="test1_score"><br><br>
        <label>Enter Test2 Score:</label><br>
        <input type="text" name="test2_score"><br><br>
        <label>Enter Practical Score:</label><br>
        <input type="text" name="practical_score"><br><br>
        <input type="submit" value="Grade">
    </form>

    <%
    int pid = 0;
    String cname = "";
    int sid = 0;
    int cid = 0;
    String sname = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/courses";
        String user = "root";
        String pass = "Vipul@8800";

        Connection con = DriverManager.getConnection(url, user, pass);
        session = request.getSession();
        pid = (int) session.getAttribute("pid");

        PreparedStatement prep2 = con.prepareStatement("Select * from professor where pid=?");
        prep2.setInt(1, pid);
        ResultSet r2 = prep2.executeQuery();
        if (r2.next()) {
            cid = r2.getInt(2);
        }

        PreparedStatement prep3 = con.prepareStatement("Select * from course where cid=?");
        prep3.setInt(1, cid);
        ResultSet r3 = prep3.executeQuery();
        if (r3.next()) {
            cname = r3.getString(2);
        }
	
        out.println("<br><br><b>Course Id</b> : " + cid + "<br><br>");
        out.println("<b>Course Assigned</b> : " + cname + "<br><br>");

        PreparedStatement prep1 = con.prepareStatement("Select * from student where cid=?");
        prep1.setInt(1, cid);
        ResultSet r1 = prep1.executeQuery();
        while (r1.next()) {
            sid = r1.getInt(1);
            sname = r1.getString(3);
    %>
        <hr>
        <b>Student Id</b> : <%= sid %><br><br>
        <b>Student Name</b> : <%= sname %><br><br>
    <%
        }
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
