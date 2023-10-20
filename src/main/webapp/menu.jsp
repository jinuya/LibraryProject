<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/LibraryProject/css/style.css">
<link rel="stylesheet" type="text/css" href="/LibraryProject/css/login.css">
</head>
<body>
    <div class="wrapper">
        <header>
            <h1>양영디지털고등학교 도서관 홈페이지</h1>
        </header>
        <div class="row">
            <div class="side_menu">
<%              MemberVO login = (MemberVO)session.getAttribute("loginOK"); %>
                    <a href="/LibraryProject/index.jsp" id="intro">처음으로</a>
<%              if (login == null) { %>
                    <a href="/LibraryProject/login/login.jsp" id="login">로그인</a>
                    <a href="/book/searchBook.jsp" id="search">도서 검색</a>
                    <a id="rental">도서대출현황</a>
                    <a id="quit">회원탈퇴</a>
<%              } else { %>
                    <a href="/LibraryProject/logout" id="logout">로그아웃 (<%= login.getMemberId() %>)</a>
                    <a href="/book/searchBook.jsp" id="search">도서 검색</a>                    
                    <a href="/rentalBook" id="rental">도서대출현황</a>
                    <a href="/quit" id="quit">회원탈퇴</a>
<%              } %>
            </div>
            <div class="content">
</body>
</html>