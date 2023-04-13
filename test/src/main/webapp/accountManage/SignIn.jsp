<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.util.Date" %>
<%@page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>입력한 개인 정보</title>
</head>
<body>
	<% // txt 파일에 저장하는 예제 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("p_id");
		String pw = request.getParameter("p_pw");
		String name = request.getParameter("p_name");
		String email = request.getParameter("p_email");
		Date date = new Date();
		Long time = date.getTime();
		PrintWriter writer = null;
		try{
			String filePath = application.getRealPath("/WEB-INF/account.txt");
			BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
			writer = new PrintWriter(bw,true);
			writer.printf(id + " "+pw+" "+name+" "+time + "\n");
			out.print("txt파일에 저장되었습니다.");
		}catch(IOException ioe){
			out.println("파일에 데이터를 쓸 수 없습니다.");
			ioe.printStackTrace();
		}finally{
			try{
				writer.close();
			}catch (Exception e){
				out.println("종료 실패");
			}
		}
	
	%>
</body>
</html>

