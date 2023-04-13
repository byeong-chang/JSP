<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Home > 로그인 성공 화면
	<hr>
	로그인을 성공적으로 수행하였습니다.<br>
	
	home > 모든 세션 정보 확인하기
	<hr>
	<%
		String name = "";
		String value = "";
		
		Enumeration en = session.getAttributeNames();
		int count = 0;
		while(en.hasMoreElements()){
			count++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			
			out.println(count + ".세션의 속성 이름 : ["+ name +"]<br>");
			out.println(count + ".세션의 속성값 : ["+ value +"]<br>");
		}
		out.println("새로운 세션 생성 성공 ! <br>");
		out.println("[ " + value + " ]님이 입장하셨습니다. ");
	%>

</body>
</html>