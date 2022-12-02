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
        }


        input[type="text"]{
            size ="1";
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
            display: inline-block;
            text-align: center;
            background-color: black;
            font-size: 0px;
        }
    </style>
</head>
<body>
    <p>
        제목: <input type="text" class="title"> &emsp; &emsp; 가수: <input type="text" class="singer">
        <input type="button" id="savePeriod" value="악보 저장하기">
    </p>

    <br>
    <br>
    <div class="out" id="out">
        <div class="period">
            <div class="TextBlank">
                <input type="text" class="textbox" placeholder="이곳에 가사나 코드를 입력하세요!">
            </div>
            <br>
            <c:forEach var="rowNum" begin="1" end="6">
                <div class="row">
                    <c:forEach var="colNum" begin="1" end="65">
                        <div class="col">
                            <input type="text">
                        </div>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
        <br>
        <button onclick = "addPeriod(event)">줄 추가</button><br>
    </div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
        <script type="text/javascript">

            $(document).ready(function(){

                $('#savePeriod').click( function() {
                            console.log("save button clicked");
                            var a = [];
                                let out = document.querySelector(".out");
                                console.log(out);
                                let periods = out.querySelectorAll(".period");
                                for (var periodNumber = 0; periodNumber < periods.length; periodNumber++) { // period 개수만큼 동작
                                    let period = periods[periodNumber];
                                    let textBox = period.querySelector(".TextBlank");;
                                    let inputText = textBox.querySelector("input");
                                    let textVal = inputText.value;

                                    let rows = period.querySelectorAll(".row");
                                    for (var rowNumber = 0; rowNumber < rows.length; rowNumber++) {
                                        let row = rows[rowNumber];
                                        console.log(row);
                                        let inputs = row.querySelectorAll("input");
                                        for (let colNumber = 0; colNumber < inputs.length; colNumber++) {
                                            let input = inputs[colNumber];
                                            let val = input.value;
                                            if (!Boolean(val)) continue;
                                            a.push({
                                                periodNum: periodNumber,
                                                xPoint: rowNumber,
                                                yPoint: colNumber,
                                                node: val,
                                                textNode: textVal
                                                })
                                        }
                                    }
                                }


                            var tabData = {
                                songName : document.querySelector('.title').value,
                                singerName : document.querySelector('.singer').value,
                                tabDrawInfos : a
                            };
                            console.log(tabData);
                            $.ajax({
                                type:'post',
                                url:'/tab/save',
                                dataType: 'json',
                                contentType : 'application/json',
                                data: JSON.stringify(tabData),
                                success: alert("save success!"),
                                fail: function(data, textStatus, errorThrown) {
                                console.log(errorThrown);
                                }
                            });
                });
            });

            function addPeriod(e) {
                        console.log("add clicked")
                        obj = document.getElementById("out");
                        newDiv = document.createElement("div");
                        newDiv.className = "period";


                        newDiv.innerHTML += "<br><br>";
                        let blankDiv = document.createElement("div");
                        blankDiv.className = "TextBlank";
                        let TextInput = document.createElement("input");
                        TextInput.type = "text";
                        TextInput.className = "textbox";
                        TextInput.placeholder= "이곳에 가사나 코드를 입력하세요!";
                        blankDiv.appendChild(TextInput);

                        newDiv.appendChild(blankDiv);

                        newDiv.innerHTML += "<br>";

                        for (var rowNum = 1; rowNum <= 6; rowNum++) {
                            let rowDiv = document.createElement("div");
                            rowDiv.className = "row";
                            for (var colNum = 1; colNum <= 65; colNum++) {
                                let colDiv = document.createElement("div");
                                colDiv.className = "col";
                                let Input = document.createElement("input");
                                Input.type = "text";
                                colDiv.appendChild(Input);
                                rowDiv.appendChild(colDiv);
                            }

                            newDiv.appendChild(rowDiv);
                        }


                        newDiv.innerHTML += "<button onclick = \"addPeriod(event)\">줄 추가</button>";
                        obj.appendChild(newDiv);
            }
        </script>
</html>