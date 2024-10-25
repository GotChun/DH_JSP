<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="utils.*,dto.*,java.time.*,java.time.format.*" %>
<%	
	request.setCharacterEncoding("UTF-8");
	//파라미터 받기 , 이게 mvc 의 컨트롤러 같은 역할이라 보면 될듯 ?
 int custno = Integer.parseInt(request.getParameter("custno"));
 String custname = request.getParameter("custname");
 String phone = request.getParameter("phone");
 String address = request.getParameter("address");

 
 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
 LocalDate joindate = LocalDate.parse(request.getParameter("joindate"),formatter);  //위의 포맷팅의 형식이 맞다면 문자열로 바꿔준다 ?
 System.out.println("Date : "+joindate);
 
 char grade = request.getParameter("grade").charAt(0);
 String city = request.getParameter("city");
	
 MemberDto memberDto = new MemberDto(custno,custname,phone,address,joindate,grade,city);
 System.out.println(memberDto);
 
	//유효성 체크
	
	//DB Insert
	MemberDbUtils.conn();
	MemberDbUtils.insert(memberDto);
	MemberDbUtils.pstmt.close();
	MemberDbUtils.conn.close();
	%>
	//뷰 이동 or 뷰에 내용 전달
	<script>
		alert("회원가입 완료 !");
		location.href = "${pageContext.request.contextPath}/join.jsp"; /* 여기는 proc 페이지고 join 페이지로 다시 이동 */
		// 아 다시 칸이 비어있는 원래의 join 창으로 돌아가야 하니까 join.jsp 로 다시 location 하는거구만
	</script>
