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

            #cnt-select-reserved-area{
                background:gainsboro;
                width:100%;
            }

            #cnt-review-btn-submit{
                float:right;
            }
			
			#ctg-myReview-btn label{
				color:black;
				font-size:20px;
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
                <h2>리뷰작성</h2>

                <form action="" method="GET">
                    <div id="cnt-select-reserved-area" align="center">
                        <table id="cnt-reserved-list">
                            <tr>
                                <!-- 예약내역 selectBox -->
                                <select name="">
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                </select>
                            </tr>
                            <tr>
                                <td>결제일 : 2019-09-07 국민카드 293847289347928</td>
                            </tr>
                            <tr>
                                <td>예약시간 : 2019년 9월 11일 수요일(하루)<br>10:00시</td>
                            </tr>
                            <tr>
                                <td>점포이름 : 스튜디오 더 수트</td>
                            </tr>
                        </table>
                    </div>

                    <br><br>

                    <div id="cnt-insert-review-area">
                        <textarea name="title" id="" cols="146" rows="1" style="resize:none" placeholder="제목"></textarea><br>
                        <textarea name="content" id="" cols="146" rows="15" style="resize:none" placeholder="내용을 입력해주세요"></textarea><br>
                        <input type="file" name="" id="">
                    </div>

                    <br><br>

                    <div id="cnt-review-btn">
                        <button id="cnt-review-btn-before">이전 페이지</button>
                        <button type="submit" id="cnt-review-btn-submit">등록하기</button>
                    </div>
                </form>

            </div>

        </div>
    </div>
	<%@ include file="../common/footer.jsp" %> 

</body>
</html>