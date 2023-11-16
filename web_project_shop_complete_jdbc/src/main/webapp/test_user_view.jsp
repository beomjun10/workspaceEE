<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sUserId="guard2";
	UserService userService=new UserService();
	User user=userService.findUser(sUserId);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test_user_view.jsp</h1>
<%=user %>
</body>
</html>