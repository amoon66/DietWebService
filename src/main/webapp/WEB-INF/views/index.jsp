<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>초기화면</title>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">

* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
}
      body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;  /*글자 안보여주는거 */
      background-image: url('../greensalad.jpg'); /*이미지 파일경로*/
      background-size: cover; /*전체 */
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh; /* 화면 전체 높이만큼 body 높이 설정 */
      display: flex; /* body를 flex container로 설정 */
      flex-direction: column; /* 자식 요소들을 세로로 나열 */
      align-items: center; /* 세로 중앙 정렬 */
      }
     
    .brand {
     display: flex;
     align-items: flex-start; /*세로 중앙 정렬*/
     margin: 50px; /*기본 마진 제*/
     font-size: 80px;
     color: #fafaf5;
    }
  
   .login-section {
    margin: 50px;
    left: 100px;
    top: 2px;
         
    font-family: 'Newsreader';
    font-style: normal;
    font-size: 25px;
    line-height: 100%;
    letter-spacing: -0.01em;
    color: #426B1F;
         
    display: inline-block;
    vertical-align:top;
    text-align: center;
    background-color: #fafaf5;
    width: 500px;
    height: 600px;
    border-radius:20px;
    opacity:0.8;
    align-items: center;
    justify-content: flex-start;
    flex-direction: row;
    padding-left: 20px;
   }
.login-section h1{
	font-family: malgum fothic;
	position: relative;
	top: 150px;
}

button {
	background-color: #426B1F;
	width: 400px;
	height: 150px;
	border: none;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
	border-radius:20px;
	
	font-size: 100px;
 	font-weight: 600;
 	font-family: malgum fothic;
 	text-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
 	text-align: center;
 	color: white;
 	
 	position: relative;
 	top: 250px;
 	left: -10px;
}
   
   
</style>
</head>
<body>
<header class="">
   
    <div class="brand">
        <h1 class="main-title" >DIET</h1>
    </div>    
     
        <!-- 로그인 링크 -->
     <div class="login-section">
     	<h1>Welcome Back!</h1>
        <a href="login" class="login-link"><button><i class="fa fa-sign-in" aria-hidden="true"></i></button></a>
     </div>  
    
</header>
</body>
</html>