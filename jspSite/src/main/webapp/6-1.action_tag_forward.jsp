<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("6-1.action_forward.jsp");
	/*
	forwading
	  - 6-1.action_tag_forwarded.jsp 로 HTTP요청을보냄
	*/
	request.setAttribute("id","guard");
	request.setAttribute("name","김경호");
	request.setAttribute("age",36);
	request.setAttribute("student",new Student());
	
%>
<jsp:forward page="6-1.action_tag_forwarded.jsp"/>
