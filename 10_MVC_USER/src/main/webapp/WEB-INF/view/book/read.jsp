<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- link -->
	<%@include file="/resources/static/jsp/link.jsp" %>
	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="wrapper">
		<header>
			<!-- topHeader -->
			<%@include file="/resources/static/jsp/topHeader.jsp" %>
			<!-- nav -->
			<%@include file="/resources/static/jsp/nav.jsp" %>
		</header>
		<main  class="layout" style="">
		
		
				<h1>도서 조회 페이지</h1>
				<form style="width:400px" action="${pageContext.request.contextPath}/book/add" method="post">
					<div class="mb-3">
						<label for="">도서코드 : </label>
						<input name="bookCode" class="form-control" value="${bookDto.bookCode}" readonly/>
					</div>
					<div class="mb-3">
						<label for="">도서명 : </label>
						<input name="bookName" class="form-control" value="${bookDto.bookName}" readonly/>
					</div>	
					<div class="mb-3">
						<label for="">출판사 : </label>
						<input name="publisher" class="form-control" value="${bookDto.publisher}" readonly/>
					</div>		
					<div class="mb-3">
						<label for="">ISBN : </label>
						<input name="isbn" class="form-control" value="${bookDto.isbn}" readonly/>
					</div>
					<div>	
						<a href="${pageContext.request.contextPath}/book/update?bookCode=${bookDto.bookCode}" class="btn btn-success me-2">도서수정</a>
						<a href="${pageContext.request.contextPath}/book/delete?bookCode=${bookDto.bookCode}" class="btn btn-success me-2">도서삭제</a>
						<button class="btn btn-secondary m-2">이전으로</button>
					</div>		
				</form>
				
				<hr style="width:50%;">
				<div class="mt-3">
					<div class="mb-2">
						<h3>댓글 수  <span>00</span> </h3>
					</div>
					<hr style="width:50%;" >
					<div  class="mb-2" style="display:flex;justify-content :left;width:50%;gap:10px;">
						<textarea class="form-control" style="height:50px;" name="" id="" cols="30" rows="10" ></textarea>
						<a href="" class="btn btn-primary">입력</a>
					</div>
					<div class="reply-box mb-2 reply-items" style="width:50%;min-height:100px;border:1px solid;">
						<div class="item" style="display:flex;justify-concent:space-between;align-items:center;border:1px solid;">
							<div class="left" style="width:100px;height:100px;border : 1px solid">
								<img src="" alt="profileImage"  />
							</div>
							<div class="right" style="width:calc(100% - 100px);height:100px;border : 1px solid;">
							</div>
							
						</div>
						
					
					</div>
					
				</div>
		</main>
		
		
		<!-- footer -->
		<%@include file="/resources/static/jsp/footer.jsp" %>
	</div>

	
</body>
</html>