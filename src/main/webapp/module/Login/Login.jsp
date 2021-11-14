<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%@ include file="/module/LoginJoinLink.jsp" %>

</head>
<body>
<%@ include file="/module/common/Header.jsp" %>
<div class="sectioncontent">
	<div class="logincontent">
		<div class="logintitle">
				<h1>LOGIN</h1>
		</div>
		<form name="loginform" method="post" action="">
			<div class="loginformbox">
				<p>아이디가 없으면 무료 회원가입을 해주시기 바랍니다</p>
				<ul>
					<li><input type="text" name="userid" placeholder="아이디" value="" class="logininput"></li>
					<li><input type="password" name="pwd" placeholder="비밀번호" value="" class="logininput"></li>
				</ul>
				<a href="#" class="loginbutton"><span>로그인</span></a>
			</div>
		</form>
		<div class="findlink">
			<a href="#"><span>무료회원가입</span></a>
			<a href="#">아이디/비밀번호찾기</a>
		</div>
	</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>
</body>
</html>