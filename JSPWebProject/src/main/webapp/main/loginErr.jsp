<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> Login Error </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.17/tailwind.min.css">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto py-4">
        <div class="flex items-center">
            <a href="/" class="text-blue-600 hover:text-blue-800 font-bold text-lg">Home</a>
            <span class="mx-2 text-gray-500">/</span>
            <span class="text-gray-700 font-bold text-lg">로그인 에러</span>
        </div>
        <hr class="my-4">
        <p class="text-red-600 font-bold">로그인 오류입니다!</p>
        <p class="text-gray-700">아이디와 비밀번호를 확인하세요.</p>
        <form action="login.jsp" name="err_form" method="post" class="mt-8">
            <button type="submit" class="bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700 transition-colors duration-300">다시 로그인</button>
        </form>
    </div>
</body>
</html>
