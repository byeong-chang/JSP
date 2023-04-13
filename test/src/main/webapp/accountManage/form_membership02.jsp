<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>입력한 개인 정보</title>
</head>
<body>
    HOME > Personal Information Inquiry
    <hr>
    <% // 원래 Info.jsp랑 연동해서 입력된 회원가입 정보를 출력하는 코드였으나 DB에 저장하는 SignIn 코드에게 자리를 뺴앗김.
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("p_id");
    String pw = request.getParameter("p_pw");
    String name = request.getParameter("p_name");

    String choice = request.getParameter("choice");
    String ph01 = request.getParameter("phone1");
    String ph02 = request.getParameter("phone2");
    String ph03 = request.getParameter("phone3");

    String sex = request.getParameter("gender");
    String[] hob = request.getParameterValues("hobby");
    String intro = request.getParameter("Introduction");   
    %>
    <p> 아이디 : <%= id %>
    <p> 비밀번호 : <%= pw %>
    <p> 이름 : <%= name %>
    <p> 연락처 : <%= choice %> <%= ph01 %>-<%= ph02 %>-<%= ph03 %>
    <p> 성별 : <%= sex %>
    <p> 취미 :
        <%
        if(hob != null)
        {
            for(int count = 0; count < hob.length; count++)
            {
                out.println(" " + hob[count]);
            }
        }
    %>
    <p> 본인 소개 : <%= intro %>
</body>
</html>