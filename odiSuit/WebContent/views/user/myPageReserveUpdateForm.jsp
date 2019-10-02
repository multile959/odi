<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
        <h1>예약번호 상품이름</h1>
        
        <table>
            <tr><td colspan="2" align="center">이전</td></tr>
            <tr>
            <td>예약시간 : </td>
                <td><label for="">갖고오는값</label></td>
            </tr>
            <tr>
                <td>수령시간 : </td>
                <td><label for="">갖고오는값</label></td>
            </tr>
        </table>

        <br>

        <form action="" method="GET">
            <table>
                <tr><td><label>예약시작일</label></td>
                    <td><input type="date"></td></tr>
                <tr>
                    <td><label>예약일수</label></td>
                    <td>
                        <select>
                            <option>1일</option>
                            <option>2일</option>
                            <option>3일</option>
                            <option>4일</option>
                            <option>5일</option>
                            <option>6일</option>
                            <option>7일</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>수령시간</label></td>
                    <td>
                        <select>
                            <option>AM 9:00</option>
                            <option>AM 10:00</option>
                            <option>AM 11:00</option>    
                            <option>PM 1:00</option>
                            <option>PM 2:00</option>
                            <option>PM 3:00</option>
                            <option>PM 4:00</option>
                        </select>
                    </td>
                </tr>
            </table>
            
            <br><br>
            <p>예약내용을 변경하시겠습니까?</p>
            <button type="submit">네</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button>아니오</button>
            

        </form>
        
    </div>
</body>
</html>