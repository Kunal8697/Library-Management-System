<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="com.modelbook.bookdao, com.model.book,
java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
bookdao bd = new bookdao();
List<book> books = bd.display();
out.println("<table border='2'>");
out.println("<tr><td>"+"ISBN"+"</td><td>"+"Book Name"+"</td><td>"+"Auther Name"+"</td><td>"+"Price"+"</td></tr>");
for(book b:books){

out.println("<tr><td>"+b.getISBN()+"</td><td>"+b.getBookname()+"</td><td>"+b.getAuthername()+"</td><td>"+b.getPrice()+"</td></tr>");
}
out.print("</table>");
%>
</body>
</html>