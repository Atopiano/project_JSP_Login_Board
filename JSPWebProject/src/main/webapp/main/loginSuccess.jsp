<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 관리자 로그인 </title>
	<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.17/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
	<nav class="bg-white py-4">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<span class="text-gray-500 font-medium">Home > 관리자 로그인</span>
		</div>
	</nav>
	<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
		<div class="max-w-md mx-auto bg-white p-8 border border-gray-300 shadow-sm rounded-md">
			<%
			String u_id = request.getParameter("uID");
			String u_pw = request.getParameter("uPW");
			if(u_id.equals("space") && u_pw.equals("123456"))
			{
				session.setAttribute("memberId", u_id);
				session.setAttribute("memberPw", u_pw);
				out.println("새로운 세션 생성 성공 ! <br>");
				out.println("관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
			}
			else
			{
				response.sendRedirect("loginErr.jsp");
			}
			%>
			<div class="mt-8">
				<table class="w-full">
					<tr>
						<td class="text-center">
							<form action="membersList.jsp" method="post">
								<button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
									◀ 등록 회원 관리하기
								</button>
							</form>
						</td>
						<td class="text-center">
							<form action="logout.jsp" method="post">
								<button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
									로그 아웃 ▶
								</button>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
