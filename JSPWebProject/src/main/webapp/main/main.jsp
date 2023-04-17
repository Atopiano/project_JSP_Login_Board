<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- Tailwind CSS 추가 -->
<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
<style>
  /* 이미지 대신 텍스트를 꾸미기 위한 스타일 */
  .welcome-box {
    width: 400px;
    height: 300px;
    background-color: #F9D9C9; /* 배경색 지정 */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
	.container {
			max-width: 1200px;
		}
  .welcome-text {
    font-size: 30px; /* 폰트 크기 지정 */
    font-weight: bold; /* 폰트 굵기 지정 */
    margin-bottom: 10px;
  }
</style>
</head>
<body class="container mx-auto bg-gray-100">
<div class="container mx-auto my-8">
<div class="bg-white rounded-lg shadow-md p-8">
	<center class="mt-8">
	<div class="welcome-box">
		<div class="welcome-text">Welcome to atopiano community</div>
		<p><br>atopiano 커뮤니티에 오신것을 환영합니다!<br>
		로그인 하셔서 게시판 기능을 이용해 보세요 ~.~</p>
	</div>
	<p class="mt-8">
	<table class="border-collapse mx-auto">
		<tr>
			<td class="p-4">
				<form action="login.jsp" method="post">
					<button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
						◀ 관리자 접속하기
					</button>
				</form>
			</td>
			<td class="p-4">
				<form action="userlogin.jsp" method="post">
					<button class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
						사용자 접속하기
					</button>
				</form>
			</td>
			<td class="p-4">
				<form action="signup.jsp" method="post">
					<button class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded">
						회원 가입 ▶
						</button>
				</form>
			</td>
		</tr>
	</table>
	</p>
	</center>
</div>
</div>
</body>
</html>
