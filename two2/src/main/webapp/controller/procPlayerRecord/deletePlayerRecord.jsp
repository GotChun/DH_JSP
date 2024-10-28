<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="lck.service.PlayerRecordService"%>

<%
int playerId = Integer.parseInt(request.getParameter("id"));

PlayerRecordService playerRecordService = new PlayerRecordService();
playerRecordService.delete(playerId);

response.sendRedirect(request.getContextPath() + "/view/playerRecord/playerRecordList.jsp");
%>
