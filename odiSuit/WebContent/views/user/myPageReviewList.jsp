<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            
            
            #cnt-review-btn div{
                margin-top:50px;
                display:inline-block;
            }
            
            #cnt-review-table{
                font-size:15px;
                width:100%;
                text-align:center;
                border:1px solid black;
                border-collapse:collapse;
            }

            #cnt-review-table th, #cnt-review-table td{
                border-bottom: 1px solid #444444;
            }

            #cnt-review-table th{
                background:gainsboro;
                padding: 8px;
            }

            #cnt-review-table td{
                height:80px;
            }
			
			#ctg-myReview-btn label{
				color:black;
				font-size:20px;
			}
			
			.review-tb-content:hover{
				color:blue;
				cursor:pointer;
				background:rgb(250,250,250);
			}
    </style>
</head>
<body style="height: auto;">
   <%@ include file = "../common/header.jsp"%>        
   <br><br><br><br><br><br><br><br>

        <!-- 바디 : 중간부분(변경되는부분) -->
       <div id="body">
            <%@ include file = "myPageCategory.jsp" %>

            <div id="myPage-content">
                <form action="">
                    <div id="cnt-review-btn">
                        <div>리뷰작성</div>
                        <div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div>리뷰수정</div>
                    </div>
                    <br><br>
                    <div>
                        <table id="cnt-review-table">
                            <tr>
                                <th>리뷰번호</th>
                                <th>작성날짜</th>
                                <th>제목(댓글개수)</th>
                                <th>썸네일</th>
                            </tr>
                            <tr class="review-tb-content">
                                <td>1</td>
                                <td>2019-09-20</td>
                                <td>완전좋아요(1)</td>
                                <td><img src="img/profileimg.png"></td>
                            </tr>
                            <tr class="review-tb-content">
                                <td>2</td>
                                <td>2019-09-20</td>
                                <td>완전좋아요(1)</td>
                                <td><img src="img/profileimg.png"></td>
                            </tr>
                            
                            <tr class="review-tb-content">
                                <td>3</td>
                                <td>2019-09-20</td>
                                <td>완전좋아요(1)</td>
                                <td><img src="img/profileimg.png"></td>
                            </tr>
                            <tr class="review-tb-content">
                                <td>4</td>
                                <td>2019-09-20</td>
                                <td>완전좋아요(1)</td>
                                <td><img src="img/profileimg.png"></td>
                            </tr>
                        </table>
                        <div align="center">페이징작업</div>
                    </div>
                </form>
            </div>

        </div>
	<%@ include file="../common/footer.jsp" %> 

</body>
</html>