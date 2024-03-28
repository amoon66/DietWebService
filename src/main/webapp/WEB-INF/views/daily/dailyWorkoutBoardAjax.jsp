<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>오늘의 식단</title>
<link
		href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
		/* all view */
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
}

body {
	width: 1280px;
	height: 1024px;
}

.header {
	display: flex;
	margin-bottom: 50px;
	width: 100%;
	height: 150px;
	left: 0px;
	right: 0px;
	top: 0px;
	background: #FAFAF5;
}

.header h1 {
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
.nav {
	display: flex;
	justify-content: center;
	position: relative;
	top: 60px;
	left: 50px;
	background-color: #426B1F;
	width: 70%;
	height: 90px;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
}

.nav .menu {
	list-style: none;
	display: flex;
	justify-content: flex-end;
}

.nav .menu .item {
	position: relative;
	cursor: pointer;
	padding: 0 10px;
	width: 100px;
	height: 100%;
	transition: all 0.4s ease;
}

.nav .menu .item:hover {
	background-color: #94A963;
}

.nav .menu .item .link {
	display: block;
	position: relative;
	width: 100%;
	height: 100px;
	color: white;
	text-decoration: none;
	overflow: hidden;
	transition: all 0.4s ease;
}

.nav .menu .item .link .fa {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translateY(-50%);
	width: 100%;
	text-align: center;
	transition: all 0.4s ease;
}

.nav .menu .item .link span {
	position: absolute;
	width: 100%;
	bottom: -50%;
	left: 0;
	text-align: center;
	opacity: 0;
	transition: all 0.4s ease;
}

.nav .menu .item:hover .link span {
	opacity: 1;
	bottom: 18px;
}

.nav .menu .item:hover .link .fa {
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
	height: 900px;
	margin: 0px auto;
	display: flex;
}

.rside, .insertBoard {
	margin-top: 50px;
	padding: 10px;
}

.insertBoard h2 {
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
	width: 90px;
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

.insertWorkout {
	margin-top: 50px;
	border: 2px solid #426B1F;
	border-radius: 10px;
	background-color: #FAFAF5;
	height: 600px;
	margin-left: 10px;
	flex: 0 0 70%;
	border-radius: 24px;
	overflow: hidden;
}

.insertWorkout > div{
	padding: 0 20px;
	box-sizing: border-box;
}

.search-box{
	height: 60px;
	width: 100%;
	line-height: 60px;
	box-shadow: 0 0 30px 0 gray;
}

#search-input{
	padding: 6px 10px;
	outline: none;
	border-radius: 3px;
	border: 1px solid #e5e5e5;
}

#search-input:hover{
	border-color: #cecece;
}

#search-input:focus{
	border-color: #409eff;
}

#search-btn{
	background-color: #426B1F;
	color: #fff;
	border-radius: 5px;
	padding: 6px 15px; 
	
	position: relative;
	left: 20px;
}

#search-btn:hover {
	background-color: #94A963;
}
#autoComplete{
	position: relative;
	left: 20px;
}

#main {
	text-align: center;
	flex: 1;
	padding: 20px;
}

#main h3 {
	font-size: 24px;
	color: #426B1F;
	margin-bottom: 10px;
}

hr {
	border: 1px solid #426B1F;
	margin: 15px 0;
}

.form-group {
	margin-bottom: 15px;
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

h3 {
	font-size: 25px;
	color: #426B1F;
	font-family: 'Spartan';
}

#searchThink, #searchInput{
	width: 150px;
	height: 30px;
	border-radius: 5px;
	padding: 5px;
}

#searchResultsContainer{
	height: 170px;
	border: 1px solid #426B1F;
	border-radius: 3px;
}

#selectContainer{
	height: 170px;
	border: 1px solid #426B1F;
	border-radius: 3px;
}

#selectContainer > .title, #searchResultsContainer > .title{
	display: flex;
	padding: 5px 0;
	font-weight: 550;
	box-sizing: border-box;
}

