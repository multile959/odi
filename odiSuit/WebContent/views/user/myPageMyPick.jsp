<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
<style>
            #outer{
                margin-left:auto;
                margin-right:auto;
                width:1200px;
            }
            #body{
                display:inline-block;
				height:auto;
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
            #myPage-content{
                margin-left:50px;
                width:900px;
                font-size:18px;
            }

            #mypick-content{
                border:1px solid darkgrey;
                padding:10px;
            }
            
            #cnt-mypick-img-area, #cnt-mypick-tb-area{
                display:inline-block;
                height:240px;
            }

            #cnt-mypick-tb-area{
                width:650px;
            }

            #cnt-mypick-detail-table{
                font-size:16px;
                width:100%;
                height:240px;
            }


            #cnt-mypick-storage-table{
                font-size:15px;
                width:100%;
                text-align:center;
                border:1px solid black;
                border-collapse:collapse;
            }

            #cnt-mypick-storage-table td{
                height:125px;
            }

            #cnt-mypick-storage-table td{
                border-bottom: 1px solid #444444;
            }

            #cnt-mypick-reserve-status{
                color:#444444;
            }

            #cnt-mypick-cancel-btn, #cnt-mypick-reserve-btn{
                padding-top:12.5px;
                color:white;
                width: 130px;
                height:38px;
                display:inline-block;
            }

            #cnt-mypick-cancel-btn{
                background:darkgray;
                margin-right:30px;
            }

            #cnt-mypick-reserve-btn{
                background:#444444;
                margin-left:30px;
            }
            
            .cnt-mypick-detail-bold-td{
                text-align:center;
                width:150px;
                font-weight:bold;
            }

			#ctg-myPick-btn label{
				color:black;
				font-size:20px;
			}
			
			
			#cnt-mypick-storage-table tr:hover{
				color:blue;
				cursor:pointer;
				background:rgb(250,250,250);
			}
    </style>
</head>
<body style="height: auto;">
<!-- 헤더 : 인클루드 예정 -->
    <%@ include file = "../common/header.jsp"%>        
   	<br><br><br><br><br><br><br><br>
        
        <!-- 바디 : 중간부분(변경되는부분) -->
       <div id="body">
           
	        <%@ include file = "myPageCategory.jsp" %>

            <div id="myPage-content">
                <h3>내가 찜한 정장</h3>
                <div id="mypick-content">

                    <div id="cnt-mypick-img-area">
                        <img width="180" height="240" src="../../resources/images/suitImg.png" alt="">
                    </div>

                    <div id="cnt-mypick-tb-area">
                        <table id="cnt-mypick-detail-table">
                            <tr style="font-size:20px;">
                                <td class="cnt-mypick-detail-bold-td">예약번호</td>   
                                <td>예약품목명</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">셔츠</td>   
                                <td>화이트셔츠</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">바지</td>   
                                <td>정장하의</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">자켓</td>   
                                <td>네이비자켓</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">구두</td>   
                                <td>미선택</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">넥타이</td>   
                                <td>미선택</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">예약날짜</td>   
                                <td>예약날짜</td>
                            </tr>
                            <tr>
                                <td colspan="2"><hr></td>

                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">대여점명</td>
                                <td>스튜디오더수트</td>
                            </tr>
                            <tr>
                                <td class="cnt-mypick-detail-bold-td">대여점위치</td>
                                <td>서울특별시 강남구 신사동</td>
                            </tr>
                        </table>
                    </div>
                    <br><br>
              
                    
                    
                    <div align="center">
                        <p id="cnt-mypick-reserve-status">현재 예약날짜에 예약가능한 수량이 없습니다.</p>
                        <div id="cnt-mypick-cancel-btn">삭제하기</div>
                        <div id="cnt-mypick-reserve-btn">예약하기</div>
                    </div>
                </div>
                
                <br>

                <div>
                    <h3>찜한 목록</h3>
                    <table id="cnt-mypick-storage-table">
                        <tr>
                            <td>찜한날짜</td>
                            <td>이미지</td>
                            <td>세트번호 세트명</td>
                        </tr>
                        <tr>
                            <td>찜한날짜</td>
                            <td>이미지</td>
                            <td>세트번호 세트명</td>
                        </tr>
                        <tr>
                            <td>찜한날짜</td>
                            <td>이미지</td>
                            <td>세트번호 세트명</td>
                        </tr>
                    </table>
                
                    <div style="color:grey;" align="center">paging작업</div>
                </div>


			
            </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <%@ include file="../common/footer.jsp" %>
	
</body>
</html>