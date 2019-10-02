<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	

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

            #ctg-reserve-btn{
                font-family: 'ON-IGothic';
                color:black;
                font-size:21px;
            }
            
            #cnt-reserve-tb{
                font-size:15px;
                width:100%;
                text-align:center;
                border:1px solid black;
                border-collapse:collapse;
            }
            
            #cnt-reserve-tb th{
                background:gainsboro;
                font-family: 'ON-IGothic';
            }

            #cnt-reserve-tb th, #cnt-reserve-tb td{
                border-bottom: 1px solid #444444;
                padding: 8px;
                font-family: 'ON-IGothic';
            }
            
            .lb{
                font-size:30px;
                font-family: 'ON-IGothic';
            }
            
            #cnt-reserve-detail{
                margin-top:50px;
                width:100%;
            }


            #cnt-reserve-detail-tb{
                padding:8px;
                text-align: left;
            }

             #cnt-reserve-detail-tb th, #cnt-reserve-detail-tb td{
                padding-right:50px;
             }

            #cnt-reserve-commitment{
                color:grey;
            }

            #cnt-reserve-dt-btn, #cnt-reserve-dt-btn div{
                float:right;
                display:inline-block;
            }
			
			#ctg-reserve-btn label{
				color:black;
				font-size:20px;
			}
			.reserve-tb-content:hover{
				color:blue;
				cursor:pointer;
				background:rgb(250,250,250);
			}
    </style>
</head>
<body style="height: auto;">
     <%@ include file = "../common/header.jsp"%>        
   <br><br><br><br><br><br><br><br>
   	
    <div id="outer">
      
        
        <!-- 바디 : 중간부분(변경되는부분) -->
       <div id="body">
            <%@ include file = "myPageCategory.jsp" %>

            <div id="myPage-content">
                    <div id="cnt-reserve-list">
                            <br>
                            <label class="lb">예약내역</label>
                            <br><br>
                            <table id="cnt-reserve-tb">
                                <tr>
                                    <th width="100">예약번호</th>
                                    <th width="200">세트정장</th>
                                    <th width="400">예약시간</th>
                                    <th width="100">상태</th>
                                </tr>
                                <tr class="reserve-tb-content">
                                    <td>105</td>
                                    <td>네이비 스트레치 솔리드 ..</td>
                                    <td>2019-09-11/10:00~13:00</td>
                                    <td>반납완료</td>
                                </tr>
                                <tr class="reserve-tb-content">
                                    <td>105</td>
                                    <td>네이비 스트레치 솔리드 ..</td>
                                    <td>2019-09-11/10:00~13:00</td>
                                    <td>반납완료</td>
                                </tr>
                                <tr class="reserve-tb-content">
                                    <td>105</td>
                                    <td>네이비 스트레치 솔리드 ..</td>
                                    <td>2019-09-11/10:00~13:00</td>
                                    <td>반납완료</td>
                                </tr>
                                <tr class="reserve-tb-content">
                                    <td>105</td>
                                    <td>네이비 스트레치 솔리드 ..</td>
                                    <td>2019-09-11/10:00~13:00</td>
                                    <td>반납완료</td>
                                </tr>
                                
                            </table>
                        </div>
        
                        
                        <div id="cnt-reserve-detail">
                            <label class="lb">상세</label>
                            <div id="cnt-reserve-dt-btn">
                                <div>예약변경</div>
                                <div>&nbsp;&nbsp;&nbsp;</div>
                                <div>예약취소</div>
                            </div>
                            <table id="cnt-reserve-detail-tb">
                                <tr>
                                    <td rowspan="8" id="imgTable">
                                        <img src="../../resources/images/suitImg.png" alt="">
                                    </td>
                                    <th>예약번호 값</th>
                                    <td>상품명 값</td>
                                </tr>
                                <tr>
                                    <th>결제일</th>
                                    <td>2019-09-07 pm04:53 국민카드 62514562485325</td>
                                </tr>
                                <tr>
                                    <th>예약시간</th>
                                    <td>2019-09-11(수) 10:00~13:00</td>
                                </tr>
                                <tr>
                                    <th>예약자명</th>
                                    <td>최진우</td>
                                </tr>
                                <tr>
                                    <th>연락처</th>
                                    <td>010-9956-2211</td>
                                </tr>
                                <tr>
                                    <th>점포명</th>
                                    <td>스튜디오더수트</td>
                                </tr>
                                <tr>
                                    <th>점포위치</th>
                                    <td>서울특별시 강남구 신사동 도산대로49길 40</td>
                                </tr>
                                <tr>
                                    <th>수령상태</th>
                                    <td>반납완료</td>
                                </tr>
        
                            </table>
        
                            <hr>
                            <div id="cnt-reserve-commitment">
                                <p>
                                    않는 품으며, 있는 뛰노는 속에서 위하여 봄바람이다. 소리다. 이것은 보이는 그들은 놀이 심장의 부패를 피고, 풀이 생생하며, 뿐이다. 얼음에 우리는 실로 있는 있다. 피고 꽃 끓는 발휘하기 관현악이며, 있으랴? 인간의 인도하겠다는 예수는 몸이 그
                                    들은 시들어 방황하여도, 힘있다. 못하다 생명을 그들의 소리다.이것은 살았으며, 것이 약동하다. 동력은 있는 너의 실로 커다란 이것이야말로 우리 얼마나 뿐이다. 무엇을 따뜻한 가진수 뜨거운지라, 방황하여도, 무엇을 끓는다. 얼음과 남는 가슴이 봄바람이다.
                                </p>
                            </div>
                            <br>
                            <br>
                        </div>
                   </div>
            </div>

        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>