 <%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report Card</title>
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
            margin: 40px 0;
            color: #333; /* Dark gray color */
        }

        p {
            font-size: 1.1rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
        }

        p a:hover {
            color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <h1>Report Card</h1>
    <p>
        <a href="menu.jsp">Back To Menu</a>
    </p>
    <%
    int cid = 0;
    String pname = "";
    int test1_score = 0;
    int test2_score = 0;
    int practical_score = 0;
    int final_score = 0;
    String grade = "";
    String cname = "";
    String sname = "";
    int sid = 0;
    try {
        // Your database connection and data retrieval code

        out.println("<b>Student Id</b> : " + sid + "<br><br>");
        out.println("<b>Student Name</b> : " + sname + "<br><br>");
        out.println("<b>Professor Assigned</b> : " + pname + "<br><br>");
        out.println("<b>Course Assigned</b> : " + cname + "<br><br>");
        out.println("<b>test1_score</b> : " + test1_score + "<br><br>");
        out.println("<b>test2_score</b> : " + test2_score + "<br><br>");
        out.println("<b>practical_score</b> : " + practical_score + "<br><br>");
        out.println("<b>final_score</b> : " + final_score + "<br><br>");
        out.println("<b>Grade</b> : " + grade + "<br><br>");

    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
