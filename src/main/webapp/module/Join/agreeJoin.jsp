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
	
	<form name="agreeform" method="post" action="">
		<div class="checkbox">
			<h2 class="subtitle">사이트 이용약관</h3>
			<div class="infobox">
				<div class="scrollbox">
					이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관
					이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관
					이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관
					이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관
					이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관
				</div>
				<div class="agreecheckbox">
					<input type="checkbox" name="" >사이트이용약관에 동의합니다
				</div>
			</div>
		</div>
	</form>
	<div class="checkbutton">
		<a href="/module/Join/memberJoin.jsp" class="chkbtna"><span>동의하기</span></a>
		<a href="/MainPage.jsp">취소하기</a>
	</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>
</body>
</html>