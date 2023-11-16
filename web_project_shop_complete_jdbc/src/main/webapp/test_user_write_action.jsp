<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserService userService=new UserService();
	String userId=request.getParameter("userId");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	User user=new User(userId,password,name,email);
	int insertCount=userService.create(user);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=insertCount %>
</body>
</html>