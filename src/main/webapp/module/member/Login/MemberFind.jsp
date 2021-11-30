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
<div class="sectioncontent" style="height:800px;">
	<div>
	<div class="stepjoin">
		<h1>아이디 찾기</h1>
	</div>
		<div class="checkbox" style="height:200px; padding:40px 0 40px;" align="center" >
			<p>회원가입시 사용하신 이름/휴대폰번호/이메일번호를 입력해주세요</p>
			<div class="infobox">
				<form name="idfindform" action = "/member/memberIdFind.do" method="post">
					
					<ul class="infoul">
							<li class="inputli">
								<p>
									<label >이름</label>
									<input type="text" name="username" class="logininput" style="width:350px;">
								</p>
								<p>
									<label >휴대폰번호</label>
									<input type="text" name="phonef" class="logininput" style="width:88px;" maxlength="3">
									<input type="text" name="phones" class="logininput" style="width:88px;" maxlength="4">
									<input type="text" name="phonet" class="logininput" style="width:88px;" maxlength="4">
								</p>
								
								<li>
									<a  class="findidbutton" onclick="memberIdFind()"><span>아이디찾기</span></a>
								</li>
							</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	
	<div>
	<div class="stepjoin">
		<h1>비밀번호 찾기</h1>
	</div>
		<div class="checkbox" style="height:200px; padding:40px 0 40px;" align="center" >
			<p>회원가입시 사용하신 이름/휴대폰번호/이메일번호를 입력해주세요</p>
			<div class="infobox">
				<form name="pwdfindform" action = "/member/memberPwdFind.do" method="post">
					
					<ul class="infoul">
							<li class="inputli">
								<p>
									<label >아이디</label>
									<input type="text" name="userid" class="logininput" style="width:350px;">
								</p>
								<p>
									<label >휴대폰번호</label>
									<input type="text" name="phonef" class="logininput" style="width:88px;" maxlength="3">
									<input type="text" name="phones" class="logininput" style="width:88px;" maxlength="4">
									<input type="text" name="phonet" class="logininput" style="width:88px;" maxlength="4">
								</p>
								
								<li>
									<a  class="findidbutton" onclick="memberPwdFind()"><span>아이디찾기</span></a>
								</li>
							</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>
</body>
</html>