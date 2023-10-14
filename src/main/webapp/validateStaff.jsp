<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.modelbook.staffDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
staffDAO sd = new staffDAO();
String username = request.getParameter("username");
String password = request.getParameter("password");
boolean valid = sd.validStaff(username, password);
if(valid){
session.setAttribute("username", username);
RequestDispatcher rd = request.getRequestDispatcher("DASHBOARD.jsp");
rd.forward(request, response);
}
else
out.print("Invalid Credentials Entered");
%>
</body>
</html>