<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="dto.*,utils.*,java.util.*"%>

<%
MemberDbUtils.conn();

List<MemberDto> list = MemberDbUtils.select();

MemberDbUtils.rs.close();

MemberDbUtils.conn.close();
MemberDbUtils.pstmt.close();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: silver;
}

section {
	height: calc(100vh - 250px);
}

section td, section th {
	border: 1px solid; align-items:center;
}
</style>
</head>

<body>

	<div class="wrapper">
		<%@ include file="layout/header.jsp"%>
		<section>
			<table
				style="width: 90vw; height: 500px; margin: 50px auto; border: 1px solid;">
				<caption>
					<h2>회원목록조회/수정</h2>
				</caption>
				<thead>
					<tr>
						<th>회원번호</th>
						<th>회원성명</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>가입일자</th>
						<th>고객등급</th>
						<th>거주지역</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><a href=""><%=list.get(i).getCustno()%></a></td>
						<td><%=list.get(i).getCustname()%></td>
						<td><%=list.get(i).getPhone()%></td>
						<td><%=list.get(i).getAddress()%></td>
						<td><%=list.get(i).getJoindate()%></td>
						<td><%=list.get(i).getGrade()%></td>
						<td><%=list.get(i).getCity()%></td>
					</tr>

					<%
					}
					%>

				</tbody>

			</table>
		</section>

		<footer>
			<%@ include file="layout/footer.jsp"%>

		</footer>
	</div>


</body>
</html>