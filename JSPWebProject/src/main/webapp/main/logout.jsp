<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Login Error </title>
<!-- tailwindcss 적용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
</head>
<body class="container mx-auto bg-gray-100">
<%
// session 무효화
session.invalidate();
%>
	<div class="container mx-auto my-8">
		<div class="bg-white rounded-lg shadow-md p-8">
			<h1 class="text-4xl font-bold mb-4">로그 아웃</h1>
			<div class="text-left mb-4">
				<form action="main.jsp" method="post">
					<input type="submit" value=" 메인 메뉴 " class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
				</form>
			</div>
			<p class="mt-4">
				세션을 종료 후 로그 아웃을 수행하였습니다. <br>
				그동안 수고 많으셨습니다.
			</p>
		</div>
	</div>
</body>
</html>
