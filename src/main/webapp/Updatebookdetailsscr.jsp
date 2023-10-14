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

SessionFactory sf= new Configuration().configure().buildSessionFactory();
Session s= sf.openSession();
Transaction t= s.beginTransaction();
//book b = new book();
book b= s.get(book.class,Integer.parseInt(request.getParameter("ISBN")));
b.setISBN(Integer.parseInt(request.getParameter("ISBN")));
b.setBookname(request.getParameter("bookname"));
b.setAuthername(request.getParameter("authername"));
b.setPrice(Integer.parseInt(request.getParameter("price")));
s.update(b);
t.commit();


%>
</body>
</html>