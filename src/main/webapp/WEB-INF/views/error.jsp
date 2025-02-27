<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>Insert title here</title>

</head>
<style type="text/css">


@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

*{
 font-family: 'GmarketSansMedium';
}
  
body {
  background-color:#222;
  font-family: 'Josefin Sans', sans-serif;
  text-align:center;
}

.cup {
  width:76px;
  height:76px;
  background:#dedede;
  border-radius:50%;
  position:absolute;
  left:50%;
  margin-left:-38px;
  top:100px;
  box-shadow:-4px -1px 0 rgba(0,0,0,0.2);
}

.cup:after{
  content:"";
  width:66px;
  height:66px;
  position:absolute;
  border-radius:50%;
  background:linear-gradient(-45deg, #cbcbcb, #f2f2f2 );
  left:50%;
  margin-left:-33px;
  top:5px;
}

.coffee{
  width:47px;
  height:47px;
  background:#613317;
  /*background-image: linear-gradient(15deg, transparent 0px, transparent 29px, rgba(255,255,255,0.05) 29px, rgba(255,255,255,0.05) 47px);*/
  border-radius:50%;
  position:absolute;
  left:50%;
  margin-left:-25px;
  z-index:1;
  top:50%;
  margin-top:-26px;
  border:3px solid #e9e9e9;
  box-shadow:-3px 2px 0 rgba(0,0,0,0.1);
  transform:rotate(30deg);
  transition:transform 0.3s;
}

.coffee:after{ /*assa*/
 content:"";
  width:15px;
  height:8px;
  position:absolute;
  left:-19px;
  top:18px;
  background:linear-gradient(90deg, #d6d6d6, #aeaeae);
  box-shadow:0px 2px 0 rgba(0,0,0,0.2);
}

.coffee:before {
  content:"";
  width:47px;
  height:47px;
  background-image: radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 95%), radial-gradient(5% 9%, ellipse, rgba(255,255,255,0.1), transparent 5%), radial-gradient(0% 0%, ellipse, rgba(255,255,255,0.3), transparent 55%);
  background-image: -webkit-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 95%), -webkit-radial-gradient(5% 9%, ellipse, rgba(255,255,255,0.1), transparent 5%), -webkit-radial-gradient(0% 0%, ellipse, rgba(255,255,255,0.3), transparent 55%);
  background-image: -moz-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 95%), -moz-radial-gradient(5% 9%, ellipse, rgba(255,255,255,0.1), transparent 5%), -moz-radial-gradient(0% 0%, ellipse, rgba(255,255,255,0.3), transparent 55%);
  position:absolute;
  left:0;
  border-radius:50%;
}
.cup:hover .coffee {
  transform:rotate(15deg);
}

.smoke {
  width:70px;
  height:100px; 
  background:;
  position:absolute;
  left:50%;
  margin-left:-40px;
  top:43px;
  background-image: -webkit-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), -webkit-radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), -webkit-radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%), -webkit-radial-gradient(55% 35%, ellipse, rgba(255,255,255,0.2), transparent 15%);
  background-image: -moz-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), -moz-radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), -moz-radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%), -moz-radial-gradient(55% 35%, ellipse, rgba(255,255,255,0.2), transparent 15%);
  background-image: radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%), radial-gradient(55% 35%, ellipse, rgba(255,255,255,0.2), transparent 15%);
  animation:bk 11s infinite ;
}

.smoke:after {
  content:"";
  width:100px;
  height:100px; 
  background:;
  position:absolute;
  background-image: -webkit-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), -webkit-radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), -webkit-radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%);
  background-image: -moz-radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), -moz-radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), -moz-radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%);
  background-image: radial-gradient(75% 59%, ellipse, rgba(255,255,255,0.2), transparent 25%), radial-gradient(25% 70%, ellipse, rgba(255,255,255,0.2), transparent 15%), radial-gradient(35% 61%, ellipse, rgba(255,255,255,0.2), transparent 10%);
  animation:bk 2s 1s infinite;
}


@keyframes bk {
  0%{ background-position:0 0; opacity:0; }
  15%, 85% { opacity:1;}
  100%{ background-position:-20px -25px, -5px -25px, 0px -25px, 0px -25px; opacity:0;}
}

.txt{
  position:absolute;
  top:184px;
  width:150px;
  left:50%;
  margin-left:-75px;
}

.txt a{
  text-decoration:none;
  color:white;
}

.txt a:hover {
  text-decoration:underline;
}
</style>
<body>
  <a href="javascript:window.history.back();"><div class="cup">
  <div class="coffee"></div>
</div></a>
<a href="javascript:window.history.back();"><div class="smoke"></div></a>
<div style="color: white; font-size: 50px;">커피 제조중</div>
<div style="color: white; font-size: 20px; margin-top:120px;">돌아가기</div>

</body>
</html>