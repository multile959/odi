<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 페이지</title>
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
    
        </style>
        <!-- font-size 15로 통일-->
    </head>
    
    <body>
    	<%@ include file="../common/header.jsp" %>
       	<div style="height: 140px;"></div>
    	
        <div class="orderArea">
            <h1 align="center"><strong>ORDER SHEET</strong></h1>
            <div class="title">
                <h3>예약 정보</h3>
                <p class="required">필수입력사항</p>
            </div>
            <div class="orderInfo">
                <h3>상품 주문내역</h3>
                <table>
                    <tr>
                        <th scope="col"><input type="checkbox" name="Infohead"></th>
                        <th scope="col">이미지</th>
                        <th scope="col">상품정보</th>
                        <th scope="col">판매가</th>
                        <th scope="col">수량</th>
                        <th scope="col">대여기간</th>
                        <th scope="col">합계</th>
                    </tr>
                    <tr>
                        <th scope="col"><input type="checkbox" name="Infofooter" id="Infofooter"></th>
                        <th scope="col">이미지</th>
                        <th scope="col">정보</th>
                        <th scope="col">판매가</th>
                        <th scope="col">수량</th>
                        <th scope="col" colspan="2">대여기간별 가격추가</th>
                        <th scope="col"></th>
                    </tr>
                </table>
                <div class="Total_sum">
                    <input type="text" name="total_price" id="total_price" placeholder="예약정보 가격 = 합계" size="30">
                </div>
            </div>
            <div class="typeWrite">
                <table border="0" summary="">
                    <caption>정보 입력</caption>
    
                    <tbody></tbody>
    
                    <tbody class="">
                        <tr class="">
                        <tr>
                            <th scope="row">예약 성명*</th>
                            <td><input id="rname" name="rname" class="inputTypeText" placeholder="" size="15" value="" type="text"></td>
                        </tr>
                        <br>
                        <tr>
                            <th scope="row">성별*</th>
                            <td><input type="radio" name="gender_m" id="gender_m"> 남자
                                <input type="radio" name="gender_w" id="gender_w"> 여자
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">주소*</th>
                            <td>
                                <input id="raddr1" name="raddr1" class="inputTypeText" placeholder="" size="40" readonly="1"
                                    value="" type="text"> <span class="grid">기본주소</span><br>
                                <input id="raddr2" name="raddr2" class="inputTypeText" placeholder="" size="40" value=""
                                    type="text">
                                <span class="grid">나머지주소</span><span class="grid ">(선택입력가능)</span>
                            </td>
                        </tr>
                        <tr class="">
                            <th scope="row">휴대전화* <span class=""></span>
                            </th>
                            <td><select id="rphone2_1" name="rphone2_[]">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4" size="4" value="" type="text">-<input
                                    id="rphone2_3" name="rphone2_[]" maxlength="4" size="4" value="" type="text">
                                &nbsp;&nbsp;<input type="button" name="Authentication" id="Authentication" value="인증">
                            </td>
    
                        </tr>
                        <tr class="displaynone">
                    </tbody>
    
                    <tbody class="email ">
                        <tr>
                            <th scope="row">이메일</th>
                            <td>
                                <input id="oemail1" name="oemail1" class="mailId" value="" type="text">@<input id="oemail2"
                                    name="oemail2" class="mailAddress" value="" type="text"><select id="oemail3">
                                    <option value="" selected="selected">- 이메일 선택 -</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="daum.net">daum.net</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hotmail.com">hotmail.com</option>
                                    <option value="yahoo.com">yahoo.com</option>
                                    <option value="empas.com">empas.com</option>
                                    <option value="korea.com">korea.com</option>
                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="etc">직접입력</option>
                                </select>
                            </td>
                        </tr></tbody>
                        
                        <tbody class="requestmsg displaynone">
                            <tr class="">
                                <th scope="row">요청메시지 <span class="displaynone"></span>
                                </th>
                                <td>
                                    <div class="automsg displaynone">
                                        <div class="re_text">
                                            <textarea name="requestmsg" id="requestmsg" cols="55" rows="5"></textarea><br>
                                        </div>
                                        <label> 자동저장</label>
                                        <ul>
                                            <li>요청메시지란에는 예약시 참고할 사항이 있으면 적어주십시오.</li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <div></div>
                        </tbody>

                    <div class="shop_policy">
                        <table>
                            <tr>
                                <td><input type="checkbox" name="checkbox" id="checkbox"></td>
                                <td>쇼핑몰 이용약관</td>
                            </tr>
                        </table>
                        <br>
                        <div class="text_policy">
                            <textarea name="text_policy" id="text_policy" cols="55" rows="5"></textarea>
                        </div>
                    </div>
                    <br>
                    <div class="order_history">
                        <table>
                            <tr>
                            <td>&gt;&gt; 예약내역 조회/변경/취소/연장</td>
                            </tr>
                        </table>
                        <div class="Or_history_text">
                            <br>
                            <textarea name="history_txt" id="history_txt" cols="55" rows="5"></textarea>
                        </div>
                    </div>
    
                    <div class="title">
                        <h3>결제예정 금액정보</h3>
                    </div>
                    <div class="totalArea">
                        <div class="totalArea">
                            <div class="total TypeList">
                                <table class="order_total_tb" border="1" summary="">
                                    <caption>결제 예정 금액</caption>
                                    <colgroup>
                                        <col style="width:33.33%">
                                        <col style="width:33.33%" class="">
                                        <col style="width:33.33%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">
                                                <strong>총 주문 금액</strong> &nbsp; &nbsp;
                                            </th>
                                            <th scope="col" class="">
                                                <strong>총 </strong><strong id="total_addsale_text" class="">할인</strong><strong
                                                    id="plus_mark" class=""> + </strong><strong id="total_addpay_text"
                                                    class="">부가결제</strong><strong>
                                                    금액</strong>
                                            </th>
                                            <th scope="col"><strong>총 결제예정 금액</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody class="center">
                                        <tr>
                                            <td class="price">
                                                <div class="box txt16">
                                                    <strong><span id="total_order_price_view" class="txt21">99,000</span>
                                                        won</strong>
                                                    <span class="displaynone"><span id="total_order_price_ref_view"></span></span>
                                                </div>
                                            </td>
                                            <td class="option ">
                                                <div class="box txt16">
                                                    <strong>-</strong> <strong><span id="total_sale_price_view" class="txt21">0</span>
                                                        won</strong> <span class="displaynone"><span id="total_sale_price_ref_view"></span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="box txtEm txt16">
                                                    <strong><span id="total_order_sale_price_view" class="txt21">99,000</span>
                                                        won</strong> <span class="displaynone"><span id="total_order_sale_price_ref_view"></span></span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="detail">
                                <div class="ec-base-table gMerge ">
                                    <table class="order_total_tb" border="1" summary="">
                                        <caption>할인 내역</caption>
                                        <colgroup>
                                            <col style="width:139px">
                                            <col style="width:auto">
                                        </colgroup>
                                        <tbody>
                                            <tr class="sum txt14">
                                                <th scope="row"><strong>총 할인금액</strong></th>
                                                <td><strong id="total_addsale_price_view">0</strong> won</td>
                                            </tr>
                                            <tr class="displaynone mCouponSelect" style="display: table-row;">
                                                <th scope="row">쿠폰할인</th>
                                            </tr>
                                            <tr class="mCouponModify" style="display: none;">
                                                <th scope="row">쿠폰할인</th>
                                                <td>
                                                    <span class="mTotalCouponDiscount">0 won</span>
                                                    <div id="divCpnView" style="display:none" class="coupon">
                                                        <span id="txt_cpn_contents"></span>
                                                        <span id="txt_cpn_price"></span>
                                                        <span id="txt_cpn_attr_D"></span>
                                                        <span id="txt_cpn_attr_M"></span>
                                                        <span id="txt_cpn_attr_C"></span>
                                                    </div>
                                                    <div id="divCpn" style="display:none" class="couponArea"></div>
                                                </td>
                                            </tr>
                                            <tr class="displaynone" id="add_discount_price">
                                                <th scope="row">추가할인금액</th>
                                                <td>
                                                    <span class="gSpace20"><span id="total_price_view">0</span> won</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            
                            <div class="info_title">
                                <h3>결제 수단</h3>

                                <div class="payment_method">
                                    <table>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="card_pay" id="card_pay">
                                                <label for="">카드 결제</label>
                                            </td>   
                                            <td>
                                                <input type="checkbox" name="passbook_pay" id="passbook_pay">
                                                <label for="">무통장 결제</label>
                                            </td>
                                            <td>
                                                <input type="checkbox" name="phone_pay" id="phone_pay">
                                                <label for="">휴대폰 결제(소액결제)</label>
                                            </td>
                                        </tr>
                                        <tr>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                </table>
            </div>
        </div>
	<%@ include file="../common/footer.jsp" %>  
</body>
</html>