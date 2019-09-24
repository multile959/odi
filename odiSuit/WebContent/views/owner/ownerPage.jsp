<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대여점 페이지</title>
<style>
        @font-face {
            font-family: 'ON-IGothic'; 
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eleven@1.0/ON-IGothic.woff') format('woff'); 
            font-weight: normal;
            font-style: normal;
        }
        *{
            font-family: 'ON-IGothic';
        }

        body{
            width:1200px;
            height:850px;
            margin:auto;
        }

        header, section, footer{
            border:1px solid black;
            width:100%;
            box-sizing:border-box;
            display:block;
        }

        header{height:15%;}
        section{height:75%;}
        footer{
            height:10%;
            position:relative;
        }

        /* header */
        #logo{
            font-size:30px;
            font-weight:bold;
            text-align:center;
            color:navy;
        }

        .loginArea{
            float:right;
        }

        
        /* section */

        #content1, #content2{height:100%; float:left;}

        /* section > menu */

        #content1{
            width:20%;
            border:1px solid black;
        }

        div{
            box-sizing:border-box;
        }

        #menu-outer{
            width:200px;
            height:500px;
        }

        #menu{
            width:100%;
            list-style-type:none;
            padding:0;
            margin:0;
        }
        #menu>li{
            width:100%;
            height:40%;
            text-align:center;
        }

        #menu li a{
            text-decoration:none;
            font-size:17px;
            font-weight:800;
            color:skyblue;
            padding-top:20px;
            display:block;
            height:20%;
            line-height:30px;
        }

        #menu li a:hover{
            background-color:lightgray;
            color:black;
        }

        #menu li>ul{
            list-style-type:none;
            padding:0;
            display:none;
        }
        
        #menu li>a:hover+ul{
            display:block;
            background-color:red;
        }

        #menu li ul:hover{
            display:block;
        }

        #menu>li>ul>li>a{
            font-size:15px;
        }
        

        /* section > content2 */
        #content2{
            width:80%;
        }


    </style>
</head>
<body>

	<%@ include file="../common/header.jsp" %>
    <div style="height: 140px;"></div>

    <!-- section -->
    <section>
        <!-- 좌측 메뉴바 -->
        <section id="content1">
            <div id="menu-outer">
                <ul id="menu">
                    <li><a href="">대여점 옷장</a>
                        <ul>
                            <li><a>우리 대여점 옷장</a></li>
                            <li><a>입고/출고</a></li>
                        </ul>
                    </li>
                    <br>
                    <li><a href="">예약 관리</a>
                        <ul>
                            <li><a href="">예약 내역</a></li>
                            <li><a>예약 변경/취소</a></li>
                        </ul>
                    </li>
                    <br>
                    <li><a href="">게시판</a>
                        <ul>
                            <li><a href="">공지사항</a></li>
                            <li><a href="">리뷰 관리</a></li>
                            <li><a href="">문의내역</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>

        <!-- 내용 -->
        <section id="content2">

        </section>

    </section>
    
    
</body>
</html>