<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="green.MemberInfo" />    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=member.getName() %>(<%=member.getId() %>) 회원님 안녕하세요.
</body>
</html>