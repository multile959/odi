<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	// 현재로그인한 유저의 정보
	Member m = (Member)session.getAttribute("loginUser");

	//String mId = m.getMemId();
	//String mName = m.getMemName();
	//String mPhone = m.getPhone();
	
	// 더미데이터
	String mId ="hyeonj@naver.com";
	String mName = "김현지";
	String mPhone = "01012345678";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>정보수정</title>
    
    <style>
            #outer{
                margin-left:auto;
                margin-right:auto;
                width:1200px;
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
    
            #myPage-content{
                margin-left:50px;
                width:900px;
                font-size:18px;
            }
            
            #cnt-userInfo-tb input{
                width:300px;
                height:25px;
            }
			
            
            #cnt-userInfo-tb th,#cnt-userInfo-tb td{
                padding-top:5px;
                padding-left:10px;
            }
	
	
			#ctg-editInfo-btn label{
				color:black;
				font-size:20px;
			}
			
			.mypage-btns{
                color:white;
                width: 130px;
                height:38px;
                display:inline-block;
                background:#444444;
                border:1px solid #444444;
                font-size:18px;
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
        
            <div id="myPage-content" align="center">
                <form action="" method="post" onsubmit="return updateInfo();">
                    <br><br><br><br>
                
                    <table id="cnt-userInfo-tb">
                        <tr>
                            <td width="130">이메일</td>
                            <td width="400" height="30"><input type="text" id="inputEmail" name="email" value="<%=mId%>" readonly></td> 
                        </tr>
                        <tr>
                            <td width="130">이름</td>
                            <td width="400" height="30"><input type="text" id="inputName" name="name" value="<%=mName%>"></td> 
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td ><input type="password" id="inputPwd1" name="pwd1" value=""></td>
                        </tr>
                        <tr>
                            <td>비밀번호 재입력</td>
                            <td><input type="password" id="inputPwd2" name="pwd2" value=""></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size:12px; text-align:center; font-weight:200; color:grey;">
                                	영어소문자, 숫자, !@#$%^&* 사용
                            </td>
                        </tr>
                        <tr>
                            <td>핸드폰</td>
                            <td><input type="text" id="inputPhone" name="phone" value="<%=mPhone%>"></td>
                        </tr>
                    </table>
                <br><br>
                <button class="mypage-btns" type="submit">저장</button>
                <script>
        		function updateInfo(){
           			 /* 유효성검사 */
            
					var name = $("#inputName");
					var pwd1 = $("#inputPwd1");
					var pwd2 = $("#inputPwd2");
					var phone = $("#inputPhone");
					
					var regExp = /^[a-z][a-z0-9!@#$%^&*]{3,}$/;
					if(!regExp.test(pwd1.val())){
						alert("유효하지 않은 비밀번호입니다. 다시입력해주세요!");
						pwd1.focus().val("");
						pwd2.val("");
						return false;
					}
					
					if(pwd1.val() != pwd2.val()){
						alert("비밀번호가 동일하지 않습니다!");
						pwd2.focus().val("");
						return false;
					}
					
           			var bool = confirm("수정사항을 저장하시겠습니까?");
					
           			if(bool){
           				return bool;
           			}
        		}
    			</script>
            </form>
        </div>
    </div>

    

    
	<%@ include file="../common/footer.jsp" %>  
	
</body>
</html>