<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset style = "width:230px">
	<legend> 게시판 시작 화면 </legend>
	게시판 Home
	<hr>
		<table border = "0">
			<tr>
				<td>
					<form action="writeForm.jsp" method = "post">
						<input type = "submit" value = "< 글 쓰러 가기 ">
					</form>
				</td>
				<td>
					<form action="viewBord.jsp" method = "post">
						<input type = "submit" value = "글 보러 가기 >">
					</form>
				</td>
				
			</tr>
		</table>
		</fieldset>
</body>
</html>