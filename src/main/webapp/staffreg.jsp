<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Staff Registration</title>
</head>
<body>
    <form action="staffRegistration.jsp">
        <h2>Enter Your Details for Registration</h2><br><br>
        Enter Employee ID: <input type="number" name="eid" placeholder="Enter Employee ID Here" required><br><br>
        Enter User Name: <input type="text" name="username" placeholder="Enter Username Here" required><br><br>
        Enter Password: <input type="text" name="password" placeholder="Enter Password Here" required><br><br>
        <input type="submit" value="Registration">
    </form>
</body>
</html>
