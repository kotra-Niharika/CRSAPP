<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Management Menu</title>
    <style>
        body {
            background-color: rgba(248, 249, 250, 0.9);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: row;
            height: 100vh;
            background-image: url("menu1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: right;
        }

        .left-container,
        .right-container {
            display: flex;
            flex-direction: column;
            align-items:left;
            justify-content:center;
            flex: 1;
            padding: 30px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1.5rem;
            color: white;
            background-color: #007bff; /* Blue color */
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
            cursor: pointer;
            margin: 25px;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, 2.2);
        }

        .button:hover {
            background-color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <div class="left-container">
        <a href="addCourse.html"><button class="button">Add Course</button></a>
        <a href="removeCourse.html"><button class="button">Remove Course</button></a>
        <a href="removeProfessor.html"><button class="button">Remove Professor</button></a>
        <a href="removeStudent.html"><button class="button">Remove Student</button></a>
    </div>
    <div class="right-container">
        <a href="viewStudent.jsp"><button class="button">View Student</button></a>
        <a href="viewProfessor.jsp"><button class="button">View Professor</button></a>
        <a href="viewCourse.jsp"><button class="button">View Course</button></a>
        <a href="Logout"><button class="button">Log Out</button></a>
    </div>
</body>
</html>
