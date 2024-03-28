<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   /* all view */
    body {
        margin: 0;
        font-family: 'Newsreader';
        background-color: #FAFAF5;
        color: #426B1F;
      }

    /* 메인 컨테이너 */
    .main {
        padding: 20px;
        text-align: center;
    }

    /* 헤더 스타일 */
    .header {
        width: 100%;
        height: 91px;
        background: #FAFAF5;
        padding: 20px;
        box-sizing: border-box;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    /* 헤더 제목 스타일 */
    .header h1 {
        font-size: 60px;
        line-height: 100%;
        letter-spacing: -0.01em;
        margin: 0;
   }
   
    .h2, a {
     margin-top: 20px;
     display: block;
     text-align: center;
    }
    
    .a {
     text-decoration: none; /*링크의 밑줄 없애기*/
     color: #426B1F;
    }
    
    .hr {
     margin-top: 20px
    }
         
         /* 푸터 스타일 */
.footer{
	position:relative;
	width:100%;
	bottom: 0;
	background: #fafaf5;
	padding: 10px;
	
	text-align: center;
	color: #426B1F;
}
 </style>   
</head>
<body>
<header class="">
   
    <div class="main">
        <div class="brand">
        <h1 class="main-title" >BodyBalanceBook</h1>
    </div>
     </div>    
 </header>    

<h2>정보를 잘못 입력하셨습니다.</h2>
    <hr>
    
    <div align="center">
    <a href="finduseridpw">아이디 및 비밀번호 찾기로 이동</a>
</div>
		
 <footer class="footer">
    <p>I am footer</p>
    <p>Address: oo시 00구 00로</p>
    <p>Tel: xxx-xxxx-xxxx</p>
    <p>Email: xxxxx@gmail.com</p>
    <p>About us: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
</footer>       

</body>
</html>