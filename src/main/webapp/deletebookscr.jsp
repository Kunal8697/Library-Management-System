	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.model.book" %>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
book b=new book();
b.setISBN(Integer.parseInt(request.getParameter("ISBN")));
SessionFactory sf= new Configuration().configure().buildSessionFactory();
Session s= sf.openSession();
Transaction t= s.beginTransaction();
s.delete(b); //--> write insert query 
t.commit();
%>

</body>
</html>