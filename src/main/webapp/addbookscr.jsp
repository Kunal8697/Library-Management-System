<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.book" %>
        <%@page import ="org.hibernate.*,org.hibernate.cfg.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
book b=new book();
b.setISBN(Integer.parseInt(request.getParameter("ISBN")));
b.setBookname(request.getParameter("bookname"));
b.setAuthername(request.getParameter("authername"));
b.setPrice(Integer.parseInt(request.getParameter("price")));

SessionFactory sf= new Configuration().configure().buildSessionFactory();
Session s= sf.openSession();
Transaction t= s.beginTransaction();
s.save(b); //--> write insert query 
t.commit();
%>
</body>
</html>