<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();

	out.println("<script> alert('로그아웃성공 !...메인페이지로 이동');location.href='Main.jsp' </script>  ");


%>