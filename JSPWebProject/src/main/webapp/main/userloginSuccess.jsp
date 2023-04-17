<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 성공</title>
	<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
	<style>
		.container {
			max-width: 1200px;
		}
	</style>
</head>
<body class="bg-gray-100">
	<div class="container mx-auto my-8">
	<div class="bg-white rounded-lg shadow-md p-8">
	<h1 class="text-3xl font-bold mb-4">로그인 성공!</h1>
	<hr class="mb-4">	
	<%
    String u_id = request.getParameter("uID");
    String u_pw = request.getParameter("uPW");

    String sql = "SELECT * FROM members WHERE id='" + u_id + "' AND passwd='" + u_pw + "'";
    Statement sm = conn.createStatement();
    ResultSet rs = sm.executeQuery(sql);

    if(rs.next()){
		session.setAttribute("memberId", u_id);
		session.setAttribute("memberPw", u_pw);
		
		out.println("<p style='font-size: 20px;'>새로운 세션 생성 성공!</p>");
		out.println("<p style='font-size: 20px;'>[" + u_id + "]님이 입장하였습니다.</p>");
		out.println("<br>");
    }
    else{
		response.sendRedirect("userloginErr.jsp");
    }
    rs.close();
    sm.close();
    conn.close();
	%>
	<form action="membership.jsp" method="post">
		<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
          사용자 공간으로 이동
    </button>
	</form>
	</div>
	</div>
</body>
</html>
