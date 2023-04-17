<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상세 내용</title>
	<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
	<style>
		.container {
			max-width: 1200px;
		}
	</style>
</head>
<body class="container mx-auto bg-gray-100">
  <%
  request.setCharacterEncoding("utf-8");
  int num=Integer.parseInt(request.getParameter("num"));
  Class.forName("com.mysql.jdbc.Driver");
  String dbUrl="jdbc:mysql://localhost:3306/odbo";
  String dbUser="root";
  String dbPassword="qwer1234";
  Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPassword);
  String sql="update board set readcount=readcount+1 where num=?";
  PreparedStatement pstmt=con.prepareStatement(sql);
  pstmt.setInt(1, num);
  pstmt.executeUpdate();
  sql="select * from board where num=?";
  pstmt=con.prepareStatement(sql);
  pstmt.setInt(1, num);
  ResultSet rs=pstmt.executeQuery();
  if(rs.next()){
  %>
  <div class="container mx-auto my-8">
	<div class="bg-white rounded-lg shadow-md p-8">
  <div class="max-w-4xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
    <h1 class="text-3xl font-bold mb-2"><%=rs.getString("subject")%></h1>
    <hr class="mb-4">
    <p class="text-gray-500 text-sm mb-4">
      작성자: <%=rs.getString("name")%> |
      날짜: <%=rs.getTimestamp("date")%> |
      조회수: <%=rs.getInt("readcount")%>
    </p>
    <div class="bg-white p-6 rounded-lg shadow-md mb-4 border border-black">
      <p><%=rs.getString("content")%></p>	
    </div>
    <div class="flex justify-between items-center">
      <form action="list.jsp" method="post">
        <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
          글목록
        </button>
      </form>
      <div>
        <form action="updateForm.jsp?num=<%=rs.getInt("num")%>" method="post" class="inline-block">
          <button type="submit" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
            글수정
          </button>
        </form>
        <form action="deleteForm.jsp?num=<%=rs.getInt("num")%>" method="post" class="inline-block">
          <button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
            글삭제
          </button>
        </form>
      </div>
    </div>
  </div>
  </div>
  </div>
  <%
  }
  %>
</body>
</html>
