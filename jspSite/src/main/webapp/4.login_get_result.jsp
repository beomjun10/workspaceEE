<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	/*
	 * 1.파라메타바끼
	  	아이디:<input type="text" name="id">
		패에쓰:<input type="password" name="pass">
	 */
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id"); 
	String pass=request.getParameter("pass"); 
	 
	/*
	 * 2.업무실행(Service객체)
	 *   id |pass
	 *  ---------
	 *  xxxx|1111
	 *  yyyy|2222
	 */
%>
<h1>GET로그인결과</h1><hr/>
<%
	if( (id.equals("xxxx")&& pass.equals("1111")) ||
	    (id.equals("yyyy")&& pass.equals("2222"))
	   ){
%>
	<h3><%=id %> 님 로그인성공</h3>
	<a href='index.jsp'>메인</a>
<%}else{ %>
	<h3><%=id %> 님 로그인실패</h3>
	<a href='4.login_get_form.jsp'>다시로그인</a>
<%} %>










