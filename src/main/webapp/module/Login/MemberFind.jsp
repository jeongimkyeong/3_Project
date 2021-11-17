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
		<h1>아이디 찾기</h1>
	</div>
	
	<form name="agreeform" method="post" action="">
		<div class="checkbox" style="height:300px;">
			<p>회원가입시 사용하신 이름/휴대폰번호/이메일번호를 입력해주세요</p>
			<div class="infobox">
				<div class="scrollbox" style="margin:20px 10px;">

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