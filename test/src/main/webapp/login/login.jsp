<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript">
	function checkFun(){
		var f = document.loginForm;
		var name = f.id.value;
		var regExpName = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		var pw = f.passwd.value;
		var regExpPasswd = /^[0-9]*$/;
		
		if(!regExpName.test(name)){
			alert("닉네임은 숫자로 시작할 수 없습니다.");
			f.id.focus();
			return false;
		}
		else if(!regExpPasswd.test(pw)){
			alert("비밀번호는 숫자로만 입력해 주세요.");
			f.passwd.focus();
			return false;
		}
		else return true;
	}
</script>
</head>
<body>
	Home > Login
	<hr>
	<form action = "loginCheckCookie.jsp" name = "loginForm" method = "post" onsubmit = "return checkFun()">
    ID : <br>
    <input type="text" name = "id"><br><br>
    PASSWORD : <br>
    <input type="password" name = "passwd"><br><br> &nbsp;
    <input type="submit" value = "Login">&nbsp;
    <input type="reset" value = "Cancel">
  </form>
</body>
</html>