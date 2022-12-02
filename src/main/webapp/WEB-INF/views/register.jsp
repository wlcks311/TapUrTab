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

       h1 {
       font-weight: 700;
       align-items: center
     }
    
     span.color1 {
    color: rgb(226, 9, 9);
    }
    span.color2 {
    color: rgb(21, 179, 53);
    }
    .navbar-brand{
      font-size: 100;
      margin:20px 40px;
    }
   </style> 

</head>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Ta<span class="color1">p</span> ur Ta<span class="color2">b</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
  </div>
</nav>
    <body>
        <div class="container text-center">
            <div class="row">
              <div class="col">
                <h1>회원가입 페이지</h1>
                <br>
                <br>
                <br>
                <form method="post" action="/user/insertUser">
                    &nbsp;&nbsp;ID : <input type="text" name="userId">
                    <br>
                    <br>   
                    PW : <input type="password" name="userPw"><br>
                    <br>
                    <br>   
                    <input type="submit" value="가입하기">
                </form>
            </div>
        </div>
        </div>





    
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>


</html>