#selectContainer > .tbody, #searchResultsContainer > .tbody{
	height: 140px;
	overflow-y: auto;
	background-color: #fff;
}

#selectContainer > .tbody > div, #searchResultsContainer > .tbody > div{
	display: flex;
	align-items: center;
	padding: 5px 0;
}

#selectContainer > .title > div,
#searchResultsContainer > .title > div,
#selectContainer > .tbody > div > div,
#searchResultsContainer > .tbody > div > div{
	text-align: center;
	flex: 1;
}

#selectContainer > .title > div:nth-child(2),
#searchResultsContainer > .title > div:nth-child(2),
#selectContainer > .tbody > div > div:nth-child(2),
#searchResultsContainer > .tbody > div > div:nth-child(2){
	flex: 4;
	text-align: left;
}

#searchResultsContainer > .tbody button{
	background-color: #426B1F;
	border: 1px solid #426B1F;
	padding: 1px 8px;
	color: #fff;
	border-radius: 3px;
}
.add-button, .submit-button, .remove-button{
	background-color: #426B1F;
	border: 1px solid #426B1F;
	padding: 1px 8px;
	color: #fff;
	border-radius: 3px;
}
.cancel-button{
	background-color: #808000;
	border: 1px solid #808000;
	padding: 1px 8px;
	color: #fff;
	border-radius: 3px;
}
#selectContainer > .tbody button{
	background-color: #f56c6c;
	border: 1px solid #f56c6c;
	padding: 1px 8px;
	color: #fff;
	border-radius: 3px;
}

#selectContainer > .tbody input{
	width: 40px;
	box-sizing: border-box;
	outline: none;
	border-radius: 3px;
	border: 1px solid #e5e5e5;
}

#searchResultsContainer > .tbody::-webkit-scrollbar, #selectContainer > .tbody::-webkit-scrollbar{
	width: 5px;
	background-color: #f5f5f5;
	border-radius: 3px;
}

#searchResultsContainer > .tbody::-webkit-scrollbar-thumb, #selectContainer > .tbody::-webkit-scrollbar-thumb{
	background-color: gray;
	border-radius: 3px;
}

.submit{
	background-color: #67c23a;
	border: solid 1px #67c23a;
	outline: none;
	color: #fff;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
	float: right;
}

