<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE 폼</title>
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
	 font-size: 90px;
	 line-height: 100%;
	
	 letter-spacing: -0.01em;
	 color: #426B1F;
     }
     
	/* 导航 */
    .nav{
	 display: flex;
	 justify-content: center;
	 position:relative;
	 top: 60px;
	 left: 50px;
	 background-color: #426B1F;
	 width: 70%;
	 height: 90px;
	 border-radius: 20px;
	
	 overflow: hidden;
	
	 box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    }

    .nav .menu{
	 list-style: none;
	 display: flex;
	 justify-content: flex-end;
    }
    
    .nav .menu .item{
	 position: relative;
	 cursor: pointer;
	 padding: 0 10px;
	 width: 100px;
	 height: 100%;
	 transition: all 0.4s ease;
    }

    .nav .menu .item:hover{
	 background-color: #94A963;
    }
    
    .nav .menu .item .link{
	 display: block;
	 position: relative;
	 width: 100%;
	 height: 100px;
	 color: white;
	
	 text-decoration: none;
	
	 overflow: hidden;
	 transition: all 0.4s ease;
    }
    
    .nav .menu .item .link .fa{
	 position: absolute;
	 top: 50%;
	 left: 0;
	 transform: translateY(-50%);
	 width: 100%; 
	 text-align: center;
	 transition: all 0.4s ease;
    }
    
    .nav .menu .item .link span{
	 position: absolute;
	 width: 100%;
	 bottom: -50%;
	 left: 0;
	 text-align: center;
	 opacity: 0;
	 transition: all 0.4s ease;
    }
    
    .nav .menu .item:hover .link span{
	 opacity: 1;
	 bottom: 18px;
    }
    
    .nav .menu .item:hover .link .fa{
	 transform: translateY(-95%);
    }

    .header {
	 background: #fafaf5;
	 padding: 20px;
	 text-align: center;
    } 
    
 .rside {
	box-sizing: border-box;
	float: right;
	height: 600px;
	left: 1139px;
	right: 43px;
	top: 300px;
	margin: 10px;
	padding: 5px;
	background: #FAFAF5;
	border: 2px solid #E6E6E6;
	border-radius: 24px;
	text-align: center;
}
.rside h2{
	display: block;
    font-size: 1.5em;
   	margin: 30px;
    font-weight: bold;
}
.rside p{
	text-align: left;
	margin: 30px;
}
.result{
	display:inline-block;
	background-color: #426b1f;
	border-radius: 20px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
	margin-top: 20%;
	text-align: center;
}
.result h4{
	color: white;
	margin: 10px;
}
.result h2{
	color: white;
}
    .container {
	 height:900px;
	 margin: 0px auto;
    }

    .rside,.insertBoard{
	 margin-top: 50px;
	 padding: 10px;
    }
    
    .insertBoard h2{
	 margin: 30px;
    }
    
    .form {
      margin: 20px;
      width: 100%;
     }

    .table {
     border-spacing: 20px;
     text-align: left;
     width: 70%; 
    }

    #main a {
     margin: 20px;
     color: #fafaf5;
     width:90px;
     height: 30px;
     background-color: #426B1F;
    }

    .tdSubmit a button {
     display: inline-block;
     width: 100px;
     height: 40px;
     padding: 10px;
     background-color: #426B1F;
     font-size: 16px;
     font-family: 'Spartan';
     color: #fafaf5;
     border-radius: 5px;
     border: 1px;
    }

    .inputSubmit {
     display: inline-block;
     width: 100px;
     height: 40px;
     padding: 10px 10px;
     background-color: #426B1F;
     font-size: 16px;
     font-family: 'Spartan';
     color: #fafaf5;
     border-radius: 5px;
     border: 1px;
    }
    
    .footer {
	 position: relative;
	 width: 100%;
	 bottom: 0;
	 background: #fafaf5;
	 padding: 10px;

	 text-align: center;
	 color: #426B1F;
    }
    
    /* 마이페이지 작업물 */
    .page-title {
    text-align: center; /* 제목을 가운데 정렬합니다. */
}
    
    .container {
     background-color: #fff;
            border-radius: 10px;
            padding: 20px;
        }
    
    /* 폼 스타일 */
        form {
            max-width: 600px;
            margin: 0 auto;
        }
        
        .form-group {
            margin-bottom: 20px;
            margin-top: 20px;
        }
        
        .form-group label {
            display: inline-block;
            width: 150px;
            text-align: right;
            margin-right: 15px;
            color: #426B1F;
            font-size: 25px;
        }
        
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 300px;
            padding: 10px;
            border: 1px solid #426B1F;
            border-radius: 5px;
            font-size: 25px;
        }
        
        .form-group input[type="submit"],
        .form-group input[type="button"] {
         padding: 10px 20px;
         background-color: #426B1F;
         color: #fff;
         border: none;
         border-radius: 5px;
         cursor: pointer;
         display: block; /* 인라인 요소를 블록 요소로 변경 */
         margin: 0 auto; /* 가운데 정렬 */
         font-size: 25px;
        }
        
        .form-group input[type="submit"]:hover,
        .form-group input[type="button"]:hover {
            background-color: #94A963;
        }
