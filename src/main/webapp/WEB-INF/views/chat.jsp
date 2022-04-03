<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

body{
	background-color: gray;
	font-family: 'Pretendard-Regular';
}
#messageinput{
	width : 200px;
	height: 25px;
	
}
.header{
 font-size: 20px;
}
*{ margin: 0; padding: 0; }
 
.chat_wrap .header { font-size: 14px; padding: 15px 0; background: #F18C7E; color: white; text-align: center;  }
 
.chat_wrap .chat { padding-bottom: 80px; }
.chat_wrap .chat ul { width: 100%; list-style: none; }
.chat_wrap .chat ul li { width: 100%; }
.chat_wrap .chat ul li.left { text-align: left; }
.chat_wrap .chat ul li.right { text-align: right; }
 
.chat_wrap .chat ul li > div { font-size: 13px;  }
.chat_wrap .chat ul li > div.sender { margin: 10px 20px 0 20px; font-weight: bold; }
.chat_wrap .chat ul li > div.message { display: inline-block; word-break:break-all; margin: 5px 20px; max-width: 75%; border: 1px solid #888; padding: 10px; border-radius: 5px; background-color: #FCFCFC; color: #555; text-align: left; }
 
.chat_wrap .input-div { position: fixed; bottom: 0; width: 100%; background-color: #FFF; text-align: center; border-top: 1px solid #F18C7E; }
.chat_wrap .input-div > textarea { width: 100%; height: 80px; border: none; padding: 10px; }
 
.format { display: none; }
@import url("https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    text-align: center;
    padding: 100px;
    background: whitesmoke;
    display: table-cell;
}

button {
    margin: 20px;
}
.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green2 {
    background-color: #519d9e;
    color: #9dc8c8;
}

.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}

.w-btn-green2-outline {
    border: 3px solid #519d9e;
    color: darkgray;
}

.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green2-outline:hover {
    background-color: #519d9e;
    color: #9dc8c8;
}

.w-btn-brown {
    background-color: #ce6d39;
    color: #ffeee4;
}

.w-btn-brown-outline {
    border: 3px solid #ce6d39;
    color: #b8b8b8;
}

.w-btn-brown-outline:hover {
    background-color: #ce6d39;
    color: #ffeee4;
}

.w-btn-blue {
    background-color: #6aafe6;
    color: #d4dfe6;
}

.w-btn-pink {
    background-color: #f199bc;
    color: #d4dfe6;
}

.w-btn-gray {
    background-color: #a3a1a1;
    color: #e3dede;
}

.w-btn-red {
    background-color: #ff5f2e;
    color: #e1eef6;
}

.w-btn-skin {
    background-color: #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow {
    background-color: #fce205;
    color: #6e6e6e;
}

.w-btn-blue-outline {
    border: 3px solid #6aafe6;
    color: #6e6e6e;
}

.w-btn-pink-outline {
    border: 3px solid #f199bc;
    color: #6e6e6e;
}

.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}

.w-btn-red-outline {
    border: 3px solid #ff5f2e;
    color: #6e6e6e;
}

.w-btn-skin-outline {
    border: 3px solid #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow-outline {
    border: 3px solid #fce205;
    color: #6e6e6e;
}

.w-btn-blue-outline:hover {
    background-color: #6aafe6;
    color: #d4dfe6;
}

.w-btn-pink-outline:hover {
    background-color: #f199bc;
    color: #d4dfe6;
}

.w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}

.w-btn-red-outline:hover {
    background-color: #ff5f2e;
    color: #e1eef6;
}

.w-btn-skin-outline:hover {
    background-color: #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow-outline:hover {
    background-color: #fce205;
    color: #6e6e6e;
}

.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn:active {
    transform: scale(1.5);
}

.w-btn-outline:active {
    transform: scale(1.5);
}

.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}

.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra3 {
    background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
        background-position: 0% 50%;
    }
    100% {
        background-position: 100% 50%;
    }
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

.w-btn-neon2 {
    position: relative;
    border: none;
    min-width: 200px;
    min-height: 50px;
    background: linear-gradient(
        90deg,
        rgba(129, 230, 217, 1) 0%,
        rgba(79, 209, 197, 1) 100%
    );
    border-radius: 1000px;
    color: darkslategray;
    cursor: pointer;
    box-shadow: 12px 12px 24px rgba(79, 209, 197, 0.64);
    font-weight: 700;
    transition: 0.3s;
}

.w-btn-neon2:hover {
    transform: scale(1.2);
}

.w-btn-neon2:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid #00ffcb;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}
.chat_wrap{
 position: relative;
 left: 490px;
}
body {
	background : linear-gradient(to right ,#c31432,#240b36);
	}
</style>
<body>
	<div class="chat_wrap">
    <div class="header" style="text-align: center">
       SIMPLE CHAT
    </div>
    <div>
    <div>
        <button type="button" class="w-btn w-btn-gra2"  onclick="openSocket();">대화방 참여</button>
        <button type="button" class="w-btn w-btn-gra2"  onclick="closeSocket();">대회방 나가기</button>
        <button type="button" class="w-btn w-btn-gra2"  onclick="send();">메세지 전송</button>
        <button type="button" class="w-btn w-btn-gra2"  onclick="javascript:clearText();">대화내용 지우기</button>
        </div>
    	<br/><br/><br/>
    	<div>
  		메세지 입력 : 
        <input type="text" id="sender" value="${sessionScope.id}" style="display: none;">
        <input type="text" id="messageinput">
        </div>
      
        
    </div>
    <!-- Server responses get written here -->
    <div id="messages">
    </div>
   </div>
    <!-- websocket javascript -->
    <script type="text/javascript">
        var ws;
        var messages = document.getElementById("messages");
        
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED ){
                writeResponse("WebSocket is already opened.");
                return;
            }
            //웹소켓 객체 만드는 코드
            ws = new WebSocket("ws://localhost/echo.do");
            
            ws.onopen = function(event){
                if(event.data === undefined){
              		return;
                }
                writeResponse(event.data);
            };
            
            ws.onmessage = function(event){
                console.log('writeResponse');
                console.log(event.data)
                writeResponse(event.data);
            };
            
            ws.onclose = function(event){
                writeResponse("대화 종료");
            }
            
        }
        
        function send(){
            var text = document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            ws.send(text);
            text = "";
        }
        
        function closeSocket(){
            ws.close();
        }
        
        function writeResponse(text){
            messages.innerHTML += "<br/>"+text;
        }

        function clearText(){
            console.log(messages.parentNode);
            messages.parentNode.removeChild(messages)
      	}
        
  </script>
</body>
</html>