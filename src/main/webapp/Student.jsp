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
   height: 1080px;
   width: 1080px;
   font-family: Arial, sans-serif;
   margin: 15px;
   padding: 0;
   background-color: #f8f9fa;
   text-align: center;
    /* Add flex display to center content vertically */
   justify-content: center; /* Center content horizontally */
   align-items: center; /* Center content vertically */
  

}

h2 {
	text-align:center;
   font-size: 2.6rem;
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
        .background-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 110%;
            background-image: url("student.jpg");
            background-size: cover;
            filter: blur(2px);
            z-index: -1;
        }

        .content {
            z-index: 1;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1.9rem;
            color: #007bff; /* Blue color */
            text-decoration: none;
            transition: color 0.3s;
            border: 2px solid #007bff;
            border-radius: 5px;
            margin: 10px;
        }

        .button:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>

<div class="background-overlay"></div>
 <div class="content">
    <h2>Enroll Yourself</h2>
    <a class="button" href="registerStudent.jsp">Register Student</a>
    <a class="button" href="loginStudent.jsp">Login Student</a></div>
</body>
</html>
