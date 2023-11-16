<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String p_noStr = request.getParameter("p_no");
	if(p_noStr==null)p_noStr="1";
	
	ProductService productService=new ProductService();
	Product product= productService.productDetail(Integer.parseInt(p_noStr));
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=product %>
</body>
</html>