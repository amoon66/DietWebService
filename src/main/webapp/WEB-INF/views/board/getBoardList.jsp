<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
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
.boardList h2{
	margin: 30px;
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
	margin: 0px, 205px;
}
.table-search{
	border-spacing: 20px;
	margin: 10px;
	text-align: left;
	width: 70%;
}
.table-list{
	border-spacing: 20px;
	margin: 10px;
	text-align: left;
	width: 70%; 
}
.table-pageNo{
	border-spacing: 20px;
	margin: 10px;
	text-align: left;
	width: 70%; 
	color: black;
}
.form{
	margin: 10px;
	text-align: left;
}
.table-search{
	text-align: left;
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
.inputText{
	display: inline-block;
	width: 100px;
	height: 20px;
	padding: 10px 10px;
	
	
	background-color: #426B1F;
	font-size: 16px;
	font-family:'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}
.a-button{
	display: flex;
	/* text-align: center; */
}
.button{
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
						<a href="getMyPage.do" class="link">
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
		<!-- daily요약 -->
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

			<div class="boardList" align="center">
				<h2>Blog List</h2>
			</div>
			<hr>
			<!--검색 시작  -->
			<form class="form" action="getBoardList.do" method="get">
				<table class="table-search" board="0" cellpadding="0" width="700" >
					<tr align="left">
						<td align="left">
							<select name="searchCondition">
								<!--下拉菜单  -->
								<c:forEach items="${ condition }" var="option">
									<option class="option" value="${ option.value }">${ option.key }
								</c:forEach>
							</select> 
							<input class="inputText" name="searchKeyword" type="text" /> 
							<input class="inputSubmit" type="submit" value="검색" />
						</td>
					</tr>
				</table>
			</form>
			<table class="table-list" border="0" cellpadding="0" width="700">
				<tr align="center">
					<!-- <th bgcolor="#FAFAF5" width="100">번호</th> -->
					<!-- <th bgcolor="#FAFAF5" width="200">게시판번호</th> -->
					<th bgcolor="#FAFAF5" width="600">제목</th>
					<th bgcolor="#FAFAF5" width="300">작성자</th>
					<th bgcolor="#FAFAF5" width="500">등록일</th>
					<th bgcolor="#FAFAF5" width="100">조회수</th>
				</tr>
				<c:forEach items="${ boardList }" var="board">
					<tr align="center">
					<%-- 	<td>${ board.seq }</td> --%>
						<td><a href="getBoard.do?seq=${ board.seq }">${ board.title }</a>
						</td>
						<td>${board.writer}</td>
						<td><fmt:formatDate value="${ board.regDate }"
								pattern="yyyy-MM-dd" /></td>
						<td>${board.cnt}</td>
					</tr>
				</c:forEach>
			</table>
			<c:if test="${not empty boardList}">
			    <table class="table-pageNo">
			        <tr align="center" height="20">
			            <td colspan="5">
			                <c:choose>
			                    <c:when test="${nowpage <= 1}" >
			                        [이전]&nbsp; 
			                    </c:when>
			                    <c:otherwise>
			                        <a href="./getBoardList.do?page=${nowpage - 1}">[이전]</a>&nbsp; 
			                    </c:otherwise>
			                </c:choose>
			
			                <c:forEach var="j" begin="${startpage}" end="${endpage}">
			                    <c:choose>
			                        <c:when test="${j == nowpage}">
			                            [<c:out value="${j}" />] 
			                        </c:when>
			                        <c:otherwise>
			                            <a href="./getBoardList.do?page=${j}">[<c:out value="${j}" />]</a>&nbsp; 
			                        </c:otherwise>
			                    </c:choose>
			                </c:forEach>
			
			                <c:choose>
			                    <c:when test="${nowpage >= maxpage}">
			                        [다음]
			                    </c:when>
			                    <c:otherwise>
			                        <a href="./getBoardList.do?page=${nowpage + 1}">[다음]</a>
			                    </c:otherwise>
			                </c:choose>
			           	 </td>
			           </tr>
			           <tr align="center" height="20">
				            <td align="center" colspan="5" >
				            	<a href="insertBoard.do"><button class="button">새글 등록</button></a>
				            </td>
			      		</tr>
			    </table>
		</c:if>
	
		<c:if test="${empty boardList}">
		    <table>
		        <tr align="center" valign="middle">
		            <td colspan="4">커뮤니티 게시판</td>
		        </tr>   
		        <tr>
		           <td align="right"><font size="4">등록된 글이 없습니다.</font></td>
		        </tr>
		    </table>
		</c:if>
	</div>
	<br> 
	<!-- footer 영역 -->
	 	<footer class="footer">
	 		<p>I am footer</p>
	 		<p>Adress:xxxxxxxxxxxxxxxx</p>
	 		<p>Tel:xxx-xxxx-xxxx</p>
	 		<p>Email:xxxxx@gmail.com</p>
	 		<p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
	 	</footer>
</body>