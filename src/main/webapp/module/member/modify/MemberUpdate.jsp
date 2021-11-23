<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/module/ConLink.jsp" %>
<%@ include file="/module/common/LoginHeader.jsp" %>
<%@ include file="/module/LoginJoinLink.jsp" %>
</head>
<body>
<%
		String userid = (String)request.getAttribute("userid");
		String username = (String)request.getAttribute("username");
		String phonef = (String)request.getAttribute("phonef");
		String phones = (String)request.getAttribute("phones");
		String phonet = (String)request.getAttribute("phonet");
		String zipcode = (String)request.getAttribute("zipcode");
		String addr1 = (String)request.getAttribute("addr1");
		String addr2 = (String)request.getAttribute("addr2");
%>
<div class="smain" >
    <div class="leftbWrap"> <!--nlnbWrap-->
	            <h2>
	                <span>MYPAGE</span>
	                나의 강의실
	            </h2>
            <div class="leftb"> <!-- nlnb-->
                <dl class="leftbdl">
                    <dt>
                        <a href="#">구매강좌목록</a>
                    </dt>
                    <dd>
		                <a href="#">기본서1</a>
	               </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="#">장바구니</a>
                    </dt>
                    <dd>
                    	<a href="#">문제집1</a>
                    </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="#">내질문과 답변</a>
                    </dt>
                    <dd>
                    	<a href="#">기출문제집1</a>
                    </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="#">회원탈퇴</a>
                    </dt>
                    <dd>
                    	<a href="#">회원탈퇴</a>
                    </dd>
                </dl>                                
            </div>
            <div class="leftcs"><!--lnbcs-->
                <p>고객상담/기술지원</p>
                <strong style="word-break:break-all;">070.7017.0727</strong>
                <span class="csline"></span>
                <div class="cs_txt">
                    " 평일 09:00~18:00"<br>
                    "점심시간 09:00~17:00 "
                </div>
            </div>
            <!-- 배너시작 -->
            <div style="text-align: center;"></div>
            <!-- 배너끝-->
    </div>
    <div class="content" style="height:700px">
	    <h3 class="steptitle" style="font-size:28px;">
			회원기본정보
			<em>(<span class="star">*</span>표시된 항목은 꼭 입력해 주셔야 수정이 가능합니다.)</em>
		</h3>
	    <form name="inputform" method="post" action="/member/join.do">
			<table class="formtable" style="width:900px;">
				<tr>
					<th>아이디<span class="star">*</span></th>
					<td>
						<%=userid %>
					</td>
				</tr>
				<tr>
					<th>이름<span class="star">*</span></th>
					<td>
						<%=username %>
					</td>
				</tr>
				<tr>
					<th>비밀번호<span class="star">*</span></th>
					<td>
						<input type="password" name="pwd" class="logininput" minlength="4">
						<span class="star" style="font-size:13px;">*4자이상의 영문 및 숫자</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호확인<span class="star">*</span></th>
					<td><input type="password" name="pwdchk" class="logininput"></td>
				</tr>
				
			 	<tr>
					<th>휴대전화번호<span class="star">*</span></th>
					<td>
						<input type="text" name="phone1" class="logininput" style="width:50px" maxlength="3" value="<%=phonef %>">-
						<input type="text" name="phone2" class="logininput" style="width:50px" maxlength="4" value="<%=phones %>">-
						<input type="text" name="phone3" class="logininput" style="width:50px" maxlength="4" value="<%=phonet %>">
					</td>
				</tr>
				<tr>
					<th rowspan="3">주소<span class="star">*</span></th>
					<td>
						<input type="text" name="zipcode" id="zipcode" class="logininput" style="width:70px" value="<%=zipcode %>" readonly>
						<a class="formbutton" onclick="addrfunc()">우편번호</a>
					</td>
				</tr>
				<tr>
					<td><input type="text" name="addr1" id="addr1" class="logininput" style="width:600px" value="<%=addr1 %>" readonly></td>
				</tr>
				<tr>
					<td><input type="text" name="addr2" id="addr2" class="logininput" style="width:600px" value="<%=addr2 %>" ></td>
				</tr>
			</table>

			<div class="checkbutton">
				<input type="button" value="정보수정" class="chkbtninput" onclick="updateCheck()">
				<a href="/MainPage.jsp">취소하기</a>
			</div>
		</form>
    </div>
    
</div>
<%@include file="/module/common/Footer.jsp" %>
</body>
</html>