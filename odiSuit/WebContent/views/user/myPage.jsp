<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지</title>
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

            #outer{
                margin-left:auto;
                margin-right:auto;
                width:1200px;
            }
    
            #header{
                width:1200px;
                height:50px;
                color:rgb(75,75,75);                
            }
            
            #body{
                display:inline-block;
            }
    
            #myPage-category, #myPage-content{
                display:inline-block;
                height:800px;
            }
    
            #myPage-category{
                margin-left:20px;
                margin-top:20px;
                width:200px;
                float:left;
            }
    
            #ctg-editInfo-btn, #ctg-reserve-btn, #ctg-myReview-btn, #ctg-myPick-btn{
                padding-top:10px;
                font-size: 18px;
                font-weight: bold;
                color:rgb(50,50,50);
            }

    
            #ctg-myPage-btn{
                font-size:30px;
                font-weight: 900;
            }

            #myPage-content{
                margin-left:50px;
                width:900px;
                font-size:18px;
            }
            

    </style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
   	<div style="height: 140px;"></div>
   	
    <div id="outer">
        <!-- 바디 : 중간부분(변경되는부분) -->
       <div id="body">
           
        <div id="myPage-category">
            <div id="ctg-myPage-btn">마이페이지</div>
            <div id="ctg-editInfo-btn">정보수정</div>
            <div id="ctg-reserve-btn">예약내역</div>
            <div id="ctg-myReview-btn">마이리뷰</div>
            <div id="ctg-myPick-btn">찜한 목록</div>
        </div>

            <div id="myPage-content"></div>

        </div>
    </div>
	<%@ include file="../common/footer.jsp" %>    

</body>
</html>