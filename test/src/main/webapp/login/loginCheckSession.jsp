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
				response.sendRedirect("loginSuccess.jsp");
				session.setAttribute("memberId" , id);
				session.setAttribute("memberPw", pw);
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
	
	<%-- home > 모든 세션 정보 확인하기
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
	
	%>
	<hr>
	Home > 다중 세션 삭제하기
	<hr>
	-- 다중 세션 삭제 전 -- <br>
	<%
		String u_id = (String) session.getAttribute("memberId");
		String u_pw = (String) session.getAttribute("memberPw");
		out.println(" 1.아이디 세션 속성값 : "+ u_id + "<br>");
		out.println(" 2.비밀번호 세션 속성값 : "+u_pw+"<br>");
		
		if(request.isRequestedSessionIdValid() == true){
			out.println(">> 유효한 세션입니다. <br><br>");
		}
		else{
			out.println(">> 유효하지 않은 세션입니다. <br><br>");
		}
		session.invalidate();
	%>
	-- 다중 세션 삭제 후 -- <br>
	<%
		if(request.isRequestedSessionIdValid() == true){
			out.println(">> 유효한 세션입니다. <br><br>");
		}
		else{
			out.println(">> 유효하지 않은 세션입니다. <br><br>");
		}
	%> --%>
	
</body>
</html>