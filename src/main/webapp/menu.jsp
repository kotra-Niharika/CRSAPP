<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Management Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        .menu {
            display: inline-block;
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .menu-item {
            font-size: 1.1rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
            display: block;
            margin-bottom: 10px;
        }

        .menu-item:hover {
            color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <div class="menu">
        <a class="menu-item" href="addCourse.html">Add Course</a>
        <a class="menu-item" href="removeCourse.html">Remove Course</a>
        <a class="menu-item" href="removeProfessor.html">Remove Professor</a>
        <a class="menu-item" href="removeStudent.html">Remove Student</a>
        <a class="menu-item" href="viewStudent.jsp">View Student</a>
        <a class="menu-item" href="viewProfessor.jsp">View Professor</a>
        <a class="menu-item" href="viewCourse.jsp">View Course</a>
  
        <a class="menu-item" href="Logout">Log Out</a>
    </div>
</body>
</html>
