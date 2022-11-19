<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<title>메인 화면</title>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Welcome to Tap your Tab</h1>
    <form method="post" action="/user/login">
        id: <input type="text" name="userId"><br>
        pw: <input type="password" name="userPw">
        <input type="submit" value="로그인">
    </form>
    <br>
    <form method="get" action="/register">
    회원이 아니신가요?
    <input type="submit" value="회원가입">
    </form>
    <br>
    <br>
    <h2>찾으시는 악보가 있으신가요? </h2>
    <form method="post" action="/tab/search">
        <select name="searchType">
            <option value="songName">노래 제목</option>
            <option value="singerName">가수 이름</option>
            <option value="useId">유저 id</option>
        </select>
        <input type="text" name="givenWord">
        <input type="submit" value="검색">
    </form>

    </body>
</html>