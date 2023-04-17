<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="bg-gray-100">
<head>
<meta charset="UTF-8">
<title>글삭제</title>
<!-- tailwindcss CDN 추가 -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<h1 class="text-3xl text-center my-4">글삭제</h1>
<%
int num=Integer.parseInt(request.getParameter("num"));
%>
<form action="deletePro.jsp" method="get" class="max-w-md mx-auto">
<input type="hidden" name="num" value="<%=num %>">
<table class="table-auto mx-auto">
<tr><td class="px-4 py-2">비밀번호</td> <td><input type="password" name="pass" class="border rounded-md px-2 py-1"></td> </tr>
<tr><td colspan="2"><input type="submit" value="글삭제" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full"></td>  </tr>
</table>
</form>
<div class="text-center mt-4">
  <a href="list.jsp" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded">
    글목록 돌아가기
  </a>
</div>
</body>
</html>
