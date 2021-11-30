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
	String userid=null;
	userid = (String)request.getAttribute("userid");
	if(userid == null){
		userid = "죄송합니다\n"+
				"입력한 정보로 일치하는 회원정보를 찾지 못했습니다."+"\n"+
				"가입할 때 입력한 회원정보가 정확한지 확인해주시기 바랍니다!";
	}
%>
<!-- 
<script>
function findId(){
	$.ajax({
		url : '/member/memberIdFind.do',
		data : {'userid' : userid},
		dataType : 'html',
		error : function(request,status,error){
			alert('에러code : ' + request.status + "\n에러메세지error : " + error);
		},
		success : function(result){
			alert("성공");
			var msg = result;
			if(result == null){
				$(".formtable").append(
					"<td>"+
					"<strong>죄송합니다</strong><br>"+
					"입력한 정보로 일치하는 회원정보를 찾지 못했습니다."+
					"가입할 때 입력한 <strong>회원정보<strong>가 정확한지 확인해주시기 바랍니다!"+
					"</td>"
				)
				
			}else if(result != null){
				$(".formtable").append(
						"<td>"+
						"<strong>"+userid+"</strong><br>"+
						"입력한 정보로 일치하는 회원정보를 찾았습니다."+
						"찾으신 아이디로 로그인해주세요"+
						"</td>"
					)
			}
		}
	});
}
</script>
 -->
<%@ include file="/module/common/Header.jsp" %>
<div class="sectioncontent" style="height:500px; margin-top:40px;">

	<h3 class="steptitle">
		<span class="point">.</span>
		회원기본정보
	</h3>
		<table class="formtable" style="width:900px;  height:150px;">
			<tr>
				<th style="text-align:center">아이디</th>
				<td><%=userid %></td>
			</tr>
		</table>
	
	
	
	<div class="checkbutton">
		<input type="button" value="로그인" class="chkbtninput" onclick="location.href='/module/member/Login/Login.jsp'">
		<a href="/module/member/Login/MemberFind.jsp">아이디 비밀번호찾기</a>
	</div>
</div>
<%@ include file="/module/common/Footer.jsp" %>

</body>
</html>