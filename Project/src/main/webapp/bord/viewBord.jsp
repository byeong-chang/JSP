<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "../dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>게시판 보기</title>
</head>
<body>
<table border = "1">
<tr><td>글번호</td><td>글쓴이</td><td>제목</td><td>내용</td><td>날짜</td></tr>
<%
	int num = 0;
	request.setCharacterEncoding("UTF-8");
	String memberID = (String) session.getAttribute("memberID");
	String sql = "SELECT * FROM question";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();

	while (rs.next()){
	%>
	<tr>
		<td><%= rs.getInt("num") %></td>
		<td><%= rs.getString("writer") %></td>
		<td><a href = "content.jsp?num=<%= rs.getInt("num") %>"><%= rs.getString("title") %></td>
		<td><%= rs.getString("content") %></td>
		<td><%= rs.getTimestamp("Create_time") %></td>
	</tr>
	<br><br>
	<%
	}
	rs.close();
	pstmt.close();
	conn.close();
%>

</table>
</body>
</html>