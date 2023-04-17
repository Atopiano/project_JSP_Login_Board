<%@ page import = "java.sql.*" %>
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost/odbo";
	String user = "root";
	String passwd = "qwer1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, passwd);
%>