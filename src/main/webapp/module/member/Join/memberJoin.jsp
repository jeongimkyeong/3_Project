<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
<%@ include file="/module/LoginJoinLink.jsp" %>
</head>
<body>

<%@ include file="/module/common/Header.jsp" %>
<div class="sectioncontent">

	<div class="stepjoin">
		<ul>
			<li >약관동의<span class="stepspan" style="color:#888;"><i class="far fa-calendar-check fa-3x"></i></span></li>
			<li class="on">회원정보 입력<span class="stepspan"><i class="far fa-address-card fa-3x"></i></span></li>
			<li>가입완료<span class="stepspan"><i class="fas fa-calendar-check fa-3x"></i></span></li>
		</ul>
	</div>
	<h3 class="steptitle">
		<span class="point">.</span>
		회원기본정보
		<em>(<span class="star">*</span>표시된 항목은 꼭 입력해 주셔야 가입이 가능합니다.)</em>
	</h3>
	
	<form name="inputform" method="post" action="/member/join.do">
		<table class="formtable" style="width:900px;">
			<tr>
				<th>아이디<span class="star">*</span></th>
				<td>
					<input type="text" id ="userid" name="userid" class="logininput" onkeyUp="javascript:keyup()">
					
					<a class="formbutton"  onclick="javascript:useridchk()">중복확인</a>
					<input type="hidden" id="useridunchk" value="">
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
				<th>이름<span class="star">*</span></th>
				<td><input type="text" name="username" class="logininput"></td>
			</tr>
		 	<tr>
				<th>휴대전화번호<span class="star">*</span></th>
				<td>
					<input type="text" name="phone1" class="logininput" style="width:50px" maxlength="3">-
					<input type="text" name="phone2" class="logininput" style="width:50px" maxlength="4">-
					<input type="text" name="phone3" class="logininput" style="width:50px" maxlength="4">
				</td>
			</tr>
			<tr>
				<th rowspan="3">주소<span class="star">*</span></th>
				<td>
					<input type="text" name="zipcode" id="zipcode" class="logininput" style="width:70px" readonly>
					<a class="formbutton" onclick="addrfunc()">우편번호</a>
				</td>
			</tr>
			<tr>
				<td><input type="text" name="addr1" id="addr1" class="logininput" style="width:600px" readonly></td>
			</tr>
			<tr>
				<td><input type="text" name="addr2" id="addr2" class="logininput" style="width:600px"></td>
			</tr>
		</table>
	
	
	
	<div class="checkbutton">
		<input type="button" value="가입하기" class="chkbtninput" onclick="joinCheck()">
		<a href="/MainPage.jsp">취소하기</a>
	</div>
	</form>
</div>
<%@ include file="/module/common/Footer.jsp" %>

</body>
</html>