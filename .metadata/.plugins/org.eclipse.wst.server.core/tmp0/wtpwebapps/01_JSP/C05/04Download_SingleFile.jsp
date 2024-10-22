<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>

<%  
	
	//Dir 경로생성
	String dirPath = pageContext.getServletContext().getRealPath("/")+"C05\\download\\";  //실제 서블릿 파일의 경로 확인
	System.out.println("Path : " + dirPath);
	//File dir = new File(dirPath);
	//if(!dir.exists())
	//	dir.mkdirs();

	try{
		//파일 InputStream 생성
	   FileInputStream in = new FileInputStream(dirPath+"TEXT.txt");
		
		//내장객체(Out)정리
	//	out.clear();	//response outStream 을 닫고 버퍼를 비움
	//	out = pageContext.pushBody();   //현재 페이지에 Body 연결
		
		//OutStream 가져오기
	ServletOutputStream bout = response.getOutputStream();    //리스폰스에서 아웃풋스티림 꺼내옴
		
		//response 의 Header 변경 (중요!)
		response.setHeader("Content-Type","applicaiton/octet-stream;charset-utf-8" );
		response.setHeader("Content-Disposition","attachment;filename=TEXT.txt" );  //attachment 붙이면 해당 파일명으로 다운로드
		
		//inOutStream 전송
		byte [] buffer = new byte[4096];
		while(true){
			int data = in.read(buffer);
			if(data==1)
				break;
			bout.write(buffer,0,data);
			bout.flush();
		}
		bout.close();
		in.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 오전 보조스트림 만들기 
	
	
	
	
%>