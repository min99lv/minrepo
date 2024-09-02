<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
        }
        .signup-container {
            width: 300px;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .signup-container button {
            width: 100%;
            padding: 10px;
            background-color: #48bb78;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        .signup-container button:hover {
            background-color: #38a169;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>회원가입</h2>
        <form id="signupForm">
            <input type="text" id="signupUsername" placeholder="아이디" required>
            <input type="email" id="signupEmail" placeholder="이메일" required>
            <input type="password" id="signupPassword" placeholder="비밀번호" required>
            <input type="text" id="signupPhone" placeholder="전화번호" required>
            <button type="submit">회원가입</button>
        </form>
    </div>

    <script>
        document.getElementById('signupForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const username = document.getElementById('signupUsername').value;
            const email = document.getElementById('signupEmail').value;
            const password = document.getElementById('signupPassword').value;
            const phone = document.getElementById('signupPhone').value;

            // API 요청 예제 (회원가입 처리)
            fetch('/api/signup', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ username, email, password, phone })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('회원가입 성공');
                    // 회원가입 성공 시 동작
                } else {
                    alert('회원가입 실패: ' + data.message);
                }
            })
            .catch(error => console.error('Error:', error));
        });
    </script>
</body>
</html>
