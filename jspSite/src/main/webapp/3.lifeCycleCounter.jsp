<%@page contentType="text/html; charset=UTF-8" %>
<%!
private	int count=0;

public void jspInit(){
	System.out.println("1.jspInit() 메쏘드호출[객체생성시 생성자 호출후 단한번호출]");
}
public void jspDestroy(){
	System.out.println("3.jspDestroy() 메쏘드호출[객체가 메모리에서 해지될때호출]");
}
%>
<%
System.out.println("2._jspService() 메쏘드호출[요청시마다호출]");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
			<body bgcolor=#40e0d0 style=font-size:9pt;line-height:140%;> 
			<center>			
			 <!-- HTML주석  -->
			현재까지의 페이지뷰수는	<font color=#0000FF> <%= ++count %> </font> 번입니다. 
			</center> 
			<jsp:include page="6-2.action_tag_included_footer.jsp"/>
			</body> 
</html>