<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
   /* all view */
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
} 
  
body {
	width:1280px;
	height:1024px;
}
.container {
	height:100%;
	margin: 0px, 205px;
}   
.header{
	display: flex;
	margin-bottom: 50px;
	width: 100%;
	height: 200px;
	left: 0px;
	right: 0px;
	top: 0px;
	
	background: #FAFAF5;
}
   
    /* 헤더 제목 스타일 */
  .header h1{
	display: flex;
	margin: 50px;
	font-family: 'Newsreader';
	font-style: normal;
	font-size: 90px;
	line-height: 100%;
	text-align: left;
	
	width: 77px;
	height: 32px;
	left: 96px;
	
	letter-spacing: -0.01em;
	color: #426B1F;
}


   .loginBox {
    width: 40%;
    font-size: 25px;
    font-weight: bold;
    /* text-align: center; */
    position: relative;
    left: 70px;
    }
    .page-title{
    text-align: center;
    margin: 30px;
    }

   .loginBox input[type="text"],
   .loginBox input[type="password"] {
    width: 270px;
    height: 55px;
    font-size: 20px;
    padding: 10px;
    font-weight: bold;
    color: #426B1F;
    border: 2px solid #426B1F;
    margin: 30px;
    }

   .inputSubmit {
    display: inline-block;
    color: white;
    font-size: 17px;
    font-weight: bold;
    text-align: center;
    margin: 10px;
    padding: 15px 30px;
    background-color: #426B1F;
    text-decoration: none; 
    border: 2px solid #426B1F;
    border-radius: 5px;
    cursor: pointer;
   }

  .button-container {
   display: flex;
   align-items: center;
   justify-content: center;
   margin-top: 30px;
  }

  .button-container a.button {
   display: inline-block;
   color: white;
   font-size: 17px;
   font-weight: bold;
   text-align: center;
   margin: 10px;
   padding: 15px 30px;
   background-color: #426B1F;
   text-decoration: none;
   border: 2px solid #426B1F;
   border-radius: 5px;
   cursor: pointer;
  }

 .check {
  color: red;
 }

.footer{
	position:relative;
	width:100%;
	bottom: 0;
	background: #fafaf5;
	margin-top:30px;
	padding: 10px;
	
	text-align: center;
	color: #426B1F;
}
.login_button{
	position: relative;
	left: 100px;
}
</style>

</head>
<body>

<div class="header">
   <!-- 헤더 섹션 -->
   <h1>DIET</h1>
    <!-- Logo or image -->
</div>

 <!-- 로그인 폼  -->
<div class="container">
    <h1 class="page-title" style="color: #426B1F; font-size: 30px;">LOGIN</h1> 
    <form action="login.me" method="post">
        <table class="loginBox" cellpadding="1" cellspacing="1" align="center" bgcolor="white">
            <tr>
                <td bgcolor="white">
                <input type="text" name="id" align ="center" placeholder="아이디를 입력하세요"></td>
            </tr>
            <tr>
                <td bgcolor="white">
                <input type="password" name="password" align ="center" placeholder="비밀번호를 입력하세요"></td>
            </tr>
            <tr>
                <td class="login_button" colspan="2"  bgcolor="white">
                    <input  type="submit" class="inputSubmit" value="로그인">
                </td>
            </tr>
        </table>
    </form>

    <div class="button-container">
        <a href="/signup.me" class="button" onclick="redirectToSignup()">회원가입</a>
        <a href="finduseridpw" class="button" onclick="redirectToFindIdPw()">아이디 및 비밀번호 찾기</a>
    </div>
</div>

<footer class="footer">
    <p>I am footer</p>
    <p>Adress:oo시00구00로</p>
    <p>Tel:xxx-xxxx-xxxx</p>
    <p>Email:xxxxx@gmail.com</p>
    <p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
</footer>
</body>
</html>
   
        