<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    
         <style>
    
            .row {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
       
            }
            .navbar-brand{
      font-size: 100;
      margin:20px 40px;
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
            .navbar-brand{
            font-size: 100;
        }
    
        .navbar-brand{
      font-size: 100;
      margin:20px 40px;
    }
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
            
            <h1>어서오세요 ${userInfo.userId} 님!</h1>
            <br>
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
                <br>
            <br>
                <form method="get" action="/welcomePage/TabDefault">
                    악보 만들기
                    <input type="submit" value="악보 편집하기">
                </form>

          </div>
        </div>
      </div>



      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>