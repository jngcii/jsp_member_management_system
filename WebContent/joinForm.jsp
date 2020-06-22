<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 회원 가입 페이지</title>
</head>
<body>
<form name="loginform" action="loginProcess.jsp" method="post">
	<label for="username">유저네임 : </label>
	<input type="text" name="username" id="username" />
	
	<label for="password">비밀번호 : </label>
	<input type="password" name="password" id="password" />
	
	<label for="name">이름 : </label>
	<input type="text" name="name" id="name" />
	
	<label for="age">나이 : </label>
	<input type="text" name="age" id="age" />
	
	<label for="email">이메일 주소 : </label>
	<input type="text" name="email" id="email" />
	
	<button type="submit">회원 가입</button>
	<a href="loginForm.jsp">로그인</a>
</form>
</body>
</html>