<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <style>
    .row {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 0vh;
   
        }

        
     table{
        align-items: center;
     }
      span.color1 {
        color: rgb(226, 9, 9);
        }
        span.color2 {
        color: rgb(21, 179, 53);
        }
      
        table {
            margin-left:auto; 
            margin-right:auto;
            width: 60%;
            
        }

        table, td, th {
            border-collapse : collapse;
            border : 1px solid black;
        };


    </style> 
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Ta<span class="color1">p</span> ur Ta<span class="color2">b</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          
        </div>
      </nav>


      <div class="container text-center">
        <div class="row">
          <div class="col">
            <h1>검색 결과</h1><br>
            
          </div>
          
        </div>
      </div>
      <table>
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



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>