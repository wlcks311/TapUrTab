<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            size = "1";
            width:15px;
            height:20px;
            font-size:15px;
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
            background-color: #D0F5A9;
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
            width: fit-content;
            border: 1px solid black;
            margin: 0;
            padding: 0;
            text-align: center;
            font-size: 0px;
        }

        div.col {
            border: 1px;
            margin: 0px;
            padding: 0;
            display: inline;
            text-align: center;
            background-color: black;
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
        <div class="period">
            <c:forEach var="i" begin="0" end="${tabInfo.getTabDrawInfos().size() - 1}">
                <c:set var="getPeriodNum" value="${tabInfo.getTabDrawInfos()[i].getPeriodNum()}" />
                <c:if test="${PeriodNum eq getPeriodNum}">
                    <c:set var="lyric" value="${tabInfo.getTabDrawInfos()[i].getTextNode().toString()}" />
                </c:if>
            </c:forEach>
            <div class="TextBlank">
                <input type="text" class="textbox" value="${lyric}" readonly>
            </div>
            <br>
        <c:forEach var="rowNum" begin="0" end="5">
            <div class="row">
            <c:forEach var="colNum" begin="0" end="64">
                <c:set var="Skipflag" value="0" />
                <c:forEach var="i" begin="0" end="${tabInfo.getTabDrawInfos().size() - 1}">
                    <c:set var="getPeriodNum" value="${tabInfo.getTabDrawInfos()[i].getPeriodNum()}" />
                    <c:if test="${PeriodNum eq getPeriodNum}">
                        <c:set var="getxPoint" value="${tabInfo.getTabDrawInfos()[i].getxPoint()}" />
                        <c:if test="${rowNum eq getxPoint}">
                            <c:set var="getyPoint" value="${tabInfo.getTabDrawInfos()[i].getyPoint()}" />
                            <c:if test="${colNum eq getyPoint}">
                                <div class="col">
                                    <input type="text" value=${tabInfo.getTabDrawInfos()[i].getNode()} readonly>
                                </div>
                                <c:set var="Skipflag" value="1" />
                            </c:if>
                        </c:if>
                    </c:if>
                </c:forEach>
                <c:if test="${Skipflag eq 0}">
                    <div class="col">
                        <input type="text" readonly>
                    </div>
                </c:if>
            </c:forEach>
            </div>
        </c:forEach>
        </div>
        <br>
        <br>
        <br>
    </c:forEach>
</body>
</html>