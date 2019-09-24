<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>정보수정</title>
    
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
            
            #cnt-userInfo-tb input{
                width:300px;
                height:25px;
            }

            #ctg-editInfo-btn{
                font-family: 'ON-IGothic';
                color:black;
                font-size:21px;
            }
            
            #cnt-userInfo-tb th,#cnt-userInfo-tb td{
                padding-top:5px;
                padding-left:10px;
            }

    </style>
</head>
<body>
    <!-- 헤더 : 인클루드 예정 -->
    <div id="outer">
        <h4 id="header" align="center" style="font-size:30px;">정장대여&nbsp;&nbsp;커뮤니티&nbsp;&nbsp;점포검색&nbsp;&nbsp;마이페이지</h4>
        <hr>
        
        <!-- 바디 : 중간부분(변경되는부분) -->
       <div id="body">
            <div id="myPage-category">
                <div id="ctg-myPage-btn">마이페이지</div>
                <div id="ctg-editInfo-btn">정보수정</div>
                <div id="ctg-reserve-btn">예약내역</div>
                <div id="ctg-myReview-btn">마이리뷰</div>
                <div id="ctg-myPick-btn">찜한 목록</div>
            </div>
        
            <div id="myPage-content" align="center">
                <form action="" method="get">
                    <br><br><br><br>
                
                    <table id="cnt-userInfo-tb">
                        <tr>
                            <td width="130">이메일</td>
                            <td width="400" height="30"><input type="text" name="" value="" readonly></td> 
                        </tr>
                        <tr>
                            <td width="130">이름</td>
                            <td width="400" height="30"><input type="text" name="" value=""></td> 
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td ><input type="password" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>비밀번호 재입력</td>
                            <td><input type="password" name="" value=""></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size:12px; text-align:center; font-weight:200; color:grey;" value="">
                                영어소문자, 숫자, !@#$%^&* 사용
                            </td>
                        </tr>
                        <tr>
                            <td>핸드폰</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                    </table>
                <br><br>
                <button type="submit" onclick="updateInfo();">저장</button>
            </form>
        </div>
    </div>

    <script>
        function updateInfo(){
            /* 유효성검사 */
            
            var bool = confirm("수정사항을 저장하시겠습니까?");
            if(bool){
                alert("저장되었습니다.");
            }
        }
    </script>

    </div>
	<%@ include file="../common/footer.jsp" %>  
	
</body>
</html>