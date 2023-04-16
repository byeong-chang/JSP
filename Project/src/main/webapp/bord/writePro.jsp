<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "../dbConn.jsp" %>

<%
	String memberID = (String) session.getAttribute("memberID");
	String memberPW = (String) session.getAttribute("memberPW");
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("subject");
	String passwd = request.getParameter("passwd");
	String content = request.getParameter("content");

	if(!memberPW.equals(passwd)){
		out.println("비밀번호가 다릅니다.");
		response.sendRedirect("writeForm.jsp");
	}
	else{
		int readcount = 0;
		Timestamp date = new Timestamp(System.currentTimeMillis());
		
		String sql = "INSERT INTO question(TITLE, CONTENT, WRITER, CREATE_TIME) VALUES";
		sql += "('" + subject+"','" +content + "','" + memberID + "','" + date +"')"; 
		
		Statement sm = conn.createStatement();
		int count = sm.executeUpdate(sql);
		if(count == 1){
			response.sendRedirect("bordMain.jsp");
		}else{
			out.println("글 등록 실패!");
			response.sendRedirect("writeForm.jsp");
		}
		sm.close();
	}
	conn.close();	
%>


