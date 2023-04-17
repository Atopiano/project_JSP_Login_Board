<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글작성</title>
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
  <div class="container mx-auto py-10">
    <h1 class="text-3xl font-bold mb-5">글작성</h1>
    <form action="writePro.jsp" method="post">
      <table class="border border-gray-300">
        <tr>
          <td class="p-2 w-1/4">글쓴이</td>
          <td class="p-2"><input type="text" name="name" class="w-full p-2 border border-gray-300 rounded"></td>
        </tr>
        <tr>
          <td class="p-2">비밀번호</td>
          <td class="p-2"><input type="text" name="pass" class="w-full p-2 border border-gray-300 rounded"></td>
        </tr>
        <tr>
          <td class="p-2">제목</td>
          <td class="p-2"><input type="text" name="subject" class="w-full p-2 border border-gray-300 rounded"></td>
        </tr>
        <tr>
          <td class="p-2">내용</td>
          <td class="p-2"><textarea rows="10" cols="20" name="content" class="w-full p-2 border border-gray-300 rounded"></textarea></td>
        </tr>
        <tr>
          <td class="p-2" colspan="2"><input type="submit" value="글쓰기" class="w-full p-2 bg-blue-500 text-white font-bold rounded hover:bg-blue-700"></td>
        </tr>
      </table>
    </form>
    <p class="mt-5">
      <form action="list.jsp" method="post">
        <input type="submit" value="글목록 돌아가기" class="bg-red-500 p-2 text-white font-bold rounded hover:bg-red-700">
      </form>
  </div>
</body>
</html>
