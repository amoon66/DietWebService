<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기 페이지</title>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
	/* all view */
:root {
	--dark-text: #f8fbff;
	--light-body: #f3f8fe;
	--light-main: #fdfdfd;
	--light-second: #c3c2c8;
	--light-hover: #f0f0f0;
	--light-text: #151426;
	--light-btn: #94a963;
	--blue: #0000ff;
	--white: #fff;
	--shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
	--font-family: Arial;
}

* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
}

body {
	width: 1280px;
	height: 1024px;
	font-family: Arial;
}

.container {
	height: 100%;
	margin: 0px, 205px;
	padding: 2% 0px 0px 0px;
	justify-content: center;
	top: 10px;
	right: 0%;
	width: 100%;
	height: 100%;
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
	height: 300px;
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
	font-family: Arial;
	text-align: center;
	margin: 10px;
}
.rside p{
	text-align: left;
	margin: 10px;
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
/* 달력 시작 */
.calendar {
	height: 610px;
	width: 700px;
	background-color: white;
	border-radius: 25px;
	overflow: hidden;
	padding: 30px 50px 0px 50px;
	box-shadow: var(--shadow);
	position: relative;
}

.calendar-header {
	background: #426B1F;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-weight: 700;
	color: var(--white);
	padding: 10px;
}

.calendar-body {
	pad: 10px;
}

.calendar-week-days {
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	font-weight: 500;
	font-size: 30;
	cursor: pointer;
	color: rgb(104, 104, 104);
}

.calendar-week-days div:hover {
	color: black;
	transform: scale(1.2);
	transition: all .2s ease-in-out;
}

.calendar-week-days div {
	display: grid;
	place-items: center;
	color: var(--bg-second);
	height: 50px;
}

.calendar-days {
	/*网格布局 */
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	gap: 2px;

	color: var(--color-txt);
}

.calendar-days div {
	width: 37px;
	height: 33px;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 5px;
	position: relative;
	/* 마우스 순모양 */
	cursor: pointer;
	animation: to-top is forwards;
}

.month-picker:hover {
	background-color: var(--color-hover);
}

.month-picker:hover {
	color: var(--color-txt);
}

.year-picker {
	display: flex;
	align-items: center;
}

.year-change {
	height: 30px;
	width: 30px;
	border-radius: 50%;
	display: grid;
	place-items: center;
	margin: 0px 10px;
	cursor: pointer;
}

.year-change:hover {
	background-color: #94A963;
	transition: all .2s ease-in-out;
	transform: scale(1.12);
}

.year-change:hover pre {
	color: var(--bg-body);
}

.calendar-footer {
	padding: 10px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

#year:hover {
	cursor: pointer;
	transform: scale(1.2);
	transition: all 0.2 ease-in-out;
}

.calendar-days div span {
	position: absolute;
}

.calendar-days div:hover {
	transition: width 0.2s ease-in-out, height 0.2s ease-in-out;
	background-color: #edecdd;
	border-radius: 20%;
	color: #426b1f;
}

.calendar-days div.current-date {
	color: var(--dark-text);
	background-color: #94a963;
	border-radius: 20%;
}

.select-day{
	background-color: #dfae01 !important;
	color: white;
	border-radius: 20%;
}

.roller-skating-box{
	position: absolute;
	bottom: 40px;
	left: 0px;
	height: 200px;
	/* width: 1323px; */
	box-sizing: border-box;
	transition: all 1s ease;
}

.roller-skating-box > .vertical-center{
	height: 100%; 
	display: flex; 
	align-items: center;
}

.roller-skating-box > div{
	float: left;
	padding: 0 50px;
	width: 33.33%;
	box-sizing: border-box;
}

.month-list {
	background-color: #ebebeb;
	color: #426b1f;
	display: grid;
	grid-template-columns: repeat(3, auto);
	gap: 5px;
	border-radius: 20px;
}

.month-list>div {
	display: grid;
	place-content: center;
	margin: 5px 10px;
	transition: all 0.2s ease-in-out;
}

.month-list>div>div {
	border-radius: 15px;
	padding: 10px;
	cursor: pointer;
}

.month-list>div>div:hover {
	background-color: var(--light-btn);
	color: var(--dark-text);
	transform: scale(0.9);
	transition: all 0.2s ease-in-out;
}

.date-time-formate {
	display: flex;
	width: 100%;
	font-family: Dubai Light, Century Gothic;
	align-items: center;
}

.day-text-formate {
	font-family: Microsoft JhengHei UI;
	font-size: 1.4rem;
	padding-right: 5px;
	border-right: 3px solid #426B1F;
}

.date-time-value {
	text-align: center;
}

.time-formate {
	font-size: 1.5rem;
}

.day-info{
	background-color: #ebebeb;
	border-radius: 20px;
	width: 100%;
	height: 100%;
	padding: 10px 15px;
	box-sizing: border-box;
}

.day-info .title{
	color: block;
	line-height: 21px;
}

.day-info .title span:last-child{
	display: inline-block;
	text-align: center;
	width: 94%;
}

.day-info .content{
	height: 110px;
	overflow-y: auto;
	padding: 5px 10px;
}

.day-info .content > div{
	background-color: #fff;
	padding: 3px 7px;
	box-sizing: border-box;
	color: block;
	margin-top: 5px;
	border-radius: 5px;
}

.day-info .content span{
	word-wrap: break-word;
	word-break: break-all;
	white-space: pre-wrap !important;
}

.day-info .content button{
	padding: 0px 5px;
	color: #fff;
	background-color: #426b1f;
	border-color: #426b1f;
	margin-left: 7px;
}

.day-info .content::-webkit-scrollbar{
	width: 5px;
	background-color: white;
	border-radius: 3px;
}

.day-info .content::-webkit-scrollbar-thumb{
	background-color: gray;
	border-radius: 3px;
}

.day-info .input-box{
	margin-top: 5px;
	display: flex;
	align-items: center;
}

.day-info .input-box input{
	width: 80%;
	padding: 4px 8px;
	outline: none;
	border: 1px #e5e5e5 solid;
	border-radius: 3px;
	color: gray;
	font-size: 12px;
}

.day-info .input-box button{
	min-width: 46px !important;
	padding: 0px 8px;
}

.day-info .input-box .clear-btn{
	color: #fff;
	background-color: #426b1f;
	border-color: #426b1f;
}

.day-info .input-box .save-btn{
	color: #fff;
	background-color: #426b1f;
	border-color: #426b1f;
}

@media (max-width:375px) {
	.month-list>div {
		margin: 5px 0px;
	}
}

/* 달력 끝 */
.footer {
	position: relative;
	width: 100%;
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
		<a href="#">
			<h1>DIET</h1>
		</a>
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
		<div class="calendar">
			<div class="calendar-header">
				<span class="month-picker" id="month-picker"> May </span>
				<div class="year-picker" id="year-picker">
					<span class="year-change" id="pre-year">
						<pre><</pre>
					</span>
					<span id="year"> 2020 </span>
					<span class="year-change" id="next-year">
						<pre>></pre>
					</span>
				</div>
			</div>

			<div class="calendar-body">
				<div class="calendar-week-days">
					<div>Sun</div>
					<div>Mon</div>
					<div>Tue</div>
					<div>Wed</div>
					<div>Thu</div>
					<div>Fri</div>
					<div>Sat</div>
				</div>
				<div class="calendar-days"></div>
				<div class="roller-skating-box">
					<div class="vertical-center">
						<div class="date-time-formate">
							<div>
								<span class="day-text-formate">TODAY</span>
							</div>
							<div class="date-time-value">
								<div class="time-formate">02:51:20</div>
								<div class="date-formate">23 - july - 2022</div>
							</div>
						</div>
					</div>
					<div>
						<div class="month-list"></div>
					</div>
					<div class="vertical-center">
						<div class="day-info">
							<div class="title">
								<span style="cursor: pointer;" onclick="dayInfoBack()"><</span>
								<span>오늘의 기록</span>
							</div>
							<div class="content">
								
							</div>
							<div class="input-box">
								<input type="text" id="day-info-input">
								<button class="save-btn" onclick="saveDayInfo()">입력</button>
								<button class="clear-btn" onclick="clearDayInfo()">취소</button>
							</div>
						</div>
					</div>
				</div>

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
<script type="text/javascript">
	// 윤년 여부 확인 함수
	let days_info = {}
	const isLeapYear = (year) => {
		return (
			(year % 4 === 0 && year % 100 !== 0 && year % 400 !== 0) ||
			(year % 100 === 0 && year % 400 === 0)
		);
	};
	// 2월의 일 수를 반환하는 함수 (윤년에는 29일, 그렇지 않으면 28일)
	const getFebDays = (year) => {
		return isLeapYear(year) ? 29 : 28;
	};
	// HTML 요소를 선택하는 변수들
	let calendar = document.querySelector('.calendar');
	const roller_skating_box = document.querySelector(".roller-skating-box");
	roller_skating_box.style.width = calendar.clientWidth * 3 + "px"
	// 월 이름 배열
	const month_names = [
		'January',
		'February',
		'March',
		'April',
		'May',
		'June',
		'July',
		'August',
		'September',
		'October',
		'November',
		'December',
	];
	// 월 선택기 및 달력의 일자를 나타내는 변수들
	let month_picker = document.querySelector('#month-picker');
	let calendar_days = document.querySelector('.calendar-days');
	// 월 선택 시 이벤트 처리 함수
	month_picker.onclick = () => {
		remove_select_day_fun()
		roller_skating_box.style.left = -calendar.clientWidth+'px'
	};
	// 선택한 날짜에 대한 정보를 저장하는 함수
	function saveDayInfo() {
		let select_month_picker = document.querySelector('#month-picker').textContent;
		let select_year = document.querySelector('#year').textContent;
		let select_day = document.querySelector('.select-day');
		if(select_day == null){
			return alert("날짜 선택하세요!")
		}
		let index = select_month_picker+" "+select_day.textContent+", "+select_year
		let day_info_input = document.getElementById("day-info-input").value
		if (day_info_input == "") {
			return alert("내용 입력하세요!")
		}
		if (days_info[index]) {
			days_info[index].push(day_info_input)
		}else{
			days_info[index] = [day_info_input]
		}
		loadDayInfo(select_month_picker, select_year, select_day)
	}
	// 선택한 날짜에 대한 정보를 초기화하는 함수
	function clearDayInfo() {
		let select_month_picker = document.querySelector('#month-picker').textContent;
		let select_year = document.querySelector('#year').textContent;
		let select_day = document.querySelector('.select-day');
		if(select_day == null){
			return alert("날짜 선택하세요!！")
		}
		let index = select_month_picker+" "+select_day.textContent+", "+select_year
		days_info[index] = []
		loadDayInfo(select_month_picker, select_year, select_day)
	}
	// 선택한 날짜에 대한 정보를 로드하고 표시하는 함수
	function loadDayInfo(select_month_picker, select_year, select_day) {
		let content_box = document.querySelector('.day-info > .content')
		while(content_box.hasChildNodes()){
			content_box.removeChild(content_box.firstChild);
		}
		let index = select_month_picker+" "+select_day.textContent+", "+select_year
		if (days_info[index] == null) return
		for (let i = 0; i < days_info[index].length; i++) {
			let each_content = document.createElement('div')
			let span = document.createElement('span')
			let button = document.createElement('button')
			span.innerText = days_info[index][i]
			button.innerText = "삭제"
			button.onclick = () => {
				days_info[index].splice(i, 1)
				button.parentNode.remove()
			} 
			each_content.append(span)
			each_content.append(button)
			content_box.append(each_content)
		}
	}
	// 달력을 생성하는 함수
	const generateCalendar = (month, year) => {
		calendar_days.innerHTML = '';
		let calendar_header_year = document.querySelector('#year');
		let days_of_month = [
			31,
			getFebDays(year),
			31,
			30,
			31,
			30,
			31,
			31,
			30,
			31,
			30,
			31,
		];

		let currentDate = new Date();

		month_picker.innerHTML = month_names[month];

		calendar_header_year.innerHTML = year;

		let first_day = new Date(year, month);


		for (let i = 0; i <= days_of_month[month] + first_day.getDay() - 1; i++) {

			let day = document.createElement('div');

			if (i >= first_day.getDay()) {
				day.innerHTML = i - first_day.getDay() + 1;

				if (i - first_day.getDay() + 1 === currentDate.getDate() &&
					year === currentDate.getFullYear() &&
					month === currentDate.getMonth()
				) {
					day.classList.add('current-date');
				}
			}
			calendar_days.appendChild(day);
			day.onclick = () => {
				remove_select_day_fun()
				calendar_days.children[i].classList.add('select-day')
				roller_skating_box.style.left = -(calendar.clientWidth * 2)+'px'
				let select_month_picker = document.querySelector('#month-picker').textContent;
				let select_year = document.querySelector('#year').textContent;
				let select_day = document.querySelector('.select-day');
				document.getElementById("day-info-input").value = ""
				loadDayInfo(select_month_picker, select_year, select_day)
			}
		}
	};
	// 선택된 날짜를 표시하는 CSS 클래스를 제거하는 함수
	function remove_select_day_fun(){
		for (let t = 0; t < calendar_days.children.length; t++) {
			calendar_days.children[t].classList.remove('select-day')
		}
	}
	// 날짜 정보 뷰로 돌아가는 함수
	function dayInfoBack(){
		remove_select_day_fun()
		roller_skating_box.style.left = 0+'px'
	}
	// 각 월을 선택할 수 있는 목록을 생성하는 코드
	let month_list = calendar.querySelector('.month-list');
	month_names.forEach((e, index) => {
		let month = document.createElement('div');
		let div = document.createElement('div')
		div.innerHTML = e;
		month.append(div)
		month_list.append(month);
		month.onclick = () => {
			currentMonth.value = index;
			generateCalendar(currentMonth.value, currentYear.value);
			roller_skating_box.style.left = 0+'px'
		};
	});
	// 즉시 실행 함수를 사용하여 month_list 요소에 'hideonce' 클래스를 추가
	(function () {
		month_list.classList.add('hideonce');
	})();
	// 이전 년도 버튼 클릭 시 처리 로직
	document.querySelector('#pre-year').onclick = () => {
		--currentYear.value;
		generateCalendar(currentMonth.value, currentYear.value);
		remove_select_day_fun()
	};
	// 다음 년도 버튼 클릭 시 처리 로직
	document.querySelector('#next-year').onclick = () => {
		++currentYear.value;
		generateCalendar(currentMonth.value, currentYear.value);
		remove_select_day_fun()
	};
	// 현재 날짜 정보 초기화
	let currentDate = new Date();
	let currentMonth = { value: currentDate.getMonth() };
	let currentYear = { value: currentDate.getFullYear() };
	// 초기화된 현재 날짜 정보로 달력 생성
	generateCalendar(currentMonth.value, currentYear.value);
	
	// 현재 시간을 표시하는 요소와 날짜를 표시하는 요소를 선택
	const todayShowTime = document.querySelector('.time-formate');
	const todayShowDate = document.querySelector('.date-formate');
	// 현재 날짜 정보를 가져와 특정 형식으로 포맷팅
	const currshowDate = new Date();
	const showCurrentDateOption = {
		year: 'numeric',
		month: 'long',
		day: 'numeric',
		weekday: 'long',
	};
	const currentDateFormate = new Intl.DateTimeFormat(
		'en-US',
		showCurrentDateOption
	).format(currshowDate);
	// 포맷팅된 현재 날짜를 화면에 표시
	todayShowDate.textContent = currentDateFormate;
	// 1초마다 현재 시간을 업데이트하여 화면에 표시
	setInterval(() => {
		const timer = new Date();
		const option = {
			hour: 'numeric',
			minute: 'numeric',
			second: 'numeric',
		};
		const formateTimer = new Intl.DateTimeFormat('en-us', option).format(timer);
		let time = `${timer.getHours().toString().padStart(2, '0')}:${timer.getMinutes().toString().padStart(2, '0')}:${timer.getSeconds().toString().padStart(2, '0')}`;

		todayShowTime.textContent = formateTimer;
	}, 1000);

</script>
</body>

</html>