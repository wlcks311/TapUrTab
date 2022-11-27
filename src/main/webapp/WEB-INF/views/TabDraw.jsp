<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
          -webkit-appearance: none;
        }

        p {
            text-align: center;
            font-size: 40px;
        }


        input[type="text"]{

            width:15px;
            height:20px;
            font-size:10px;
            border: 0;
            text-align: center;
            -moz-appearance: textfield;
        }

        div.out {
            width:100%;
            text-align:center;
        }

        div.period {
            display: inline-block;
            text-align: center;
        }
        input.textbox {
            width:1200px;
            border: 1px solid black;
            text-align: left;

        }
        input.title {
            width: 300px;
            height: 40px;
            font-size: 40px;
            border: 1px solid black;
            text-align: left;
        }
        input.singer {
            width: 300px;
            height: 40px;
            font-size: 40px;
            border: 1px solid black;
            text-align: left;
        }
        div.row {
            width: 1200px;
            border: 1px solid black;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        div.col {
            border: 1px;
            margin: 0;
            padding: 0;
            display: inline-block;
            text-align: center;
        }
    </style>
</head>
<body>
    <p>
        제목: ${tabInfo.getSongName()} &emsp; &emsp; 가수: ${tabInfo.getSingerName()}
    </p>
    <br>
    <br>
    <div class="out" id="out">
    <c:forEach var="PeriodNum" begin="0" end="${tabInfo.getTabDrawInfos().get(tabInfo.getTabDrawInfos().size() - 1).periodNum}">
        <div class="TextBlank">
            <c:forEach var="i" begin="0" end="${tabInfo.getTabDrawInfos().getsize} - 1">
                    <c:if test="${PeriodNum eq ${tabInfo.getTabDrawInfos[i].getPeriodNum()}}">
                        <input type="text" class="textbox" value=${tabInfo.getTabDrawInfos[i].getTextNode()}>
                    </c:if>
            </c:forEach>
        </div>
        
        <c:forEach var="rowNum" begin="1" end="6">
            <c:forEach var="colNum" begin="1" end="45">
                <c:forEach var="i" begin="0" end="${tabInfo.getTabDrawInfos().getsize} - 1">
                    <c:if test="${PeriodNum eq ${tabInfo.getTabDrawInfos[i].getPeriodNum()}}">
                        <c:if test="${rowNum eq ${tabInfo.getTabDrawInfos[i].getxPoint()}}">
                    </c:if>
                </c:forEach>
        </c:forEach>    
        </c:forEach>    
    </c:forEach>
</body>
</html>