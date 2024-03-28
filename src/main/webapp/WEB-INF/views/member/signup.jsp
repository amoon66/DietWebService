<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<!-- jQuery 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript">
    $(document).ready(function () {
        // 아이디 중복 확인 체크박스 클릭 이벤트
        $('#checkDuplicateId').click(function () {
            if (this.checked) {
                // 체크되었을 때 중복 확인
                checkDuplicateId();
                // 아이디 중복 확인이 체크되면 서브밋 버튼 활성화
                $('#submitBtn').prop('disabled', false);
            } else {
                // 체크 해제되었을 때 메시지 초기화
                $('#duplicateMessage').text('');
             // 아이디 중복 확인이 체크 해제되면 서브밋 버튼 비활성화
                $('#submitBtn').prop('disabled', true);
            }
        });
    });

    function checkDuplicateId() {
        var id = $('#id').val();

        // 입력된 아이디가 없으면 중복 확인을 하지 않음
        if (!id) {
        	console.log('입력된 아이디가 없습니다.')
            $('#duplicateMessage').text('');
            return;
        }

        	console.log('에이젝스 실행.')
        // 아이디 중복 확인 요청
        $.ajax({
            type: 'POST',
            url: '/checkDuplicateId',
            contentType: 'application/json',
            data: JSON.stringify({ 'id': id }),
            success: function (data) {
            	console.log('서버 응답 데이터:', data);
            	
                if (data) {
                    $('#duplicateMessage').text('이미 사용 중인 아이디입니다.');
                    $('#submitBtn').prop('disabled', true);
                } else {
                    $('#duplicateMessage').text('사용 가능한 아이디입니다.');
                    $('#submitBtn').prop('disabled', false);
                }
            },
            error: function () {
                $('#duplicateMessage').text('서버 오류가 발생했습니다.');
            }
        });
    }
</script>
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
    
    .header h2 {
     font-size: 100px;
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

    /* 라벨 스타일 */
    .label {
     margin: 10px;
     margin-bottom: 10px;
     height: 30px;
     width: 150px;
     display: inline-block;
     text-align: center;
     margin-right: 15px;
     border: 1px solid #426B1F;
     line-height: 30px;
     font-size: 25px;
    }
    
    .label + .label {
     margin-top: 10px; /* 원하는 간격 값 */
    }
 
    /* 입력 필드 스타일 */
    .input[type="text"],
    .input[type="password"],
    .input[type="submit"],
    .input[type="button"],
    .input[type="checkbox"] {
     width: 300px;
     padding: 10px;
     margin-bottom: 10px;
     border-radius: 5px;
     border: 1px solid #426B1F;
     height: 70px; /* 높이 값을 40px로 수정 */
     color: #426B1F;
     font-size: 30px;
     }

    /* 제출 버튼 스타일 */
    .input[type="submit"],
    .input[type="button"] {
     wudth: 300px;
     height: 25px;
     padding: 10px 20px;
     background-color: #426B1F;
     color: #fff;
     border: none;
     border-redius: 5px;
     cursor: pointer;
     display: block;
     margin: 0 auto;
     font-size: 25px;
     margin-top: 20px;
    }

    /* 마우스 호버 시 스타일 */
    .input[type="submit"]:hover,
    .input[type="button"]:hover {
        background-color: #94A963;
    }
    
    /* 중복 메시지 스타일 */
    #duplicateMessage {
        color: #426B1F;
        font-weight: bold;
        margin-top: 10px;
        display: block;
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
}
.check_id{
 position: relative;
 left: 250px;
 top: -50px;
}
</style>

</head>
<body>
   <!-- 헤더 섹션 -->
   <div class="header">
   <!-- 헤더 섹션 -->
  	 <h1>DIET</h1>
	</div>
 
        <!-- 회원가입 폼 -->
        <h2 style="text-align: center; color: #426B1F;">회원가입</h2>
        <form action="/signup" method="post" class="form"> 
         <div class="form" style="margin: 0 auto; width: 60%; display: flex; 
	         flex-direction: column; align-items: center;">
	        <!-- 회원 아이디 -->
	        <div style="margin-bottom: 10px; display: flex; align-items: center;">   
	            <label for="id" class="label" style="color: #426B1F;">회원 아이디</label>
	            <input type="text" name="id" value="${member.id}" id="id">
	        </div> 
	            <!-- 아이디 중복확인  -->
	           <table class="check_id">
	          	 <tr>
		            <td><input type="checkbox" name="checkDuplicateId" id="checkDuplicateId"></td>
		            <td><label for="checkDuplicateId" onclick="checkDuplicateId()" style="color: #426B1F;">중복 체크</label></td>
		            <td><span id="duplicateMessage" style="color: red;"></span></td>
		           </tr>
	            </table>
        </div>
        
        <!-- 비밀번호 -->
             <div style="margin-bottom: 10px; display: flex; align-items: center; ">
	            <label for="password" class="label" style="color: #426B1F;">비밀번호</label>
	            <input type="password" name="password" value="${member.password}">
        	</div>

                    
     <!-- 이름 -->
     <div style="margin-bottom: 10px; display: flex; align-items: center; ">
          <label for="name" class="label" style="color: #426B1F;">이름</label>
          <input type="text" name="name" value="${member.name}">
     </div>
            
      <!-- 폰번호 -->
      <div style="margin-bottom: 10px; display: flex; align-items: center; ">
          <label for="phone" class="label" style="color: #426B1F;">휴대전화번호</label>
          <input type="text" name="phone" value="${member.phone}">
      </div>
      
     <!-- 키 -->
     <div style="margin-bottom: 10px; display: flex; align-items: center; ">
          <label for="tall" class="label" style="color: #426B1F;">키</label>
          <input type="text" name="tall" value="${member.tall}" placeholder="숫자만 입력하세요" pattern="[0-9]+" title="숫자만 입력 가능합니다">
     </div>

     <!-- 닉네임 -->
     <div style="margin-bottom: 10px; display: flex; align-items: center;">
          <label for="nickname" class="label" style="color: #426B1F;">닉네임</label>
          <input type="text" name="nickname" value="${member.nickname}">
     </div>
        
     <!-- 제출 및 취소 버튼 -->
     <div style="text-align: center;">
          <input type="submit" id="submitBtn" style="background-color: #426B1F; color: #FFFFFF;" value="회원가입">
          <input type="button" style="background-color: #426B1F; color: #FFFFFF;" value="취소" onclick="location.href='/'">
    </div>
</form>
   <footer class="footer">
	    <p>I am footer</p>
	    <p>Adress:oo시00구00로</p>
	    <p>Tel:xxx-xxxx-xxxx</p>
	    <p>Email:xxxxx@gmail.com</p>
	    <p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
	</footer>
</body>
</html>