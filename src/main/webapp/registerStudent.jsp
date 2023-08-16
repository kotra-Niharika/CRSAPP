<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Student</title>
    <style>
        body {
           background-image: url("StudntRgistor.png");
   background-size: 100%; /* Adjust the size as needed */
   background-repeat: no-repeat;
   background-position: center;
   height:1000px;
   width:1200px;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        form {
            max-width: 400px;
            
            margin: 20px auto;
            padding: 20px;
            background-color:  #f8f9fa;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 1.5);
            text-align: left;
        }

        label {
            font-size: 1.1rem;
            margin-bottom: 5px;
            color: #333; /* Dark gray color */
        }

        input {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007bff; /* Blue color */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <form action="regStudent" method="post">
        <h2 align="center">Register Student</h2>
        <label for="user_name">Enter User Name:</label>
        <input type="text" id="user_name" name="user_name">

        <label for="sid">Enter Student Id:</label>
        <input type="text" id="sid" name="sid">

        <label for="cid">Enter Course Id:</label>
        <input type="text" id="cid" name="cid">

        <label for="sname">Student Name:</label>
        <input type="text" id="sname" name="sname">

        <label for="email">Email:</label>
        <input type="text" id="email" name="email">

        <label for="password">Password:</label>
        <input type="password" id="password" name="password">

        <input type="submit" value="Register">
    </form>
</body>
</html>
