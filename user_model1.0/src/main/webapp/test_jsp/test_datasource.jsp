<%@page import="com.itwill.user.UserDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.util.Properties"%>
<%@page import="org.apache.tomcat.dbcp.dbcp2.BasicDataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	BasicDataSource basicDataSource = new BasicDataSource();
	Properties properties = new Properties();
	properties.load(UserDao.class.getResourceAsStream("/jdbc.properties"));
	basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
	basicDataSource.setUrl(properties.getProperty("url"));
	basicDataSource.setUsername(properties.getProperty("username"));
	basicDataSource.setPassword(properties.getProperty("password"));
	/********************<< javax.sql.DataSource >>**************************/
	DataSource dataSource = (DataSource) basicDataSource;
	Connection con = dataSource.getConnection();
	System.out.println("1.DataSource : " + dataSource);
	System.out.println("2.Connection : " + con);
	basicDataSource.close();
	%>
	<ol>
		<li>DataSource :<%=dataSource%></li>
		<li>Connection :<%=con%></li>
	</ol>
</body>
</html>