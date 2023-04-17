<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
	<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.7/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
	<div class="container mx-auto">
		<div class="py-8">
			<p class="text-sm text-gray-500">Home > 등록 회원 관리</p>
			<h1 class="text-2xl font-bold text-gray-900">등록 회원 관리</h1>
			<hr class="my-4 border-t border-gray-300">
			<div class="my-4">
				<%
					String u_id = request.getParameter("userID");
					String u_pw = request.getParameter("userPW");
					String u_mail = request.getParameter("userMAIL");
					
					Statement sm = conn.createStatement();
					ResultSet rs = sm.executeQuery("SELECT id, email, signuptime FROM members");
					
					String str = "";
					int count = 1;
					
					while(rs.next()) {
						str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
								+ " / " + rs.getString("signuptime") + "<br>";
						count++;
					}
					out.print(str);
					
					rs.close();
					sm.close();
					conn.close();
				%>
			</div>
			<hr class="my-4 border-t border-gray-300">
			<div class="flex justify-between">
				<form action="withdraw.jsp" method="post">
					<button class="py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-red-600 hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500">
						◀ 회원 탈퇴시키기
					</button>
				</form>
				<form action="logout.jsp" method="post">
					<button class="py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
						로그 아웃 ▶
					</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
