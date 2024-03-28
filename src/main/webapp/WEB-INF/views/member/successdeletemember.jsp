<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 성공</title>
<style>
    body {
        font-family: 'Inter', sans-serif;
        background-color: #FAFAF5;
        text-align: center;
        margin: 100px;
    }

    .success-container {
        max-width: 400px;
        margin: auto;
        background-color: #FFFFFF;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="button"] {
        background-color: #426B1F;
        color: #FFFFFF;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="button"]:hover {
        background-color: #315917;
    }
</style>
</head>
<body>
    <div class="success-container">
        <h2>회원 탈퇴 성공</h2>
        <input type="button" value="로그인 화면으로 돌아가기" onclick="location.href='/login'">
    </div>
</body>
</html>