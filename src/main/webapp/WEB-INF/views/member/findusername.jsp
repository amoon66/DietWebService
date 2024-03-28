<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 성공 화면 </title>
<style type="text/css">
   /* all view */
    * {
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
   } 
   
    .body {
    width: 1280;
    height: 1025px;
   }

    /* 헤더 스타일 */
    .header{
     display: flex;
	 margin-bottom: 50px;
	 width: 100%;
	 height: 150px;
	 left: 0px;
	 right: 0px;
	 top: 0px;
	 background: #FAFAF5;
     }
     
    .header h1{
	 display: flex;
	 margin: 50px;
	 width: 77px;
	 height: 32px;
	 left: 96px;
	
	 font-family: 'Newsreader';
	 font-style: normal;
	 font-size: 45px;
	 line-height: 100%;
	
	 letter-spacing: -0.01em;
	 color: #426B1F;
     }
    
    .header h2 {
     font-size: 60px;
     font-family: 'Newsreader';
     line-height: 100%;
     letter-spacing: -0.01em;
     margin: 0;
     color: #426B1F;
    }
    
    /* 폼 스타일 */
    .form {
     margin-top: 20px;
     text-align: center;
     display: flex;
     flex-direction: column;
     align-items: center;
    }
    
    .centered-content {
        text-align: center;
        margin-top: 20px; /* 필요에 따라 상단 여백 조절 */
    }

    p {
        font-size: 25px; /* 글꼴 크기를 조절합니다. */
        font-weight: bold; /* 글꼴을 굵게 표시합니다. */
        color: #426B1F; /* 텍스트 색상을 변경합니다. */
        margin-bottom: 10px; /* 단락 사이의 간격을 조절합니다. */
    }

    a {
        font-size: 25px; /* 링크 텍스트의 크기를 크게 조절합니다. */
        color: #426B1F; /* 링크 텍스트의 색상을 변경합니다. */
        text-decoration: none; /* 링크에 밑줄을 제거합니다. */
    }

    a:hover {
        text-decoration: underline; /* 링크에 마우스를 올렸을 때 밑줄을 표시합니다. */
    }
        
    /* 푸터 스타일 */
    .footer {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background: #fafaf5;
    padding: 10px;
    text-align: center;
    color: #426B1F;
}

.footer-text {
    display: inline-block;

    
</style>
</head>

<body>
<div class="main">
      <div class="header">
         <h1>BodyBalanceBook</h1>
      </div>

<h2>아이디 및 비밀번호 찾기 결과</h2>
    <hr>
    
    <form role = "form" autocomplete = "on" action="findusername" method="POST">
        <table border="1">
        
 <div class="centered-content">
    <p>찾은 아이디: ${member.id}</p>
    <p>찾은 비밀번호: ${member.password}</p>

    <a href="login">로그인 페이지로 이동</a>
</div>
		

</form>		
<footer class="footer">
    <p>I am footer</p>
    <p>Address: oo시 00구 00로</p>
    <p>Tel: xxx-xxxx-xxxx</p>
    <p>Email: xxxxx@gmail.com</p>
    <p>About us: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
</footer>

 
</body>
</html>