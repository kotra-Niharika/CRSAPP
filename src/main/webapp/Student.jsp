<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        body {
    background-image: url("student.jpg");
   background-size: 100%;
   background-repeat: no-repeat;
   background-position: centre; /* Center the background image */
   height: 380px;
   width: 380px;
   font-family: Arial, sans-serif;
   margin: 0;
   padding: 0;
   background-color: #f8f9fa;
   text-align: center;
    /* Add flex display to center content vertically */
   justify-content: center; /* Center content horizontally */
   align-items: center; /* Center content vertically */
}

h2 {
   font-size: 2.2rem;
     font-weight: bold;
   margin: 20px 0;
   color: #333; /* Dark gray color */
}

a {
   font-size: 1.9rem;

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
    <h2>Enroll Yourself</h2>
    <a href="registerStudent.jsp">Register Student</a>
    <br><br>
    <a href="loginStudent.jsp">Login Student</a>
    <br><br>
</body>
</html>
