<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.modelbook.staffDAO" %>
<%@ page import="org.hibernate.cfg.*,org.hibernate.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Staff Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .message {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Staff Registration</h1>
   <div class="message">
        <% staffDAO sd = new staffDAO();
            int id = Integer.parseInt(request.getParameter("eid"));
            String name = request.getParameter("username");
            String pass = request.getParameter("password");
            sd.staffRegister(id, name, pass);
            out.print("User Registered Successfully with Username: -" +name+" and ID: -"+id);
        %>
    </div>
    <br />
    <div class="message">
        <a href="StaffLogin.jsp">Log In Here</a>
    </div>
</body>
</html>
