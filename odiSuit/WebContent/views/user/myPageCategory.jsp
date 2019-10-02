<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
	.myPage-ctg-btn label:hover{
		cursor:pointer;
		color:black;
		font-size:20px;
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
</style>
</head>
<body>
	<div id="myPage-category">
		<div id="ctg-myPage-btn">마이페이지</div>
		<div id="ctg-editInfo-btn" class="myPage-ctg-btn"	onclick="goEditInfo();"><label>정보수정</label></div>
		<div id="ctg-reserve-btn" class="myPage-ctg-btn" 	onclick="goReserve();"><label>예약내역</label></div>
		<div id="ctg-myReview-btn" class="myPage-ctg-btn"   onclick="goMyReview();"><label>마이리뷰</label></div>
		<div id="ctg-myPick-btn" class="myPage-ctg-btn"  	onclick="goMyPick();"><label>찜한목록</label></div>
	</div>
	
	<script>
		function goEditInfo(){
			location.href="<%=request.getContextPath()%>/views/user/myPageEditInfo.jsp";
			
		}
		function goReserve(){
			location.href="<%=request.getContextPath()%>/views/user/myPageReserveList.jsp";
		}
		function goMyReview(){
			location.href="<%=request.getContextPath()%>/views/user/myPageReviewList.jsp";
		}
		function goMyPick(){
			location.href="<%=request.getContextPath()%>/views/user/myPageMyPick.jsp";
		}
	</script>
</body>
</html>