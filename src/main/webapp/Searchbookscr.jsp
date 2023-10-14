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
//get method will fetch data from table and store it in class 
//and using getter methods of class we print records


book b= s.get(book.class,Integer.parseInt(request.getParameter("ISBN")));
out.println(b.getBookname());
out.println(b.getAuthername());
out.println(b.getPrice());


%>

</body>
</html>