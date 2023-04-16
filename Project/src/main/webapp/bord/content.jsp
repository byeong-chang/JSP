
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String sql="select * from question where num=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setInt(1,num);
ResultSet rs=pstmt.executeQuery();

if(rs.next()){
%>
<h1>jsp5/content.jsp</h1>
<table border="1">
	<tr>
    <td>글번호</td>
    <td  colspan = "3"><%=rs.getString("num")%></td>
  </tr>
	<tr>
		<td>작성자</td>
    <td><%=rs.getString("writer")%></td>
    <td>날짜</td>
    <td><%=rs.getTimestamp("create_time")%></td>
  </tr>  
  <tr>
    <td>제목</td>
    <td colspan="3"><%=rs.getString("title")%></td>
  </tr>
  <tr>
    <td>내용</td>
    <td colspan="3"><%=rs.getString("content")%></td>
  </tr>
  <tr>
	  <td colspan="4">
		  <form action="viewBord.jsp" method="post">
				<input type="submit" value=" 글목록 ">
			</form>
		</td>
	</tr>
</table>

<%
pstmt.close();
rs.close();
}
%>
<h1>댓글</h1>
<%
String sql2 ="select * from answer where question_id=?";
PreparedStatement pstmt2 = conn.prepareStatement(sql2);
pstmt2.setInt(1,num);
ResultSet rs2 = pstmt2.executeQuery();

while (rs2.next()){
%>
<table border="1">
	<tr>
		<td>작성자</td>
    <td><%=rs2.getString("writer")%></td>
    <td>날짜</td>
    <td><%=rs2.getTimestamp("create_time")%></td>
  </tr>  
  <tr>
    <td>내용</td>
    <td colspan="3"><%=rs2.getString("content")%></td>
  </tr>
</table>
<br>
<%
}

pstmt2.close();
rs2.close();
conn.close();
session.setAttribute("num",num);
%>

<h3>댓글 작성하기</h3>
<form action="answer.jsp">
	<textarea rows="10" cols="60" name = "content"></textarea>	
	<input type = "submit" value = "제출하기">
</form>
</body>
</html>