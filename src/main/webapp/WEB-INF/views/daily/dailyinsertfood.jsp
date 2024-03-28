<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>오늘의 식단</title>
<link
	href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
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
	height: 600px;
	left: 1139px;
	right: 43px;
	top: 300px;
	color: #426B1F;
	margin: 10px auto;
	padding: 5px;
	background: #FAFAF5;
	border: 2px solid #426B1F;
	border-radius: 24px;
	text-align: center;
}

.rside h2 {
	font-family: Arial;
	text-align: center;
	margin: 10px;
	line-height: 200px;
}

.rside p {
	text-align: left;
	margin: 10px;
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

.insertMeal {
	margin-top: 20px;
	padding: 20px;
	border: 2px solid #426B1F;
	border-radius: 10px;
	background-color: #FAFAF5;
	height: 600px;
	width: 60%;
	margin-left: 10px;
	flex: 0 0 70%;
	border-radius: 24px;
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

label {
	font-size: 16px;
	color: #426B1F;
	display: block;
	margin-bottom: 8px;
}

select, input {
	width: 100%;
	padding: 10px;
	border: 1px solid #426B1F;
	border-radius: 5px;
	font-size: 16px;
	margin-bottom: 15px;
}

button {
	background-color: #426B1F;
	color: white;
	padding: 10px 20px;
	font-size: 18px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #94A963;
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
</style>
</head>
<body>
	<script>
		function searchFoods() {
			var searchText = document.getElementById("searchText").value;
			var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var foodlist = JSON.parse(xhr.responseText);

					// 검색 결과를 화면에 업데이트
					console.log("Food List: ", foodlist)
					updateFoodList(foodlist);
				}
			};

			var data = "searchText=" + encodeURIComponent(searchText);

			// 서버로 요청 보내기
			xhr.open("POST", "/search", true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send(data);
		}

		function updateFoodList(foodlist) {
		    var selectElement = document.getElementById("foodlist");
		    var foodResultsDiv = document.getElementById("foodResults");
		    console.log("updateFoodList 실행")
		    

		    // 기존의 옵션을 모두 삭제
		    while (selectElement.firstChild) {
		        selectElement.removeChild(selectElement.firstChild);
		    }

		    for (var i = 0; i < foodlist.length; i++) {
		        var option = document.createElement("option");
		        option.text = "음식 이름 : " + foodlist[i].food_name + " 음식 그람 : " + foodlist[i].gram + " 음식 칼로리 : " + foodlist[i].kcal;
		        selectElement.add(option);
   			 }
		    document.getElementById("searchResults").style.display = "block";
		
		}
			selectElement.addEventListener('change', function() {
				// 선택된 옵션의 인덱스
				var selectedIndex = this.selectedIndex;
			
				// 선택된 음식 정보
				var selectedFood = foodlist[selectedIndex];

				// 선택된 음식 정보를 foodResults에 표시
				var resultItem = document.createElement("div");
				resultItem.textContent = "추가된 음식: " + selectedFood.food_name + " 그람: " + selectedFood.gram + " 칼로리: " + selectedFood.kcal;
				foodResultsDiv.appendChild(resultItem);
			});
		function cancel() {
			window.location.href = '/insertDailyFood.do';
		}
	</script>

	<div class="header">
		<a href="home"><h1>DIET</h1></a>
		<nav class="nav">
			<ul class="menu">
				<li class="item"><a href="insertDailyFood.do" class="link">
						<i class="fa fa-cutlery" aria-hidden="true"></i> <span>식단</span>
				</a></li>
				<li class="item"><a href="getDailyWorkout.do" class="link">
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
		<div class="insertMeal" align="left">
			<div id="main" align="center">
				<h3>오늘의 식단 입력</h3>
				<hr>
				<!-- 오늘의 식단 입력 폼 -->

				<!--  양식 선택 -->
				<div class="form-group">
					<label for="cuisine">아침 점심 저녁을 선택해주세요.</label> <select id="cuisine"
						onchange="loadFoods()">
						<option value="default">선택해주세요.</option>
						<option value="morning">아침</option>
						<option value="lunch">점심</option>
						<option value="dinner">저녁</option>
					</select>
				</div>

				<!-- 음식 선택 -->
				<div class="form-group">
					<label for="foodlist">음식 검색: </label> <select id="foodlist"></select>
					<input type="text" id="searchText" placeholder="음식을 검색하세요">
					<button onclick="searchFoods()">검색</button>
				</div>

				<!-- 검색된 음식 목록 -->
				<div id="searchResults" style="display: none;">
					<label>추가된 음식:</label>
					<div id="foodResults"></div>
				</div>

				<!-- 음식 및 먹은 양 입력 -->
				<div class="form-group">
					<label for="foodAmount">먹은 음식 및 양 (g): </label> <input type="text"
						id="foodAmount" placeholder="먹은 양을 입력하세요">
				</div>

				<button onclick="cancel()">입력</button>
				<button onclick="cancel()">취소</button>

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
</html>