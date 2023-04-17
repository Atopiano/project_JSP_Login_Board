<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
   <%
   request.setCharacterEncoding("utf-8");
   String name = request.getParameter("name");
   String pass = request.getParameter("pass");
   String subject = request.getParameter("subject");
   String content = request.getParameter("content");
   int readcount = 0;
   Timestamp date = new Timestamp(System.currentTimeMillis());
   
   Class.forName("com.mysql.jdbc.Driver");
   String dbUrl = "jdbc:mysql://localhost:3306/odbo";
   String dbUser = "root";
   String dbPass = "qwer1234";
   Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
   
   int num = 0;
   String sql = "SELECT MAX(num) FROM board";
   PreparedStatement pstmt = con.prepareStatement(sql);
   ResultSet rs = pstmt.executeQuery();
   
   if(rs.next()) {
       num = rs.getInt("MAX(num)") + 1;
   }
   
   sql = "INSERT INTO board(num, name, pass, subject, content, readcount, date) VALUES (?, ?, ?, ?, ?, ?, ?)";
   pstmt = con.prepareStatement(sql);
   pstmt.setInt(1, num);
   pstmt.setString(2, name);
   pstmt.setString(3, pass);
   pstmt.setString(4, subject);
   pstmt.setString(5, content);
   pstmt.setInt(6, readcount);
   pstmt.setTimestamp(7, date);
   pstmt.executeUpdate();    
   
	 response.sendRedirect("list.jsp");
   %>
</body>
</html>
