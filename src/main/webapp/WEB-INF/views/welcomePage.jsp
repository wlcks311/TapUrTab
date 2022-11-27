<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head></head>
<body>
<h2>어서오세요 ${userInfo.userId} 님!</h2>
<h3>찾으시는 악보가 있으신가요? </h3>
    <form method="post" action="/tab/search">
        <select name="searchType">
            <option value="songName">노래 제목</option>
            <option value="singerName">가수 이름</option>
            <option value="useId">유저 id</option>
        </select>
        <input type="text" name="givenWord">
        <input type="submit" value="검색">
    </form>

    <form method="get" action="/welcomePage/TabDefault">
        악보 만들기
        <input type="submit" value="악보 편집하기">
    </form>
</body>
</html>