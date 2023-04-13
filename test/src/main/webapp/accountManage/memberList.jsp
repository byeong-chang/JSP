<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "qwer1234";
	Connection conn = null;
	
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username,password);
	
	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT * FROM members");
	
	String str = "";
	int count = 1;
	
	while(rs.next()){
		str += count + " : " + rs.getString("id") + " / " + rs.getString("passwd")+" / " 
		+ rs.getString("email")+" / " + rs.getString("signuptime") + "<br>";
		count ++;
	}
	out.print("Home > 회원 가입 명단 <hr>");
	out.print(str);
	
	rs.close();
	sm.close();
	conn.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 확인</title>
</head>
<body>
</body>
</html>