<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정 탈퇴</title>
</head>
<body>
	Home > Withdraw the Membership
	<hr>
	<form action = "withdrawProcess.jsp" name = "user_info" method = "post">
		<fieldset style = "width:200px">
			<legend>회원 탈퇴</legend><p></p>
			
			아이디 : <br>
			<input type = "text" name = "userID"><br>
			비밀번호 : <br>
			<input type = "password" name = "userPW"><br>
			
			<div align = "center">
				<input type ="submit" value = "탈퇴하기"> &nbsp;&nbsp;
			</div>
		</fieldset>
	</form>
</body>
</html>