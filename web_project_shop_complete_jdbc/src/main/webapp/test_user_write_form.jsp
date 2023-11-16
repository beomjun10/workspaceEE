<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="test_user_write_action.jsp" >
	<input type="text" name="userId" placeholder="아이디" value="guard"><br>
	<input type="text" name="password" placeholder="패쓰워드" value="1111"><br>
	<input type="text" name="name" placeholder="이름" value="김가드"><br>
	<input type="text" name="email" placeholder="이메일" value="guard@gmail.com"><br>
	<input type="submit">
	
</form>
</body>
</html>