.date, #searchResultsContainer, #selectContainer, .submit{
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="header">
		<a href="home"><h1>DIET</h1></a>
		<nav class="nav">
			<ul class="menu">
				<li class="item"><a href="insertDailyFood.do" class="link">
					<i class="fa fa-cutlery" aria-hidden="true"></i> <span>식단</span>
				</a></li>
				<li class="item"><a href="insertDailyWorkout.do" class="link">
					<i class="fa fa-bicycle" aria-hidden="true"></i> <span>운동</span>
				</a></li>
				<li class="item"><a href="insertDailyDiary.do" class="link">
					<i class="fa fa-book" aria-hidden="true"></i> <span>일기</span>
				</a></li>
				<li class="item"><a href="insertDailyWeight.do" class="link">
					<i class="fa fa-balance-scale" aria-hidden="true"></i> <span>체중</span>
				</a></li>
				<li class="item"><a href="getBoardList.do" class="link"> <i
						class="fa fa-comments-o" aria-hidden="true"></i> <span>커뮤니티</span>
				</a></li>
				<li class="item"><a href="getMyPage.do" class="link"> <i
						class="fa fa-user-o" aria-hidden="true"></i> <span>My Page</span>
				</a></li>
				<li class="item"><a href="logout.me" class="link"> <i
						class="fa fa-sign-out" aria-hidden="true"></i> <span>Log-out</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<div class="container">
		<div class="insertWorkout" align="left">
		<form action="getDailyWorkoutBoard.do">
			<div class="search-box">
				<input type="text" id="autoComplete" name="searchKeyword" placeholder="운동 유형을 입력하세요.">
				<button id="search-btn"><i class="fa fa-search" aria-hidden="true"></i></button>
			</div>
		</form>
			<div>
				<div id="searchResultsContainer">
				<div>
					<table class="table-search" board="0" cellpadding="0" width="700" >
						<tr class="title" align="left">
							<th bgcolor="#FAFAF5" width="600">운동타입</th>
							<th bgcolor="#FAFAF5" width="300">분당</th>
							<th bgcolor="#FAFAF5" width="500">소모칼로리</th>
							<th bgcolor="#FAFAF5" width="600">조작</th>
						</tr>
						<c:forEach items="${workoutInfo}" var="workoutInfo">
							<tr>
								<td>${workoutInfo.name}</td> 
								<td>${workoutInfo.min}</td>									
								<td>${workoutInfo.kcal}</td>
								<td><button class="add-button" onclick="addToSelectContainer('${workoutInfo.name}', '${workoutInfo.min}', '${workoutInfo.kcal}')">선택</button></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="datePicker">
				<label for="datePicker">날짜 선택</label>
				<input type="date" id="datePicker" onchange="datePickerChange()" name="datePicker">
				<span id="daySumMin" style="margin-left: 10px;"></span>
			</div>
			<div>
				<div id="selectContainer">
					<table class="table-search" board="0" cellpadding="0" width="700" >
							<tr class="title" align="left">
								<th bgcolor="#FAFAF5" width="600">운동타입</th>
								<th bgcolor="#FAFAF5" width="300">운동시간</th>
								<th bgcolor="#FAFAF5" width="500">칼로리</th>
								<th bgcolor="#FAFAF5" width="100">조작</th>
								
							</tr>
					</table>
					<div class="tbody">
			
					</div>
				</div>
				<!-- <input class="submit" type="submit" value="모두등록"> -->
			</div>
			
		</div>
	</div>
	<!-- daily요약 -->
		<div class="rside">
			<h2>Daily 요약</h2>
			<p>일일 권장량： 2200kal</p>
			<p>섭취 갈로리: 1500kal</p>
			<p>남은 칼로리: 1000kal</p>
			<div class="result">
				<h4>Toady Is</h4>
				<h2>성공!</h2>
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

