<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("4.login_post_form.jsp");
		return;
	}	

	/*
	 * 1.파라메타바끼
	  	아이디:<input type="text" name="id">
		패에쓰:<input type="password" name="pass">
	 */
	request.setCharacterEncoding("UTF-8");
	String id= request.getParameter("id");
	String pass= request.getParameter("pass");
	/*
	 * 2.업무실행(DB)
	 *   id |pass
	 *  ---------
	 *  xxxx|1111
	 *  yyyy|2222
	 */
	/*
	 * 3.클라이언트로 결과전송
	 */
%>
<h1>POST로그인결과</h1><hr/>
<% 
if(!((id.equals("xxxx")&& pass.equals("1111")) 
		|| 
	 (id.equals("yyyy")&&pass.equals("2222")))){
%>
	<h3><%=id%> 님 로그인실패</h3>
	<a href='4.login_post_form.jsp'>다시로그인</a>   
<% 
	return;
}
%>
<h3><%=id %> 님 로그인성공</h3>
<a href='index.jsp'>메인</a>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
