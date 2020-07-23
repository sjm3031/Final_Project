<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<script type="text/javascript">

window.onload = setInterval(function(){webOrder()},2000);

var x = document.getElementById("myAudio"); 

function playAudio() { 
	document.getElementById("myAudio").play(); 
} 

function pauseAudio() { 
	document.getElementById("myAudio").pause(); 
} 

function webOrder(){
	$.ajax(
	         {
	            url: './webOrderCheck.cafe',
	            type: 'get',
	            //data: {code : code},
	            dataType: "text",
	            success: function(data){
	              if(data == 'exit'){
	            	  document.getElementById("orderBtn").setAttribute("style","background-color: red;");

		          }else{
		        	  document.getElementById("orderBtn").setAttribute("style","background-color: blue;");


			      }
	            },
	            error: function(error){
	               console.log('error');
	            }
	         }
	      );
}

	

</script>


</head>
<body>
POS 화면입니다.


<br>
<br>

<audio controls id="myAudio" src="../resources/sound/alarm.mp3" muted></audio>

<button onclick="playAudio()" type="button">Play Audio</button>
<button onclick="pauseAudio()" type="button">Pause Audio</button> 


<audio id="myAudio2" muted="muted" autoplay="autoplay">
  <source src="../resources/sound/alarm.mp3" type="audio/ogg">

Your browser does not support the audio element.
</audio>

<div id="webOrder">
<button type="button" id="orderBtn" name="orderBtn"  onclick="window.open('orderlist.cafe','orderWeb','width=800,height=500')" >web주문</button> 
<a></a>
</div>

<br>
<br>

<br>
<br>
<button type="button" onclick="location.href='../main.cafe'">ERP</button> 화면으로가기 버튼
<br>
<br>
<button type="button" onclick="location.href='../index.cafe'">템플릿-main</button> 
<br>
<button type="button" onclick="location.href='../tem1.cafe'">템플릿-1</button> 
<br>
<button type="button" onclick="location.href='../tem2.cafe'">템플릿-2</button> 
<br>
<br>

<script type="text/javascript"> 
function play() { 
    var audio = document.getElementById('audio_play'); 
    if (audio.paused) { 
        audio.play(); 
    }else{ 
        audio.pause(); 
        audio.currentTime = 0 
    } 
} 
</script>





</body>
</html>