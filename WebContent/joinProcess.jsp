<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	int age=Integer.parseInt(request.getParameter("age"));
	String email=request.getParameter("email");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		pstmt=conn.prepareStatement("INSERT INTO member VALUES (?, ?, ?, ?, ?)");
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, email);
		int result=pstmt.executeUpdate();
		
		if(result != 0) {
			out.println("<script>");
			out.println("location.href='loginForm.jsp'");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("location.href='joinForm.jsp'");
			out.println("</script>");
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
%>