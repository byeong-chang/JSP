<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../dbConn.jsp" %>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	int num = (int) session.getAttribute("num");
	String writer = (String) session.getAttribute("memberID");
	String content = request.getParameter("content");
	Timestamp date = new Timestamp(System.currentTimeMillis());
	
	String sql="INSERT INTO answer(CONTENT, WRITER, CREATE_TIME, QUESTION_ID) VALUES";
	sql += "('" + content+"','" +writer + "','" + date + "','" + num+ "')"; 
	Statement sm = conn.createStatement();
	sm.executeUpdate(sql);
	
	String str = "content.jsp?num="+num;
	response.sendRedirect(str);
	
	sm.close();
	conn.close();
%>