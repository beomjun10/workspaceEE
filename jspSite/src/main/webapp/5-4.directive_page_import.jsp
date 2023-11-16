
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.student.Student"%>
<%@page import="com.itwill.student.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>

<%
	com.itwill.student.StudentService studentService1=
			new com.itwill.student.StudentService();
	StudentService studentService2=
			new StudentService();
	
	Student student1=new Student();
	
	ArrayList<Student> studentList=new ArrayList<Student>();
	studentList.add(student1);
	
	HashMap<String,Student> map=new HashMap<String,Student>();
	map.put("student1", student1);
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>page 지시어 [import]</h1>
<h2>형태:&lt;%@page import="com.itwill.Student"&gt;</h2>
<hr/>
<ul>
	<li><%=studentService1.toString()%></li>
	<li><%=studentService2.toString()%></li>
	<li><%=student1.toString()%></li>
	<li><%=studentList.toString()%></li>
	<li><%=map.toString()%></li>
</ul>
</body>
</html>
