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
            background-color: rgba(248, 249, 250, 0.1); /* Adjust the alpha value for transparency */
            text-align: center;
            
        }
                .background-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 110%;
            background-image: url("professor.jpg");
            background-size: cover;
            filter: blur(1px);
            z-index: -1;
         
        }

        .content {
            z-index: 1;
        }
        
        h2 {
            font-size: 1.5rem;
            text-align: center;
            margin-top: 20px;
            color: #333; /* Dark gray color */
        }

        .button {
            display: block;
            width: 250px;
            height: 30px;
            background-color: rgba(0, 139, 182, 0.9);
            background-position: center;
            margin: 0 auto;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            line-height: 25px;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, 2.2);
        }

        a {
            font-size: 1.5rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            color: #0056b3; 
        }
    </style>
</head>
<body>
	    <div class="background-overlay"></div>
    <div class="content">
    <h2>Enroll Yourself</h2>
    <a class="button" href="registerProfessor.html">Register Professor</a>
    <h2>Login Yourself</h2>
    <a class="button" href="loginProfessor.html">Login Professor</a></div>
</body>
</html>
