<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="total.css">

	<meta charset="UTF-8">
	<title>간단한 홈페이지</title>
	<link href = "NewFile.css" rel = "stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<header >
		<h1>Welcome to my page</h1><br>
		<p>안녕하세요. 저는 JSP를 공부하고 있는 민병창입니다.</p>
	</header><br><br><br>	
	
		<table border = "0">
			<tr>
				<td>
					<form action="admin/login.jsp" method = "post">
						<input type = "submit" value = "< 관리자 접속하기">
					</form>
				</td>
				<td>
					<form action="accountManage/signup.jsp" method = "post">
						<input type = "submit" value = "사용자 회원 가입">
					</form>
				</td>
				<td>
					<form action="userLogin/userLogin.jsp" method = "post">
						<input type = "submit" value = "사용자 로그인 >">
					</form>
				</td>
			</tr>
		</table>
	
	<main><br><br><br><br><br><br>
		<section>
			<h2>Contact me</h2>
			<p>이메일: als6068@naver.com</p>
			<p>전화번호: 010-4584-6069</p>
		</section>
	</main>
	<footer>
		<p>&copy; 2023 My Company, Inc.</p>
	</footer>
</body>
</html>