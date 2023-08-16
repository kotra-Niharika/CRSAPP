<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Management Menu</title>
    <style>
        body {
          background-image: url("menu1.jpg");
   background-size: 100%; /* Adjust the size as needed */
   background-repeat: no-repeat;
   background-position: right;
   height: 300px;
   width: 300px;
   font-family: Arial, sans-serif;
   margin: 0;
   padding: 0;
   background-color: rgba(248, 249, 250, 0.9); /* Adjust the alpha value for transparency */
   text-align: center;
        
           /* font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: ;
            text-align: center;*/
        }

        .menu {
            display: inline-block;
          
            margin-top: 50px;
            margin-left:60px;
            padding: 20px;
            background-color: rgba(248, 249, 250, 0.9);
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 1.2);
            text-align: left;
        }

        .menu-item {
            font-size: 1.5rem;
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
