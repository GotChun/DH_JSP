<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String col1 = request.getParameter("col1");
String col2 = request.getParameter("col2");
String col3 = request.getParameter("col3");
String col4 = request.getParameter("col4");
String style = request.getParameter("style");
%>

<%
java.util.Scanner sc = new java.util.Scanner(System.in);
System.out.print("행열 입력 :");
int col = sc.nextInt();
int row = sc.nextInt();

sc.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
nav { <%=style%>
	
}
</style>

</head>
<body>

	

	<nav>
	
		<h2>내비게이션 바</h2>
		 Col1 =<%=col1%><br>
		 Col2 =<%=col2%><br> 
		 Col3 =<%=col3%><br> 
		 Col4 =<%=col4%><br>

	</nav>

	<table>
		<%
		for (int i = 0; i < col; i++) {
		%>
		<tr>
			<%
			for (int j = 0; j < row; j++) {
			%>
			<td>테이블</td>
			<%
			}
			%>
					</tr>
			
			<% 
			}
			%>

	</table>
	<script>
		const col1 = '<%=col1%>';
		const col2 = '<%=col2%>';
		const col3 = '<%=col3%>';
		const col4 = '<%=col4%>';

		console.log(col1);
		console.log(col2);
		console.log(col3);
		console.log(col4);
	</script>

</body>
</html>