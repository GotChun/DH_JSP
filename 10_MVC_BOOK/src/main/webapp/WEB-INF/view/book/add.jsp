<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/resources/static/jsp/link.jsp" %>

</head>
<body>

<div class="wrapper">
<header>
<!-- top-header -->
<%@include file="/resources/static/jsp/top-header.jsp" %>
<!-- nav -->
<%@include file="/resources/static/jsp/nav.jsp" %>
</header>

<main class="layout" style="">
	<h1>도서등록페이지</h1>
		<form action="${pageContext.request.contextPath }/book/add" method="post">
			<div class="m-3">
				<label for="">도서코드</label>
				<input name="bookCode" class="form-control"/>
			</div>
			<div class="m-3">
				<label for="">도서명</label>
				<input name="bookName" class="form-control"/>
			</div>
			<div class="m-3">
				<label for="">출판사</label>
				 <input name="publisher"  class="form-control"/>
			</div>
			<div class="m-3">
				<label for="">ISBN</label>
				 <input name="isbn"  class="form-control"/>
			</div>
			<div>
				<button>도서 등록</button>
			</div>
		</form>
</main>

<!-- footer -->
<%@include file="/resources/static/jsp/footer.jsp" %>
</div>


</body>
</html>