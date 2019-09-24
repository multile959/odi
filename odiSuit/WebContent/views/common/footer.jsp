<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>footer</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/odi-theme.css">
</head>
<body>

    <!-- common/FOOTER -->
    <footer>
        <hr style="margin: 0;">

        <div class="footer-left">
            <img src="<%= request.getContextPath() %>/resources/images/main-logo.png" alt="" id="footer-logo" onclick="gohome();">
        </div><div class="footer-info">
            <div id="footer-info1" onclick="gohome();">오디</div>
            <div id="footer-info2">이용약관</div>
            <div id="footer-info3">개인정보취급방침</div><br>
            <div>통신판매업신고번호 2019-서울한강-1234</div><br>
            <div>주소 : 서울특별시 강남구 역삼동</div><br>
            <div>project_cin@naver.com</div>
        </div>
        <div class="footer-copyright">
            COPYRIGHT &#169; CIN
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        function gohome(){
            location.href = "<%= request.getContextPath() %>";
        }
    </script>
</body>
</html>