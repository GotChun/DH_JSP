<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 변수 선언 -->
<c:set var="num" value="123" />
<!-- 변수 출력 -->
<c:out value="${num }"/>

<hr>

<!-- 배열 선언 -->
<c:set var="arr" value="${ [10,20,30,40,50] }"/><br>   //c가 core 의 약자네.

<c:out value="${arr[1] }"/><br><br>

<!-- IF -->
<c:set var = "flag" value="true"/>
<c:if test="${empty flag }">
	<c:out value="flag empty..." />
</c:if>
<c:if test="${not empty flag }">
	<c:out value="flag : ${flag}"></c:out>
</c:if>  //조건문

<hr>

<!-- CHOOSE WHEN -->
 	<c:set var="str" value="d"/>
	<c:choose>
		<c:when test="${str eq 'a' }">
			<c:out value="[CHOOSE] A"/>
		</c:when>
		<c:when test="${str eq 'b' }">
			<c:out value="[CHOOSE] B"/>
		</c:when>
		<c:when test="${str eq 'c' }">
			<c:out value="[CHOOSE] C "/>
		</c:when>
		<c:otherwise>
			<c:out value="[CHOOSE] ETC"/>
		</c:otherwise>
	</c:choose> 

	<hr>
	<!-- foreach -->
	<c:set var="end" value="15"/>
	<c:forEach var="i" begin="1" end="${end }" step="2"> <!--  //1부터 시작 end 15까지 , 2씩 증가 -->
		<c:out value="${i }"/>*
	</c:forEach>
	
	<!-- fn:length -->
<hr>
<%@ page import = "java.util.*" %>
<%
	List<String> listTest = new ArrayList();
	listTest.add("test1");
	listTest.add("test2");
	listTest.add("test3");
	listTest.add("test4");
	request.setAttribute("listTest", listTest);
%>

<c:set var="str1" value="TEST1234"/>
FN_legnth : ${fn:length(str1) }<br>
FN_legnth : ${fn:length(listTest) }



</body>
</html>