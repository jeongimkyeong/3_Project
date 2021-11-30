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

<%
	String pwd=null;
	pwd = (String)request.getAttribute("pwd");
	if(pwd == null){
		pwd = "죄송합니다\n"+
				"입력한 정보로 일치하는 비밀번호를 찾지 못했습니다."+"\n"+
				"가입할 때 입력한 회원정보가 정확한지 확인해주시기 바랍니다!";
	}
%>

<%@ include file="/module/common/Header.jsp" %>
<div class="sectioncontent" style="height:500px; margin-top:40px;">

	<h3 class="steptitle">
		<span class="point">.</span>
		회원기본정보
	</h3>
		<table class="formtable" style="width:900px; height:150px;">
			<tr>
				<th style="text-align:center">비밀번호</th>
				<td><%=pwd %></td>
			</tr>
		</table>

	<div class="checkbutton">
		<input type="button" value="로그인" class="chkbtninput" onclick="location.href='/module/member/Login/Login.jsp'">
		<a href="/module/member/Login/MemberFind.jsp">아이디 비밀번호찾기</a>
	</div>
	</form>
</div>
<%@ include file="/module/common/Footer.jsp" %>

</body>
</html>