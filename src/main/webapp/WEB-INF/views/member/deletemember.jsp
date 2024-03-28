<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 폼</title>
<style>
    body {
        font-family: 'Inter', sans-serif;
        background-color: #FAFAF5;
        text-align: center;
        margin: 100px;
    }

    .withdraw-container {
        max-width: 400px;
        margin: auto;
        background-color: #FFFFFF;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #426B1F;
        color: #FFFFFF;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #315917;
    }
</style>
</head>
<body>
    <div class="withdraw-container">
        <h2>회원탈퇴</h2>
        <p>회원탈퇴를 원하신다면 아이디와 비밀번호를 입력해주세요.</p>
        <form action="/deleteproc.do" method="post">
            <label for="id">아이디:</label>
            <input type="text" id="id" name="id" required>
            <br>
            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <input type="submit" value="회원탈퇴">
        </form>
         <!-- 마이페이지로 돌아가는 버튼 추가 -->
        <form action="/getMyPage.do" method="get">
            <input type="button" value="마이페이지로 돌아가기" onclick="location.href='/getMyPage.do'">
        </form>
    </div>
</body>
</html>