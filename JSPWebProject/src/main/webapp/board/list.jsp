<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<!-- tailwindcss 적용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
	<style>
		.container {
			max-width: 1200px;
		}
		a:hover {
			text-decoration: underline;
		}
	</style>
</head>
<body class="container mx-auto bg-gray-100">
<%
Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/odbo";
String dbUser="root";
String dbPassword="qwer1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPassword);
String sql="select * from board order by num desc";
PreparedStatement pstmt=con.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
%>
<div class="container mx-auto my-8">
<div class="bg-white rounded-lg shadow-md p-8">
<h1 class="text-4xl font-bold mb-4">자유 게시판</h1>
<div class="text-left mb-4">
    <form action="writeForm.jsp" method="post" class="inline-block mr-4">
        <input type="submit" value=" 글 작성 " class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
    </form>
    <form action="../main/membership.jsp" method="get" class="inline-block">
        <input type="submit" value=" 사용자 공간으로 이동 " class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
    </form>
</div>
<p class="mt-4">
<table class="w-full table-fixed">
<thead>
    <tr class="bg-gray-100">
        <th class="w-1/6 p-2 text-left">번호</th>
        <th class="w-1/2 p-2 text-left">제목</th>
        <th class="w-1/6 p-2 text-left">작성자</th>
        <th class="w-1/6 p-2 text-left">날짜</th>
    </tr>
</thead>
<tbody>
<%
while(rs.next()){
    %>
    <tr class="bg-white">
        <td class="w-1/6 p-2 text-left"><%=rs.getInt("num")%></td>
        <td class="w-1/2 p-2 text-left"><a href="content.jsp?num=<%=rs.getInt("num")%>" class="hover:underline"><%=rs.getString("subject")%></a></td>
        <td class="w-1/6 p-2 text-left"><%=rs.getString("name")%></td>
        <td class="w-1/6 p-2 text-left"><%=rs.getTimestamp("date")%></td>
    </tr>
    <%
}
%>
</tbody>
</table>
</div>
</div>
</body>
</html>
