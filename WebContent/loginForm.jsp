<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 로그인 페이지</title>
</head>
<body>
<form name="loginform" action="loginProcess.jsp" method="post">
	<label for="username">유저네임 : </label>
	<input type="text" name="username" id="username" />
	
	<label for="password">비밀번호 : </label>
	<input type="password" name="password" id="password" />
	
	<button type="submit">로그인</button>
	<a href="joinForm.jsp">회원 가입</a>
</form>
</body>
</html>