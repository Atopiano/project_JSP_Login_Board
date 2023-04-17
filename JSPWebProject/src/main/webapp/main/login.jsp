<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.17/tailwind.min.css">
    <script type="text/javascript">
        function checkFun() {
            var f = document.loginForm;
            if (f.uID.value == "") {
                alert("아이디를 입력해 주세요.");
                f.uID.focus();
                return false;
            } else if (f.uPW.value == "") {
                alert("비밀번호를 입력해 주세요.");
                f.uPW.focus();
                return false;
            } else return true;
        }
    </script>
</head>
<body class="bg-gray-100">
    <div class="max-w-lg mx-auto my-16">
        <nav class="text-sm font-medium text-gray-500">
            Home > 로그인
        </nav>
        <hr class="my-6">
        <form name="loginForm" action="loginSuccess.jsp" method="post" onsubmit="return checkFun()">
            <fieldset class="bg-white shadow-md p-8 rounded-lg">
                <legend class="text-lg font-medium mb-4">로그인 화면</legend>
                <div class="mb-4">
                    <label for="uID" class="text-gray-700">아이디</label>
                    <input type="text" name="uID" id="uID" class="block w-full border-gray-300 rounded-md shadow-sm mt-1 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div class="mb-4">
                    <label for="uPW" class="text-gray-700">비밀번호</label>
                    <input type="password" name="uPW" id="uPW" class="block w-full border-gray-300 rounded-md shadow-sm mt-1 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div class="flex justify-end">
                    <button type="submit" class="bg-indigo-500 text-white px-4 py-2 rounded-md hover:bg-indigo-600 focus:outline-none focus:bg-indigo-600">
                        로그인
                    </button>
                </div>
            </fieldset>
        </form>
    </div>
</body>
</html>
