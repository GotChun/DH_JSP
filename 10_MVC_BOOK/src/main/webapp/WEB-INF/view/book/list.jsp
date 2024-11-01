<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/resources/static/jsp/link.jsp"%>

</head>
<body>
	<%
	PageDto pageDto = (PageDto) request.getAttribute("pageDto");
	%>
	<div class="wrapper">
		<header>
			<!-- top-header -->
			<%@include file="/resources/static/jsp/top-header.jsp"%>
			<!-- nav -->
			<%@include file="/resources/static/jsp/nav.jsp"%>
		</header>




		<main class="layout">
		
				<section style = "display:flex;justify-content:right;align-items:center;">
				
			<form class="d-flex" action="${pageContext.request.contextPath }/book/list" method="get">
				<select name="type" id="">
					<option value="all">전체</option>
					<option value="bookCode">도서코드</option>
					<option value="bookName">도서명</option>
					<option value="publisher">출판사</option>
				</select> <input name="keyword" class="form-control me-2" type="search"
					placeholder="Search" aria-label="Search"> <input
					type="hidden" name="pageno" value="<%=pageDto.getCriteria().getPageno()%>" />
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</section>
		
			<section class="show-book">
				<h1>도서 조회 페이지</h1>
				<%@page import="Domain.Common.Dto.*"%>


				<div>
					페이지 :
					<%=pageDto.getCriteria().getPageno()%>
					/
					<%=pageDto.getTotalpage()%>
					(현재페이지 / 전체페이지)
				</div>

				<table class="table w-100" style="margin: 20px 0;">
					<thead>
						<tr class="bg-dark text-light">
							<th>BookCode</th>
							<th>BookName</th>
							<th>Publisher</th>
							<th>ISBN</th>
						</tr>
					</thead>
					<tbody>
						<%@ page import="java.util.*,Domain.Common.Dto.*"%>
						<%
						List<BookDto> list = (List<BookDto>) request.getAttribute("list");
						for (BookDto dto : list) {
						%>

						<tr>
							<td><%=dto.getBookCode()%></td>
						<td><%=dto.getBookName()%></td> 
							<td><%=dto.getPublisher()%></td>
							<td><%=dto.getIsbn()%></td>
						</tr>

						<%
						}
						%>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3">
								<!-- 페이지네이션 -->
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<!-- 이전버튼  -->
										<%
										String type = pageDto.getCriteria().getType();
										String keyword = pageDto.getCriteria().getKeyword();
										
										if (pageDto.isPrev()) {
										%>


										<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/book/list"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>

										<%
										}
										%>

										<%
										int startPage = pageDto.getStartPage();
										int endPage = pageDto.getEndPage();
										
										
										for (int i = startPage; i <= endPage; i++) {
										%>
										<li class="page-item">
										<%
										if(type==null){
											
										
										%>
										<a class="page-link"
											href="${pageContext.request.contextPath}/book/list?pageno=<%=i%>&type=<%=type %>&keyword=<%=keyword%>"><%=i%></a></li>
											<%
										}else{
											%>
													<a class="page-link"
											href="${pageContext.request.contextPath}/book/list?pageno=<%=i%>&type=<%=type %>&keyword=<%=keyword%>"><%=i%></a></li>
											<%
										}
										%>
											%>
											
										<%
										}
										%>

										<!-- 다음 버튼 -->

										<%
										if (pageDto.isNext()) {
										%>

										<li class="page-item"><a class="page-link"
											href="${pageContext.request.contextPath}/book/list?pageno=<%=pageDto.getEndPage()+1 %>"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
										
										<%
										}else{
											
										}
										%>

									</ul>
								</nav>
							</td>
							<td style="text-align: right">
								<!-- 글쓰기 --> <a class="btn btn-success m-2" href="">글쓰기</a> <a
								class="btn btn-secondary m-2" href="">처음으로</a>
							</td>
						</tr>
					</tfoot>
				</table>
			</section>

		</main>

		<!-- footer -->
		<%@include file="/resources/static/jsp/footer.jsp"%>
	</div>


</body>
</html>