<script>
	// 자동검색 완성기능
	$(document).ready(function() {
		$('#autoComplete').autocomplete({
			source : function(request, response) { //source: 입력시 보일 목록
				$.ajax({
					url : "autocomplete.do",
					type : "POST",
					dataType : "JSON",
					data : {
						value : request.term
					} // 검색 키워드
					,
					success : function(data) { // 성공
						response($.map(data.resultList, function(item) {
							return {
								label : item.NAME // 목록에 표시되는 값
								,
								value : item.NAME // 선택 시 input창에 표시되는 값									
							};
						})); //response
					},
					error : function() { //실패
						alert("오류가 발생했습니다.");
					}
				});
			},
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength : 1// 최소 글자수
			,
			autoFocus : true // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
			,
			delay : 100 //autocomplete 딜레이 시간(ms)
			,
			select : function(evt, ui) {
				// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
				console.log(ui.item.label);
				console.log(ui.item.idx);
			}
		});
	});


	function addToSelectContainer(name, min, kcal) {
	    var searchTable = document.getElementById("searchResultsContainer").getElementsByTagName("table")[0];
	    var selectTable = document.getElementById("selectContainer").getElementsByTagName("table")[0];
	    
	    // 첫 번째 테이블의 각 행 반복하여 찾은 행 숨기기
	    for (var i = 0; i < searchTable.rows.length; i++) {
	        var row = searchTable.rows[i];
	        if (row.cells[0].innerHTML === name && row.cells[1].innerHTML === min && row.cells[2].innerHTML === kcal) {
	            row.style.display = "none"; // 찾은 행 숨기기
	            break; // 반복 중지
	        }
	    }

	    var newRow = selectTable.insertRow(-1); 
	    var cell1 = newRow.insertCell(0);
	    var cell2 = newRow.insertCell(1);
	    var cell3 = newRow.insertCell(2);
	    var cell4 = newRow.insertCell(3);
	    //var cell5 = newRow.insertCell(4);

	    var totalKcal = min * kcal;
	    
	    cell1.innerHTML = name;
	    cell2.innerHTML = '<input type="number" id=inputTime" value="' + min + '" onchange="updateKcal(this, ' + kcal + ')">'; // 使用input元素允许用户修改时间，并添加onchange事件监听
	    cell3.innerHTML = totalKcal; // 显示总卡路里值
	    cell4.innerHTML = '<button class="cancel-button" onclick="removeFromSelectContainer(this)">취소</button>';
	    //cell5.innerHTML = '<button class="submit-button" onclick="submitData">등록</button>'; // 添加提交按钮
	}

	// 칼로리 업데이트 함수
	function updateKcal(input, kcal) {
	    var row = input.parentNode.parentNode; 
	    var min = parseFloat(input.value); 
	    var totalKcal = min * kcal; 
	    row.cells[2].innerHTML = totalKcal; 
	
		
		var data = {
			workoutName: row.cells[0].innerHTML,
			inputTime: min,
			kcal: totalKcal
		};
		
		sendDataToBackend(data);

		
	}
	
	function sendDataToBackend(data) {
	    $.ajax({
	        url: "insertWorkoutBoard.do",
	        headers: {
	            'Content-Type': 'application/json'
	        },
	        type: "POST",
	        dataType: "JSON",
	        data: JSON.stringify(data),
	        success: function (res) {
	            if (res.success) {
	            //    alert("등록되었습니다.");
	            }
	        },
	        error: function (err) { // 添加参数 err
	            //alert("전송에 실패했습니다.");
	        }
	    });
	}
	
	// 두 번째 테이블에서 행 제거
	function removeFromSelectContainer(button) {
	    var row = button.parentNode.parentNode; // 버튼 -> 셀 -> 행
	    row.parentNode.removeChild(row); // 테이블에서 행 제거
	    
	    // 첫 번째 테이블의 참조 가져오기
	    var searchTable = document.getElementById("searchResultsContainer").getElementsByTagName("table")[0];
	    
	    // 해당하는 행 표시
	    for (var i = 0; i < searchTable.rows.length; i++) {
	        var row = searchTable.rows[i];
	        row.style.display = ""; // 제거된 행 표시
	    }
	}
	

      function datePickerChange() {
            var selectedDate = $('#datePicker').val();
           
            $.ajax({
                url: 'getWorkoutBoardByDate.do',
                type: 'POST',
                data: { date: selectedDate },
                dataType: 'JSON',
                success: function(data) {
                	alert("성공!")
                    updateWorkoutTable(data);
                },
                error: function() {
                    alert('날짜별 운동 데이터를 가져오는 중 오류가 발생했습니다.');
                }
            });
        }
       
        function updateWorkoutTable(data) {
            
            var selectTable = document.getElementById("selectContainer").getElementsByTagName("table")[0];
            
         // 기존에 출력된 데이터 삭제
            while (selectTable.rows.length > 1) {
                selectTable.deleteRow(1);
            }
            
			
         if(data.length === 0){
        	 console.log("data is empty");        	 
         }else{            
            $.each(data, function(index, workout) {
            	console.log("진입")            	
            	
            	var newRow = selectTable.insertRow(-1); // -1은 행을 맨 뒤에 추가하는 것을 나타냄
    			var cell1 = newRow.insertCell(0);
    			var cell2 = newRow.insertCell(1);
    			var cell3 = newRow.insertCell(2);
    			var cell4 = newRow.insertCell(3);

                var totalKcal = workout.inputTime * workout.kcal;

                // 새로운 행 셀의 내용 설정
                cell1.innerHTML = workout.workoutName;
                cell2.innerHTML = '<input type="number" value="' + workout.inputTime + '" onchange="updateKcal(this, ' + workout.kcal + ')">';
                cell3.innerHTML = totalKcal;
                cell4.innerHTML = '<button class="remove-button" onclick="removeFromSelectContainer(this)">삭제</button>';
                
            });
         	}
        }    	
</script>
</html>