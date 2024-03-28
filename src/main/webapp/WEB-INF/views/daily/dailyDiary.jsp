<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
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
	text-align: center;
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
.inputSubmit{
	position: relative;
	left: -125px;
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
	margin: 30px;
}
hr{
	margin: 30px;
}

.weather, .condition {
	display: inline-block;
	margin-right: 20px;
}

.content {
	height: 550px;
	width: 800px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border: 2px solid #426B1F;
	border-radius: 10px;
	padding: 20px;
	margin-top: 50px;
	margin-bottom: 40px;
	color: #426B1F;
	font-size: 24px;
}

#userInput {
	width: 100%;
	height: 100%;
	font-size: 24px;
	border: none;
}

.tdSubmit {
	text-align: center;
	margin-top: 20px;
	margin-left: 15px; /* Add left margin for positioning */
}

.inputSubmit {
	/* Keep the button styles as they are */
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

.weather, .condition {
	display: inline-block;
	vertical-align: top; /* Align the elements at the top */
	margin-right: 20px;
}

.weather label, .condition label {
	margin-bottom: 5px;
	font-size: 18px;
}

.weather_icon,
.condition_icon {
    display: inline-block;
    margin-right: 20px;
    font-size: 100px; /* Adjust the font size as needed */
    line-height: 1; /* Adjust the line height to remove any extra spacing */
}

.weather_icon i,
.condition_icon i {
    vertical-align: middle; /* Align the icons vertically in the middle */
}
.mind{
	text-align: center;
}
.weather{
	text-align: center;
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
		<!-- ... (이전 코드) ... -->
		<div class="diary-object" align="center">
			<h3>오늘의 일기</h3>
			<hr>
		</div>
		<div class="weather" align="center">
    <label for="weather">오늘의 날씨</label> 
    <select name="weather_condition" id="weather">
        <optgroup class="weather" label="날씨">
            <option value="sun">맑음</option>
            <option value="cloud">흐림</option>
            <option value="rain">비</option>
            <option value="snow">눈</option>
        </optgroup>
    </select>
    <div class="weather_icon"></div> <!-- Move the weather_icon here -->
</div>

<div class="condition" align="center">
    <label for="condition">오늘의 컨디션</label> 
    <select name="daily_condition" id="condition" >
        <optgroup class="mind" label="컨디션" >
            <option value="good">좋음</option>
            <option value="soso">보통</option>
            <option value="tired">지침</option>
        </optgroup>
    </select>
    <div class="condition_icon"></div> <!-- Move the condition_icon here -->
</div>

<div class="content">
    <textarea id="userInput" name="userInput">오늘을 기록하세요</textarea>
</div>
<div class="tdSubmit">
    <button type="button" class="inputSubmit" onclick="updateIcons()">등록</button>
</div>

<script>
    function updateIcons() {
        updateIcon("weather", ".weather_icon", {
            "sun": "fa-sun-o",
            "cloud": "fa-cloud",
            "rain": "fa-tint",
            "snow": "fa-snowflake-o"
        });

        updateIcon("condition", ".condition_icon", {
            "good": "fa-smile-o",
            "soso": "fa-meh-o",
            "tired": "fa-frown-o"
        });

        updateText("userInput", ".content_text");
    }

    function updateIcon(selectId, iconContainerSelector, iconMap) {
        var selectedValue = document.getElementById(selectId).value;
        var iconContainer = document.querySelector(iconContainerSelector);

        // Clear existing content
        iconContainer.innerHTML = "";

        // Create and append a new element based on the selected value
        var icon = document.createElement("i");
        icon.className = "fa " + iconMap[selectedValue];
        icon.setAttribute("aria-hidden", "true");
        iconContainer.appendChild(icon);
    }

    function updateText(textAreaId, textContainerSelector) {
        var textArea = document.getElementById(textAreaId);
        var textContainer = document.querySelector(textContainerSelector);

        // Clear existing content
        textContainer.innerHTML = "";

        // Create and append a new element with the entered text
        var text = document.createElement("p");
        text.textContent = textArea.value;
        textContainer.appendChild(text);
    }
</script>
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