<%@page import="member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginMem = (Member)session.getAttribute("loginMem");
	String message = (String)session.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/odi-theme.css">
</head>
<body>
	<!-- common/HEADER -->
    <header>
        
        <div class="header-top-nav">
            <ul class="header-top-right">
               	<li>고객센터</li>
                <% if (loginMem == null) { %>
                	<li onclick="login();">로그인</li>
                <% } else { %>
                	<li onclick="logout();">로그아웃</li>
                <% } %>
            </ul>
        </div>
        
        <div class="header-main">
            <div class="header-logo">
                <img src="<%= request.getContextPath() %>/resources/images/main-logo.png" alt="" onclick="location.href='<%= request.getContextPath() %>'">
            </div>
        </div>
        
        <div class="nav">
            <ul class="nav-bar">
                <li>정장대여</li>
                <li>커뮤니티</li>
                <li onclick="myPage();">마이페이지</li>
                <li>매장찾기</li>
            </ul>
        </div>
        
        <div class="line-notice-wrap">
            <a href="#">[공지] 추석 연휴 기간 사이트 점검</a>
        </div>

    </header>


    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    
		$(function(){
			var msg = "<%= message %>";
			if(msg != "null"){
				alert(msg);
				<% session.removeAttribute("msg");%>
			}
		
		});
		
        var flag = 0;

        $(window).scroll(function(){
            if ($(this).scrollTop() >= 150 && flag == 0) {
                flag = 1;
                $("header").stop().animate({'height':'86.8px'},{queue:false, duration:300});
                $(".header-top-nav").stop().animate({'height':'0px'},{queue:false, duration:300});
                $(".line-notice-wrap").stop().animate({'height':'0px','display':'none'},{queue:false, duration:300});
            } else if ($(this).scrollTop() < 150 && flag == 1) {
                flag = 0;
                $("header").stop().animate({'height':'140px'},{queue:false, duration:300});
                $(".header-top-nav").stop().animate({'height':'20%'},{queue:false, duration:300});
                $(".line-notice-wrap").stop().animate({'height':'18%'},{queue:false, duration:300});
            }
        })
        
        function login(){
            location.href = "<%= request.getContextPath() %>/views/common/login.jsp";
        }

        function logout(){
            location.href = "<%= request.getContextPath() %>/logout.me";
        }
        
        function myPage(){
            location.href = "<%= request.getContextPath() %>/views/user/myPage.jsp";
        }
    </script>
</body>
</html>