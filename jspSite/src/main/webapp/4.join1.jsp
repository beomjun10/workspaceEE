<%@ page contentType="text/html; charset=UTF-8" %>
<%
	/*
	GET 요청시 4.form1.jsp 로 redirection
	*/
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("4.form1.jsp");
		return;
	}
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String gender = request.getParameter("gender");
	String message=request.getParameter("message");
	String[] favorites = request.getParameterValues("favorite");
	if(favorites==null){
		favorites=new String[1];
		favorites[0]="관심영역없음";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>가입정보</h1><hr>
	<ul>
		<li>아이디:<%=id %></li>
		<li>패쓰워드:<%=password %></li>
		<li>이메일:<%=email1+"@"+email2%></li>
		<li>성별:<%=gender %></li>
		<li>관심영역
			<ol>
			<%for(String favorite:favorites){%>
					<li><%=favorite %></li>
			<%}%>	
			</ol>
		</li>
		<li>가입인사:<%=message%></li>
	</ul>
</body>
</html>







