<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<body>
	Home > 사용자 로그인
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		session.setAttribute("memberID",u_id);
		session.setAttribute("memberPW",u_pw);
			
		out.println("<h3>로그인 성공!</h3>");
		out.println("<h3>사용자 ["+u_id + "]님이 입장하였습니다. </h3><p>" );
		
	%>
	<table border = "0">
		<tr>
			<td>
				<form action="../bord/bordMain.jsp" method = "post">
					<input type = "submit" value = "< 게시판 가기">
				</form>
			</td>
			<td>
				<form action="../main.jsp" method = "post">
					<input type = "submit" value = "로그아웃 >">
				</form>
			</td>
		</tr>
	</table>

</body>
</html>