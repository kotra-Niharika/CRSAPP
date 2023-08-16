<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <style>
body {
   background-image: url("professor.jpg");
   background-size: 100%; /* Adjust the size as needed */
   background-repeat: no-repeat;
   background-position: right;
   height: 1000px;
   width: 1000px;
   font-family: Arial, sans-serif;
   margin: 0;
   padding: 0;
   background-color: rgba(248, 249, 250, 0.9); /* Adjust the alpha value for transparency */
   text-align: center;

}
     

        h2 {
            font-size: 1.5rem;
            text-align: center;
            margin-top: 20px;
            color: #333; /* Dark gray color */
        }

        a {
            font-size: 1.1rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <h2>Enroll Yourself</h2>
    <a href="registerProfessor.html">Register Professor</a>
    <h2>Login Yourself</h2>
    <a href="loginProfessor.html">Login Professor</a>
</body>
</html>
