<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%@ include file="/module/LoginJoinLink.jsp" %>

</head>
<script>
	function loginCheck(){
		if( loginform.userid.value==""){
			alert("아이디를 입력하세요");
			return loginform.userid.focus();
		}
		if(loginform.pwd.value==""){
			alert("비밀번호를 입력하세요");
			return loginform.pwd.focus();
		}
		loginform.submit();
	}
</script>
<body>
<%@ include file="/module/common/Header.jsp" %>
<div class="sectioncontent">
	<div class="logincontent">
		<div class="logintitle">
				<h1>LOGIN</h1>
		</div>
		<form name="loginform" method="post" action="/auth/Login.do">
			<div class="loginformbox">
				<p>아이디가 없으면 무료 회원가입을 해주시기 바랍니다</p>
				<ul>
					<li><input type="text" name="userid" placeholder="아이디" value="" class="logininput"></li>
					<li><input type="password" name="pwd" placeholder="비밀번호" value="" class="logininput"></li>
				</ul>
				<a class="loginbutton" onclick="loginCheck()"><span>로그인</span></a>
			</div>
		</form>
		<div class="findlink">
			<a href="/module/member/Join/agreeJoin.jsp"><span>무료회원가입</span></a>
			<a href="/module/member/Login/MemberFind.jsp">아이디/비밀번호찾기</a>
		</div>
	</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>
</body>
</html>