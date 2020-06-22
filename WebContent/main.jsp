<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String username=null;

	if (session.getAttribute("username") != null) {
		username = (String) session.getAttribute("username");
	} else {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 메인 페이지</title>
</head>
<body>
<h3><%=username %>로 로그인하셨습니다.</h3>
</body>
</html>