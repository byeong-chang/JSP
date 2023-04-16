<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%

	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "qwer1234";
	Connection conn = null;
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, username, password);
%>