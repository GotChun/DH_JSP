<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*,java.util.zip.*"%>

<%
//Dir 경로생성
String dirPath = pageContext.getServletContext().getRealPath("/") + "C05\\download\\"; //실제 서블릿 파일의 경로 확인
System.out.println("Path : " + dirPath);

File dir = new File(dirPath);
File fileList[] = dir.listFiles();
for (File f : fileList)
	System.out.println(f);

try {
	FileInputStream in = null;
	ZipEntry zipEntry = null;

	//내장객체(Out)정리
	out.clear(); //response outStream 을 닫고 버퍼를 비움
	out = pageContext.pushBody(); //현재 페이지에 Body 연결

	//OutStream 가져오기
	ServletOutputStream bout = response.getOutputStream(); //리스폰스에서 아웃풋스티림 꺼내옴

	ZipOutputStream zout = new ZipOutputStream(bout);

	//response 의 Header 변경 (중요!)
	response.setHeader("Content-Type", "applicaiton/octet-stream;charset-utf-8");
	response.setHeader("Content-Disposition", "attachment;filename=TEST.zip"); //attachment 붙이면 해당 파일명으로 다운로드
	
	for(File file : fileList){
		in = new FileInputStream(file);   //기본 inputstream 연결
		ZipEntry zipfile = new ZipEntry(file.getName().toString());  
		
		zout.putNextEntry(zipfile);
		
		while(true){
			int data = in.read(); 		
			if(data==-1)	//파일이 -1 즉 없을 때
				break;
			zout.write((byte)data);	
		}
		zout.closeEntry(); //다 읽어서 종료처리
		in.close();
	}
	zout.flush();
	zout.close();
	bout.close();

	/*	//파일 InputStream 생성
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
		while(true){
	int data = in.read();
	if(data==1)
		break;
	bout.write((byte)data);
	bout.flush();
		}
		bout.close();
		in.close(); */

} catch (Exception e) {
	e.printStackTrace();
}

// 오전 보조스트림 만들기
%>