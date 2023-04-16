<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>bord write</title>
</head>
<body>
<h1>글 작성하기</h1>
<form action="writePro.jsp" method = "post">
	<table border = "1">
		
		<tr>
			<td>비밀번호</td><td><input type = "text" name = "passwd"> </td>
		</tr>
		<tr>
			<td>제목</td><td><input type = "text" name = "subject"> </td>
		</tr>
		<tr>
			<td>내용</td><td><textarea rows="10" cols="20" name = "content"></textarea> </td>
		</tr>
		<tr>
			<td colspan = "2"> <input type ="submit" value = "글쓰기"> </td>
		</tr>
		
	</table>
</form>
</body>
</html>