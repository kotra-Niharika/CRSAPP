<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            margin: 40px 0;
            color: #343a40; /* Dark gray color */
        }

        hr {
            margin: 20px auto;
            width: 80%;
            border: 1px solid #ddd; /* Light gray border */
        }

        a {
            font-size: 1.1rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <h1>COURSE DETAILS</h1>
    <br>
    <a href="menu.jsp">Back to Menu</a>
    <br>
    <%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/courses";
        String user = "root";
        String pass = "Vipul@8800";

        Connection con = DriverManager.getConnection(url, user, pass);
        String sql = "select * from course";
        Statement stmt = con.createStatement();
        ResultSet r = stmt.executeQuery(sql);

        while (r.next()) {
            out.println("<hr>");
            out.println("Course Id: " + r.getInt(1) + "<br><br>");
            out.println("Course: " + r.getString(2) + "<br><br>");
            out.println("Fee: " + r.getInt(3) + "<br><br>");
            out.println("Duration: " + r.getInt(4) + " months<br><br>");
        }
        out.println("<hr>");
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
