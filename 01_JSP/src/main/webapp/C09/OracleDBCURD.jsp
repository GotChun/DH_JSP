<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import ="java.sql.*" %>
   <%@ page import ="java.util.*"%>
   <%@ page import ="C09.*"%>


<%!
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id="system";
	String pw="1234";
	
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// CRUD 함수 미리 만들기
	void connection() throws Exception{   //throws 안할거면 에러 페이지 따로 빼야함
		//Driver적재
		Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(url,id,pw);
	System.out.println("connected.."+ conn);
		//connection 객체 생성 + 연결
	}
	void insert(String userid,String password,String username) throws Exception{  //throws 로 던져도 되긴하는데 try catch 를 하는게 더 안전한 방법.
		//db 삽입
		pstmt = conn.prepareStatement("insert into tbl_test values(?,?,?)");
		pstmt.setString(1, userid);
		pstmt.setString(2, password);
		pstmt.setString(3, username);
			
		int result = pstmt.executeUpdate();
		pstmt.close();
	
			
	}
	
	List<TestDto> select() throws Exception{
		pstmt=conn.prepareStatement("select * from tbl_test");
		rs = pstmt.executeQuery();
		List<TestDto> list = new ArrayList();
		TestDto dto=null;
		if(rs!=null){
			
			while(rs.next()){
				dto = new TestDto();
				dto.setUserid(rs.getString("userid"));
				dto.setPassword(rs.getString("password"));
				dto.setUsername(rs.getString("username"));
				list.add(dto);
			}
		}
		rs.close();
		pstmt.close();
		
		return list;
	}
	

%>
  
<%
//DB 연결
connection();
	//insert("user1","1234","길동좌");
	//insert("user2","1234","동동좌");
	//insert("user3","1234","서동좌");
	//insert("user4","1234","야동좌");
	
	//select
	List<TestDto> list = select();
	list.forEach(item->System.out.println(item));
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{height:100px;border:1px solid;}
main{min-height:800px;border:1px solid;}
footer{height:300px;border:1px solid;}

</style>
</head>
<body>

	<div class ="wrapper">
		<header>
		<main>
		
		<table style="width:800px;margin:200px auto;border:1px solid;">
			<caption>조회결과확인</caption>
			<thead>
			<tr>
			<td>No</td>
			<td>계정</td>
			<td>비밀번호</td>
			<td>이름</td>
			</tr>
			</thead>
			
			<tbody>
			<%
			for(int i =0;i<list.size();i++){  // list 개수만큼 반복, 
				
				%>
				<tr>
					<td><%=i+1 %></td>
					<td><%= list.get(i).getUserid()%></td>
					<td><%= list.get(i).getPassword()%></td>
					<td><%= list.get(i).getUsername()%></td>
				
				<%
			}
			%>
			
			
			</tbody>
			<!-- 반복처리 -->
		</table>
		
		</main>
		</header>
		
		
		
		<footer>
		
		</footer>
	</div>


</body>
</html>