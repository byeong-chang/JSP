<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.io.*"%>
<%@ page import = "java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 생성</title>
</head>
<body>

	세션 생성하여 ID PW 맞는지 확인하기
	<hr>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/account.txt");
		reader = new BufferedReader(new FileReader(filePath));
		while (true){
			String str = reader.readLine();
			if(str ==null){
				break;
			}
			String[] result = str.split(" ");
			String uid = result[0];
			String upw = result[1]; 
			String uname = result[2];
			if(id.equals(uid) && pw.equals(upw)){
				Cookie cooks_id = new Cookie("userID","u_id");
				Cookie cooks_pw = new Cookie("userPW","u_pw");
				response.addCookie(cooks_id);
				response.addCookie(cooks_pw);
				out.println("쿠키를 생성하였습니다. <br>");
				out.println("["+id+"] 님이 입장하였습니다. <br>");
				response.sendRedirect("loginSuccess.jsp");
				return;
			}
		}
		response.sendRedirect("loginFailure.jsp");
	}catch (FileNotFoundException fnfe){
		out.println("파일이 존재하지 않습니다.");
	}catch (IOException ioe){
		out.println("파일을 읽을 수 없습니다.");
	}finally{
		try{
			reader.close();
		}catch(Exception e){
			out.println("reader 닫기 에러발생");
		}
	}
	
	%>
	
	<p> 아이디 : <%= id %>
	<p> 비밀번호 : <%= pw %> <br>
	<hr>
	
</body>
</html>