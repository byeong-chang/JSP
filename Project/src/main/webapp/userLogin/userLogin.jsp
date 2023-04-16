<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "../dbConn.jsp" %>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="../total.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkFun(){
		<%
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT * FROM members");

		while(rs.next()){
			
			String did = rs.getString("id");
			String dpw = rs.getString("passwd");
			
		%>
		var f = document.loginForm;
		if(f.uID.value == "" ){
			alert("아이디를 입력해 주세요.")
			f.uID.focus();
			return false;
		}
		else if(f.uPW.value == ""){
			alert("비밀번호를 입력해 주세요.")
			f.uPW.focus();
			return false;
		}else if(f.uID.value== <%= did%> && f.uPW == <%= dpw%>){
			
			return true;
		}
		else return false;
	}
		
		<%
		}
		rs.close();
		sm.close();
		conn.close();
		%>
		
		
</script>
</head>
<body>	
	Home > 로그인
	<hr>
	<form action = "loginSuccess.jsp" method = "post" onsubmit = "return checkFun()">
		<fieldset style = "width : 260px">
			<legend> 로그인 화면 </legend>
			<table>
				<tr height = "30">
					<td align = "right">아이디 &nbsp;</td>
					<td><input type = "text" name = "uID"></td>
				</tr>
				<tr height = "30">
					<td align = "right">비밀번호 &nbsp;</td>
					<td><input type = "password" name = "uPW"> </td>
				</tr>
				<tr height = "50">
					<td></td>
					<td> <input type = "submit" value = "로그인 > >"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>