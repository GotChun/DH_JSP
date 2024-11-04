<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- link -->
<%@include file="/resources/static/jsp/link.jsp"%>

<!-- myinfo.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/user/myinfo.css" />

<!-- myinfo.js -->
<script
	src="${pageContext.request.contextPath}/resources/static/js/user/myinfo.js"
	defer></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="wrapper">
		<header>
			<!-- topHeader -->
			<%@include file="/resources/static/jsp/top-header.jsp"%>
			<!-- nav -->
			<%@include file="/resources/static/jsp/nav.jsp"%>
		</header>
		<main class="layout">
			<form action="" style="width: 400px; margin: 50px auto;">
				<div class="m-3" style = "position:relative;">

					<div class="profileBox"></div>
					<div class="profileUploadBtn" style="position:absolute;left:68%;top:60%;cursor:pointer;">
					<span class="material-symbols-outlined"> open_in_new </span>
					</div> 
					<input type="file" class="form-control" />
				</div>
				<div class="m-3">
					<label for="">USERID : </label> <input type="text"
						class="form-control" />
				</div>
				<div class="m-3">
					<label for="">PASSWORD</label> <input type="text"
						class="form-control" />
				</div>
				<div class="m-3">
					<label for="">ROLE : </label> <input type="text"
						class="form-control" />
				</div>

				<div>
					<a href="" class="btn btn-success me-2">수정 요청</a> <a href=""
						class="btn btn-secondary">이전으로</a>
				</div>


			</form>
		</main>


		<!-- footer -->
		<%@include file="/resources/static/jsp/footer.jsp"%>
	</div>


</body>
</html>