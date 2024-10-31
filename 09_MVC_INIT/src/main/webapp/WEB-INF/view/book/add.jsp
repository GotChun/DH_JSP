<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<h1>도서등록페이지</h1>
		<form action="${pageContext.request.contextPath }/book/add" method="post">
			<div>
				<label for="">도서코드</label>
				<input type="bookCode" />
			</div>
			<div>
				<label for="">도서명</label>
				<input type="bookName" />
			</div>
			<div>
				<label for="">출판사</label>
				 <input type="publisher" />
			</div>
			<div>
				<label for="">ISBN</label>
				 <input type="isbn" />
			</div>
			<div>
				<button>도서 등록</button>
			</div>
		</form>
	</div>
</body>
</html>