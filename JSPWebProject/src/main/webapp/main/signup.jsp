<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 가입 </title>
	<script type="text/javascript">
		function checkFun() {
		
			var f = document.user_info;
			if(f.userID.value.length < 2 || f.userID.value.length > 16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				f.userID.focus();
				return false;
			}
			else if(f.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.userPW.focus();
				return false;
			}
			else if(f.userMAIL.value == "")
			{
				alert("이메일 주소는 반드시 입력해야 합니다.");
				f.userMAIL.focus();
				return false;
			}
			else return true;
		}
	</script>
	<!-- Tailwind CSS CDN 추가 -->
	<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
	<nav class="bg-white p-4 font-semibold text-gray-600">
		<span class="text-gray-400">Home</span> > 회원 가입
	</nav>
	<hr class="mt-2">
	<form action="insertDB.jsp" name="user_info"
			method="post" onsubmit="return checkFun()" class="bg-white w-96 mx-auto py-8 px-4 shadow-lg rounded-lg">
		<fieldset>
			<legend class="text-lg font-medium mb-4">회원 가입 화면</legend>
			
			<div class="mb-4">
				<label for="userID" class="block text-gray-700 font-medium mb-2">아이디</label>
				<input type="text" id="userID" size="16" name="userID" class="border rounded px-3 py-2 w-full">
			</div>
			
			<div class="mb-4">
				<label for="userPW" class="block text-gray-700 font-medium mb-2">비밀번호</label>
				<input type="password" id="userPW" size="16" name="userPW" class="border rounded px-3 py-2 w-full">
			</div>
			
			<div class="mb-4">
				<label for="userMAIL" class="block text-gray-700 font-medium mb-2">이메일</label>
				<input type="email" id="userMAIL" size="30" name="userMAIL" class="border rounded px-3 py-2 w-full">
			</div>
			
			<hr class="my-4">
			
			<div class="flex justify-between">
				<input type="reset" value="◀ 다시작성" class="bg-gray-200 hover:bg-gray-300 py-2 px-4 rounded cursor-pointer">
				<input type="submit" value="가입하기 ▶" class="bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded cursor-pointer">
			</div>
			
			<br>
		</fieldset>
	</form>
	<div class="flex justify-center mt-8">
	<a href="main.jsp" class="bg-red-500 hover:bg-red-700 text-white py-2 px-4 rounded cursor-pointer">메인 메뉴로 돌아가기</a>
	</div>
</body>
</html>
