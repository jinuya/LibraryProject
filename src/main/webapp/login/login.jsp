<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	    <h2>양영디지털고등학교 도서관 로그인 페이지</h2>

    <form action="/LibraryProject/login" method="post">
        <div class="login_container">
            <label><b>User ID</b></label>
            <input type="text" name="id" placeholder="Enter UserID">

            <label><b>Password</b></label>
            <input type="password" name="pwd" placeholder="Enter Password">
            <input type="submit" value="Login">
            <a href="/member/register.jsp">회원가입</a>
        </div>
    </form>
<%@ include file="../footer.jsp" %>