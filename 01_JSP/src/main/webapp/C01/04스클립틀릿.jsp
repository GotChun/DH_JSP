<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	java.util.Scanner sc = new java.util.Scanner(System.in);
	System.out.println("행열 입력 :");
	int row = sc.nextInt();
	int col = sc.nextInt();
	System.out.println("행 :" + row + "열 : " + col);
	
	sc.close();
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

행 : <%=row %><br>
열 : <%=col %><br>

	<table>
		<%
		//행 반복 횟수를 정하는 작업임다 ~
		for(int i=0;i<row;i++){
		
		%>	
			<tr>
			<%
			for(int j=0;j<col;j++){
			%>
				<td>확인ㅂㅂㅂ</td>
			<%
			}
			%>
			
			</tr>
			
		<% 
		}
		%>
		
		
		
		</table>

</body>
</html>