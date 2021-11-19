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
		<div class="checkbox" style="height:200px; padding:40px 0 40px;" align="center" >
			<p>회원가입시 사용하신 이름/휴대폰번호/이메일번호를 입력해주세요</p>
			<div class="infobox">
				<ul class="infoul">
					<form>
						<li class="inputli">
						<p>
							<label >이름</label>
							<input type="text" class="logininput" style="width:350px;">
						</p>
						<p>
							<label >휴대폰번호</label>
							<input type="text" class="logininput" style="width:88px;">
							<input type="text" class="logininput" style="width:88px;">
							<input type="text" class="logininput" style="width:88px;">
						</p>
						<p>
							<label >이메일주소</label>
							<input type="text" class="logininput"style="width:350px;">
						</p>
						<li>
							<a href="#" class="findidbutton"><span>아이디찾기<span></span></a>
						</li>
					</form>
				</ul>
			</div>
		</div>
		
		<div class="stepjoin">
		<h1>비밀번호 찾기</h1>
	</div>
		<div class="checkbox" style="height:200px; padding:40px 0 40px;" align="center" >
			<p>회원가입시 사용하신 아이디/휴대폰번호/이메일번호를 입력해주세요</p>
			<div class="infobox">
				<ul class="infoul">
					<form>
						<li class="inputli">
						<p>
							<label >아이디</label>
							<input type="text" class="logininput" style="width:350px;">
						</p>
						<p>
							<label >휴대폰번호</label>
							<input type="text" class="logininput" style="width:88px;">
							<input type="text" class="logininput" style="width:88px;">
							<input type="text" class="logininput" style="width:88px;">
						</p>
						<p>
							<label >이메일주소</label>
							<input type="text" class="logininput"style="width:350px;">
						</p>
						<li>
							<a href="#" class="findidbutton"><span>비밀번호찾기<span></span></a>
						</li>
					</form>
				</ul>
			</div>
		</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>
</body>
</html>