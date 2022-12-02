<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<title>메인 화면</title>
<head>
    <meta charset="UTF-8">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

     <style>

        .row {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 50vh;
   
        }

        h1 {
        font-weight: 700;
      }
     
      span.color1 {
    color: rgb(226, 9, 9);
    }
    span.color2 {
    color: rgb(21, 179, 53);
    }
    </style> 

    </head>
<body>

<div class = "main">
    <div class="container text-center">
        <div class="row">
          <div class="col" >
            <h1>Ta<span class="color1">p</span> ur Ta<span class="color2">b</span></h1>
            <br>
            <br>
            <br>
            <form method="post" action="/user/login">
                id: <input type="text" name="userId">
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                pw: <input type="password" name="userPw">
                <input type="submit" value="로그인">
            </form>
            <br>
            <form method="get" action="/register">
            회원이 아니신가요?
            <input type="submit" value="회원가입">
            </form>
          </div>
        </div>
      </div>

<hr>

      <div class="container text-center">
        <div class="row">
          <div class="col">
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
          </div>
        </div>
      </div>
</div>

   
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </body>
</html>