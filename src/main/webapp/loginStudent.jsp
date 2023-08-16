<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Student</title>
    <style>
        body {

                   background-image: url("login.png");
   background-size: 100%; /* Adjust the size as needed */
   background-repeat: no-repeat;
   background-position: right;
   height:800px;
   width:1200px;
   
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
            opacity: 1.0;
             backdrop-filter: blur(2px);

        
        }

        h2 {
            font-size: 2rem;
            margin-top: 30px;
            color: #0056b3;
        }

        form {

            display: inline-block;
            margin-top: 10px;
            padding: 20px;
           background-color:  #f8f9fa;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 2.0);
            text-align: left;
        }

        label {

            font-size: 1.1rem;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
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
    </style>
</head>
<body>
    <h2>Please Login</h2>
    <form action="loginStudent" method="post">
        <label>Enter User Name:</label><br>
        <input type="text" name="user_name"><br><br>
        <label>Enter Password:</label><br>
        <input type="password" name="password"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
