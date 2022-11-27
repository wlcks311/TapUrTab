<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head></head>
<body>
<h1>검색 결과</h1><br>
    <table border="1">
        <th>id</th>
        <th>제목</th>
        <th>가수</th>
        <th>유저id</th>
        <th>악보 링크</th>
        <c:forEach var="tablist" items="${tabInfos}">
            <tr>
                <td>${tablist.id}</td>
                <td>${tablist.songName}</td>
                <td>${tablist.singerName}</td>
                <td>${tablist.userId}</td>
                <td>
                <form method="post" action="/tab/getTabDrawInfo">
                    <input type="hidden" value=${tablist.id} name="tabId">
                    <input type="submit" value="열기">
                </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>