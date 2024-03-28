<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
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
    
    /* 메인 컨테이너 */
    .main {
     max-width: 1280px;
     margin: 0 auto;  /* 가운데 정렬*/
     padding: 20px;
     background-color: #FAFAF5;
     color: #426B1F;
     text-align: center
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
     color: #426B1F;
    }
   
    /* 헤더 제목 스타일 */
    .header h1 {
     font-size: 60px;
     line-height: 100%;
     letter-spacing: -0.01em;
     margin: 0;
    }
    
    .header h2 {
     font-size: 60px;
     font-family: 'Newsreader';
     line-height: 100%;
     letter-spacing: -0.01em;
     margin: 0;
     color: #426B1F;
    }
    
    .form {
     margin-top: 20px;
     text-align: center;
     display: flex;
     flex-direction: column;
     align-items: center;
    }

        /* 새로 추가된 스타일 */
        .label-container {
         margin-top: 20px;
            margin-bottom: 20px;
            text-align:center;
        }

        .input-container label {
        margin: 10px;
         font-size: 24px;
         font-weight:bold;
         color: #426B1F;
         display: block;
         margin-bottom: 10px; /*라벨 사이의 간격 조절*/
         font-size: 17px;
        }

        .button-container {
            margin-top: 20px;
            text-align: center; /* 버튼을 가운데 정렬합니다. */
        }

        .button-container input[type="submit"],
        .button-container input[type="button"] {
        color: white;
            background-color: #426B1F;
            padding: 10px 20px;
            background-color: #426B1F;
            color: white;
            border: 2px solid #426B1F; /* 테두리 선 추가 및 색상 설정 */
            border-radius: 5px;
            cursor: pointer;
        }
        
        .input-container input[type="reset"] {
    color: white;
    background-color: #426B1F; /* 취소 버튼의 배경색을 설정합니다. */
    padding: 10px 20px;
    border: 2px solid #426B1F; /* 취소 버튼의 테두리 색상을 설정합니다. */
    border-radius: 5px;
    cursor: pointer;
}

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
}
    </style>
</head>
<body>
 <div class="main">
      <div class="header">
         <h1>BodyBalanceBook</h1>
         <p>Logo or image</p>
      </div>
      <hr>
        <h2 class="h2" style="text-align: center; color: #426B1F;">아이디 및 비밀번호 찾기 </h2>
     <div class='container'>
         <form role="form" autocomplete="on" action="findusername" method="POST">
         <!--아이 -->
     <div class="label-container">    
         <label for="fullName">이름</label>
                <input type="text" name="fullName" id="fullName" required>
     </div>
     
     <div class="label-container">
         <label for="phoneNumber">전화번호</label>
         <input type="text" name="phoneNumber" id="phoneNumber" size="20" required>
    </div>
    <!--  확인 버 -->
    <div class="button-container">
        <input type="submit" value="확인">
        <input type="button" value="취소" onclick="location.href='login'">
    </div>
  </form>
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