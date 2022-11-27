<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head></head>
<body>
<h1>회원가입 페이지</h1>
<form method="post" action="/user/insertUser">
id: <input type="text" name="userId"><br>
pw: <input type="password" name="userPw"><br>
<input type="submit" value="가입하기">
</form>
</body>
</html>