h1{
	margin: 30px;
}
hr{
	margin: 30px;
}
.cancel_button{
	position: relative;
	top: 20px;
	left: -210px;
}
.member_cancel{
	position: relative;
	left: 100px;
}
   </style>
</head>
<body>
<script>
   function cancelUpdate(){
      window.location.href = '/home'
   }
   function deleteMember(){
      window.location.href = '/deleteMember'
   }
</script>
	<div class="header">
			<a href="home"><h1>DIET</h1></a>
			<nav class="nav">
				<ul class="menu">
					<li class="item">
						<a href="insertDailyFood.do" class="link">
							<i class="fa fa-cutlery" aria-hidden="true"></i>
							<span>식단</span>
						</a>
					</li>
						<li class="item">
						<a href="getDailyWorkout.do" class="link">
							<i class="fa fa-bicycle" aria-hidden="true"></i>
							<span>운동</span>
						</a>
					</li>
					<li class="item">
						<a href="insertDailyDiary.do" class="link">
							<i class="fa fa-book" aria-hidden="true"></i>
							<span>일기</span>
						</a>
					</li>
					<li class="item">
						<a href="insertDailyWeight.do" class="link">
							<i class="fa fa-balance-scale" aria-hidden="true"></i>
							<span>체중</span>
						</a>
					</li>
					<li class="item">
						<a href="getBoardList.do" class="link">
							<i class="fa fa-comments-o" aria-hidden="true"></i>
							<span>커뮤니티</span>
						</a>
					</li>
					<li class="item">
						<a href="getMypage.do" class="link">
							<i class="fa fa-user-o" aria-hidden="true"></i>
							<span>My Page</span>
						</a>
					</li>
					<li class="item">
						<a href="logout.me" class="link">
							<i class="fa fa-sign-out" aria-hidden="true"></i>
							<span>Log-out</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
	 	
	 	<div class="container">
		<!-- 요약 영역 -->
	 		<div class="rside">
				<h2>Daily 요약</h2>
				<p>일일 권장량：     2200kal</p>
				<p>섭취 갈로리:     1500kal</p>
				<p>남은 칼로리:     1000kal</p>
				<div class="result">
					<h4>Toady Is</h4>
					<h2>성공!</h2>
				</div>
			</div>
   <div class="container">
    <h1 class="page-title" style="color: #426B1F; font-size: 30px;">마이 페이지</h1>
    <hr>
    
        <form id="myPageForm" action="/updateMypage" method="post">
            <div class="form-group">
                <label for="name">이름:</label>
                <input type="text" id="name" name="name" value="${mymember.name}" required>
                <input name="id" type="hidden" value="${mymember.id}">
            </div>
            <div class="form-group">
                <label for="phone">전화번호:</label>
                <input type="text" id="phone" name="phone" value="${mymember.phone}" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" value="${mymember.password}" required>
            </div>
            <div class="form-group">
                <label for="tall">키:</label>
                <input type="text" id="tall" name="tall" value="${mymember.tall}" required>
            </div>
            <div class="form-group">
                <label for="nickname">닉네임:</label>
                <input type="text" id="nickname" name="nickname" value="${mymember.nickname}" required>
            </div>
            <div class="form-group" style="display: flex; justify-content: center;">
 
            <div style="margin-top: 20px; text-align: center;">
    <!-- 위쪽에 일정한 간격을 두기 위한 스타일 -->
			</div>
			<div class="form-group" style="display: flex; justify-content: center;">
			    <!-- 확인및수정과 취소 버튼을 동일한 줄에 배치 -->
			    <div style="margin-right: 10px;">
			        <input type="submit" value="확인 및 수정">
			    </div>
			
			</div>
			<div class="form-group" style="text-align: center;">
			    <!-- 회원탈퇴 버튼을 중간에 위치시키기 위한 스타일 -->
			    <input class="member_cancel" type="button" value="회원탈퇴" onclick="deleteMember()">
			</div>
        </form>
	    <div>
	        <input class="cancel_button" type="button" value="취소" onclick="cancelUpdate()">
	    </div>
    </div>
    </div>
</body>
</html>
    <!-- footer 영역 -->
	 	<footer class="footer">
	 		<p>I am footer</p>
	 		<p>Adress:xxxxxxxxxxxxxxxx</p>
	 		<p>Tel:xxx-xxxx-xxxx</p>
	 		<p>Email:xxxxx@gmail.com</p>
	 		<p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
	 	</footer>   
</body>
</html>