<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>글수정</title>
  <!-- Tailwind CSS 추가 -->
  <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
  <div class="container mx-auto my-8">
    <h1 class="text-2xl font-bold mb-4"> 글수정 </h1>
    <%
    int num=Integer.parseInt(request.getParameter("num"));
    Class.forName("com.mysql.jdbc.Driver");
    String dbUrl="jdbc:mysql://localhost:3306/odbo";
    String dbUser="root";
    String dbPass="qwer1234";
    Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

    String sql="select * from board where num=?";
    PreparedStatement pstmt=con.prepareStatement(sql);

    pstmt.setInt(1, num);
    ResultSet rs=pstmt.executeQuery();

    while(rs.next()){
    %>
    <form action="updatePro.jsp" method="post" class="bg-white rounded-lg shadow-md p-8">
      <input type="hidden" name="num" value="<%=rs.getInt("num") %>">
      <div class="mb-4">
        <label for="name" class="block font-medium text-gray-700">글쓴이</label>
        <input type="text" name="name" id="name" class="border border-gray-400 p-2 w-full" value="<%=rs.getString("name") %>" />
      </div>
      <div class="mb-4">
        <label for="pass" class="block font-medium text-gray-700">비밀번호</label>
        <input type="password" name="pass" id="pass" class="border border-gray-400 p-2 w-full" />
      </div>
      <div class="mb-4">
        <label for="subject" class="block font-medium text-gray-700">제목</label>
        <input type="text" name="subject" id="subject" class="border border-gray-400 p-2 w-full" value="<%=rs.getString("subject") %>" />
      </div>
      <div class="mb-4">
        <label for="content" class="block font-medium text-gray-700">내용</label>
        <textarea rows="10" cols="20" name="content" id="content" class="border border-gray-400 p-2 w-full"><%=rs.getString("content") %></textarea>
      </div>
      <div class="text-center">
        <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
          글수정
        </button>
      <div class="text-center mt-4">
			  <a href="list.jsp" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded">
			    글목록 돌아가기
			  </a>
			</div>
      </div>
    </form>
    <%} %>
  </div>
</body>
</html>
