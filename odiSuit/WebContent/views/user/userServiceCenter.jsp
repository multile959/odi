<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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

        #cnt-service-img{
            margin-left:auto;
            margin-right:auto;
        }
    
        #cnt-service-fnq{
            font-weight:500;
            font-family: 'ON-IGothic';
            
        }
    
        #cnt-service-fnq div{
            margin:0px;
            padding:5px;
            width:500px;
            height:30px;
            background:lightgray;
            cursor:pointer;
        }

        #cnt-service-fnq div:hover{
            background:grey;
        }
    
        .cnt-service-div-clicked{
            border:1px solid lightgray;
            width:505px;
            height:200px;
            display:none;
            margin:0;
        }
        
        a{
            color:black;
        }
        
    </style>
</head>
<body style="height: auto;">
	<div id="outer" style="display:block;">
        <%@ include file = "../common/header.jsp"%>        
	   <br><br><br><br><br><br><br><br>

        <div id="serviceCenter-content" align="center">
            <div id="cnt-service-img">
                <img src="../../resources/images/serviceCenterImg.png">
            </div>
            <br><br>
            <div id="cnt-service-fnq" align="center">

                <p style="font-size:20px;">자주 묻는 질문</p>

                <img src="../../resources/images/hrbar.png" alt="">

                <div class="cnt-service-div">Q.추가 수수료는 어떻게 계산하나요?</div>
                <p class="cnt-service-div-clicked">지금 확인 중입니다.</p>
               
                <div class="cnt-service-div">Q. 대여 기간이 궁금합니다.</div>
                <p class="cnt-service-div-clicked">지금 확인 중입니다.</p>
            
                <div class="cnt-service-div">Q. 오류를 발견했습니다.</div>
                <p class="cnt-service-div-clicked">지금 확인 중입니다.</p>
            
                <div class="cnt-service-div">Q.회원가입에 쓰인 개인정보 보관은 몇년까지하나요?</div>
                <p class="cnt-service-div-clicked">지금 확인 중입니다.</p>
            </div>
            
            <br><br><br><br>

            <div id="cnt-service-chat" align="center">
                <p style="font-size:20px;">문제점을 해결하지 못하셨나요?</p>
                <img src="../../resources/images/hrbar.png" alt=""><br>
                
                <abbr title="이미지를 클릭하면 카카오플친 페이지로 넘어갑니다">
                    <a href="https://pf.kakao.com/_JjGmT" target="_black">
                        <img src="../../resources/images/odiKatalk.png" alt="" id="odiKatalk-img">
                    </a>
                </abbr>
                <p> 
					 1대 1 상담원 시간 : am 8시 ~ pm 5시
                </p>
            </div>
        </div>
        
       	
        <script>
            $(function(){
                $(".cnt-service-div").on("click",function(){
                    console.log($(this).next().css("display"))
                    if($(this).next().css("display") == "none"){
                        $(this).siblings(".cnt-service-div-clicked").slideUp();
                        $(this).next().slideDown();
                    }else{
                        $(this).next().slideUp();
                    }
                });
            });
            </script>
        
    </div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="../common/footer.jsp" %>
    
</body>
</html>