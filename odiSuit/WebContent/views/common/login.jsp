<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
	<style>
    
        .login-container {
            width: 360px;
            margin: 0 auto;
        }
        
        .login-container table {
            width: 100%;
        }

        .login-container td {
            width: 120px;
            height: 50px;
            text-align: center;
            line-height: 50px;
        }

        .login-container .login-msg {
            font-size: 20px;
        }

        .login-container .login-btn {
            height: 95%;
            cursor: pointer;
            position: relative;
        }

        .login-container input {
            border-radius: 5px;
            font-size: 20px;
            height: 95%;
            width: 95%;
        }

        .login-container input[type="email"],input[type="password"] {
            border: 1px solid gray;
        }

        .login-container input[type="submit"] {
            background-color: rgb(94, 94, 94);
            color: white;
            cursor: pointer;
            border: none;
        }

    </style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div style="height: 160px;"></div>
	
    <div class="login-container">
        <form action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return validate();">
            <table>
                <tr>
                    <td colspan="3" class="login-msg">로그인</td>
                </tr>
                <tr>
                    <td>
						아이디
                    </td>
                    <td colspan="2">
                        <input type="email" name="memId">
                    </td>
                </tr>
                <tr>
                    <td>
						비밀번호
                    </td>
                    <td colspan="2">
                        <input type="password" name="memPwd">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="submit" value="LOGIN">
                    </td>
                </tr>
                <tr>
                    <td><div class="login-btn">회원가입</div></td>
                    <td><div class="login-btn">아이디 찾기</div></td>
                    <td><div class="login-btn">비밀번호 찾기</div></td>
                </tr>
            </table>
        </form>
    </div>
	<%@ include file="../common/footer.jsp" %>
	<div style="height: 140px;"></div>
    
    <script>
	    function validate(){
	 		if($("#userId").val().trim().length==0){ // 아이디를 입력 안했을 경우
	 			alert("아이디를 입력해주세요");
	 			$("#userId").focus();
	 			return false;
	 		}
	 		
	 		if($("#userPwd").val().trim().length==0){ // 비밀번호를 입력 안했을 경우
	 			alert("비밀번호를 입력해주세요");
	 			$("#userPwd").focus();
	 			return false;
	 		}
	 	}
    </script>
</body>
</html>