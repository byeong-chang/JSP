<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>간단한 홈페이지</title>
	<link href = "NewFile.css" rel = "stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<header>
		<h1>Welcome to my page</h1>
	</header>
	<nav>
		<ul class = "list-group">
			<li class = "list-group-item"><a href="./accountManage/Info.jsp">회원가입</a></li>
			<li class = "list-group-item"><a href="./accountManage/accountDelete.jsp">계정 탈퇴하기</a></li>
			<li class = "list-group-item"><a href="./login/login.jsp">로그인</a></li>
			<li class = "list-group-item"><a href="./recommendBook/recommendBook.jsp">도서 추천</a></li>
			<li class = "list-group-item"><a href="./introduce/introduce.jsp">이력서</a></li>
			<li class = "list-group-item"><a href="https://github.com/byeong-chang">Git</a></li>
			<li class = "list-group-item"><a href="https://mbspear.tistory.com/">blog</a></li>
			<li class = "list-group-item"><a href="./ActionTag/useBeanDate.jsp">오늘의 날짜와 시각 출력</a></li>
			<li class = "list-group-item"><a href="./accountManage/memberList.jsp">회원정보 출력하기</a></li>
		</ul>
	</nav>
	<main>
		<section>
			<h2>About me</h2>
			<p>안녕하세요. 저는 JSP를 공부하고 있는 민병창입니다.</p>
		</section>
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