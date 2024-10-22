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
	System.out.println("pageContext" + pageContext);
	System.out.println("pageContext's get request" + pageContext.getRequest());
	System.out.println("pageContext's get request" + pageContext.getResponse());  //하위스코프에서는 상위스코프의 내장객체를 받아올수 있다.
	System.out.println("pageContext's get request" + pageContext.getSession());  
	System.out.println("pageContext's get request" + pageContext.getServletContext());  
	System.out.println("project path" + pageContext.getServletContext().getContextPath());  
	System.out.println("project path" + pageContext.getServletContext().getContextPath());  
	
%>
	<!-- EL 표기법 -->
	PROJECT PATH = ${pageContext.request.contextPath}

</body>
</html>