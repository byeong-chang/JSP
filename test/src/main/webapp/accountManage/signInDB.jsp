<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("p_id");
		String pw = request.getParameter("p_pw");
		String email = request.getParameter("p_email");
		
		String sql = "INSERT INTO members(id,passwd,email) VALUES";
		sql += "('" +id+"','"+pw+"','"+email+"')";

		String driverName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/odbo";
		String username = "root";
		String password = "qwer1234";
		Connection conn = null;

		try{
			//2. 드라이버 로딩
			Class.forName(driverName);
			//3. 연동
			conn = DriverManager.getConnection(url,username,password);
			Statement sm = conn.createStatement();
			//4. 사용
			out.println(">>연결 성공 :" + conn);
			
			int count = sm.executeUpdate(sql);
			if(count == 1){
				out.println("회원 가입 성공!");
			}else{
				out.println("회원 가입 실패!");
			};
			sm.close();
			
		}catch(ClassNotFoundException e){
			out.println(">>연결 실패 : 드라이버 복사 필요!");
		}catch(SQLException e){
			out.println(">>연결 실패 : SQL 명령문 확인 필요!");
		}finally{
			//5.닫기
			try{
				if(conn != null)
					conn.close();
			}catch(SQLException e){
				;
			}
		}
	%>
</body>
</html>