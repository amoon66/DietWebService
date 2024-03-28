<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 페이지</title>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
 	$(document).ready(function() {
		let updateFailed = "${updateFailed}";

		if (updateFailed) {
			alert("글 작성자가 아닙니다");
		} else {
		}
	});
 </script>
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
	height:auto;
	margin: 0px, 205px;
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
.getBoard h2{
	font-family: 'Newsreader';
	margin: 30px;
}
.getBoard a button{
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px;
	
	position: relative;
	top: -79px;
	left: 187px;
	

	background-color: #426B1F;
	font-size: 16px;
	font-family:'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}
.form{
	margin: 20px;
	width: 100%;
}
.table{
	border-spacing: 20px;
	text-align: left;
	width: 70%; 
}
.content{
	margin: 0px,205px;
}
.rside,.getBoard{
	margin-top: 50px;
	padding: 10px;
}
.tdSubmit a button{
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px;
	

	background-color: #426B1F;
	font-size: 16px;
	font-family:'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}
.inputSubmit{
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px 10px;
	
	
	background-color: #426B1F;
	font-size: 16px;
	font-family:'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}
.table-insertComment{
	border-spacing: 20px;
	text-align: left;
	width: 90%; 
}
.commentInfo{
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px 10px;
	
	background-color: #426B1F;
	font-size: 16px;
	font-family:'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}
.commentInfo{
	position: relative;
	left: 80px;
}
.inputText{
	display: inline-block;
}
.comment{
	border-spacing: 20px;
	text-align: left;
	width: 80%; 
}
.comment a{
	display: inline-block;
	line-height:10px;
	text-align:center;
	width: 80px;
/* 	height: 30px; */
	padding: 10px;
	
	background-color: #fafaf5;
	font-size: 14px;
	font-family:'Spartan';
	color: black;
	border-radius: 5px;
	border: 1px;
	
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
}
.table-commentButton{
	border-spacing: 20px;
	text-align: left;
	width: 80%;
}
.commentButton{
	display: inline-block;
	line-height:10px;
	text-align:center;
	width: 100px;
/* 	height: 30px; */
	padding: 10px;
	
	background-color: #fafaf5;
	font-size: 14px;
	font-family:'Spartan';
	color: black;
	border-radius: 5px;
	border: 1px;
	
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
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
	</style>
</head>
<body>
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
	 		<!--글 상세 영역 -->
		 	<div class="getBoard" align="center">
		 		<h2>Read blog</h2>
		 		<hr>
		 		<form class="form" action="getUpdateBoard.do" method="post">
		 			<input name="seq" type="hidden" value="${board.seq}">
		 			<input name="writer" type="hidden" value="${board.writer}">
		 			<table class="table" border="0" cellpadding="0" cellspacing="0">
		 				<tr>
		 					<td bgcolor="FAFAF5" width="70" align="center">제  목</td>
		 					<td align="left">
		 						<input type="title" type="text" value="${board.title}" readonly="readonly"><!--제목 입력 공간 -->
		 					</td>
		 				</tr>
		 				<tr>
		 					<td bgcolor="FAFAF5" align="center">등록일</td>
		 					<td align="left">${board.regDate}</td><!--登陆日期自动生成-->
		 					
		 					<td bgcolor="FAFAF5" align="center">조회수</td>
		 					<td align="left">${board.cnt}</td>
		 				</tr>
		 				<tr>
		 					<td bgcolor="FAFAF5" align="center">내  용</td>
		 					<td align="left" colspan="5">
		 						<textarea name="content"rows="20" cols="80" readonly="readonly">${board.content}</textarea><!-- 내용 입력 공간 -->
		 					</td>
		 				</tr>
		 		
		 				<tr align="center">
		 						<td class="tdSubmit" align="center" colspan="6">
		 							<input class="inputSubmit" type="submit" value="글 수정"/>
		 							
		 						</td>
		 					</tr>
		 			</table>
		 		</form>
		 		<a href="deleteBoard.do?seq=${board.seq}&writer=${board.writer}">
					<button class="button">삭   제</button>
				</a>
		 		<div>

		 		<!-- 기존 댓글 표시 -->
				<c:if test="${not empty comments}">
				    <c:forEach var="comment" items="${comments}">
				        <div class="comment" style="border: 0px solid #ccc; padding: 10px; margin-bottom: 10px;">
				
				            <!-- Java 코드를 JSTL 내에서 처리 -->
				            <c:set var="repLev" value="${comment.rep_lev}" />
				            <c:set var="spaces" value="&nbsp;" />
				            <c:forEach begin="1" end="${repLev * 10}" varStatus="loop">
				                <c:set var="spaces" value="${spaces}&nbsp;" />
				            </c:forEach>
				
				            <p style="display: inline-block; margin-right: 10px;">${spaces}▶</p>
				            <p style="display: inline-block; margin-right: 10px;">${comment.writer}</p>
				            <p style="display: inline-block; margin-right: 10px;">${comment.content}</p>
				            <p style="display: inline-block; margin-right: 10px;">${comment.regDate}</p>
				            <a href="deleteComment.do?seq=${comment.seq}&writer=${comment.writer}&boardSeq=${board.seq}">댓글 삭제</a>
				
				            <!-- 대댓글 등록 버튼 -->
				            <c:if test="${comment.rep_lev eq 0}">
				                <button class="commentButton"  type="button" onclick="toggleReplyForm('${comment.seq}')"><p>대댓글 등록</p></button>
				            </c:if>
				
				            <!-- 대댓글 등록양식 -->
				            <form id="replyForm${comment.seq}" class="writeReply" action="addReply.do" method="post" style="display: none;">
				                <input type="hidden" name="boardSeq" value="${board.seq}">
				                <input type="hidden" name="rep_ref" value="${comment.rep_ref}">
				                <input type="hidden" name="rep_lev" value="${comment.rep_lev}">
				                <input type="hidden" name="rep_seq" value="${comment.rep_seq}">
				                <!-- 댓글 내용 -->
				                <table class="table-commentButton">
					                <tr>
						                <td><label for="commentContent">댓글 내용:</label></td>
						                <td><textarea id="commentContent" name="content" rows="3" cols="30" required></textarea></td>					                
					                </tr>
						                <!-- 등록 버튼 -->
					                <tr align="center">
										<td colspan="2" ><input class="commentButton" type="submit" value="댓글 등록"></td>				                
					                </tr>
				                </table>
				            </form>
				        </div>
				    </c:forEach>
				</c:if>
				<script>
				    function toggleReplyForm(seq) {
				        var replyForm = document.getElementById('replyForm' + seq);
				        replyForm.style.display = (replyForm.style.display === 'none' || replyForm.style.display === '') ? 'block' : 'none';
				    }
				</script>
				<!-- 댓글 등록 양식 -->
			    <form class="writeComment" action="addComment.do" method="post">
			        <input type="hidden" name="boardSeq" value="${board.seq}">
			        <table class="table-insertComment"  border="0" cellpadding="0" cellspacing="0">
				        <!-- 댓글 내용 -->
				        <tr>
					        <td bgcolor="FAFAF5" width="100" align="center" ><label for="commentContent">댓글 내용:</label></td>
					        <td align="left" colspan="5" >
					        	<textarea id="commentContent" name="content" rows="10" cols="80" required></textarea>
				        	</td>
				        </tr>
				        <!-- 등록 버튼 -->
				        <tr>
				        	<td align="center" colspan="2"><input class="commentInfo" type="submit" value="댓글 등록"></td>
			  			</tr>
		    		</table>
		      </form>

				</div>
		 	</div>	
		 </div>
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