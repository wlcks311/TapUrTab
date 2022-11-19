<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head></head>
<body>
<h1>검색 결과</h1><br>
    <c:forEach var="tablist" items="${tabInfos}">
        id: ${tablist.id}<br>
        노래제목: ${tablist.songName}<br>
        가수: ${tablist.singerName}<br>
        유저id: ${tablist.userId}<br>
        링크: <a href="${tablist.tabLink}">링크</a><br>
    </c:forEach>
</body>
</html>