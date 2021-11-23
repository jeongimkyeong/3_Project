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
<script src="http://code.jquery.com/jquery-latest.js"></script> <!-- ajax 사용할수있는 jquery 링크 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 다음주소 api 사용링크 -->
<script>

	function useridchk(){//아이디 중복확인 눌렀을때 
		var a = inputform.useridunchk.value; 
		a = "idchk"; 
		var userid = inputform.userid.value;
		
		if(userid === ""){
			alert("아이디 입력하세요");
			return userid.focus();
		}
		$.ajax({
			url : '/member/joinidcheck.do',
			type : 'post',
			data : {'userid' : userid},
			dataType:"html",
			error:function(request,status,error){
				alert('에러code : ' + request.status+"\n에러메시지error : " + error);
			},
			success : function(result){
				var b = result;
				if(b ===userid ){
					alert("이미사용중인아이디입니다"+b);
					userid = "";
				}else{
					alert("사용가능한 아이디입니다"+userid);
					inputform.useridunchk.value="idchk";
					
				}
			}
		});
	}//useridchk 함수부분
	
	function keyup(){//아이디 입력란에 입력을 했을때(아이디중복확인을 했는데 아이디입력란에 수정을 하면 다시 아이디중복을 하도록하는함수)
		inputform.useridunchk.value=""; 
	}//keyup 함수부분
	
	
	
	function addrfunc(){//우편번호를 클릭했을때
		
		var zipcode = document.getElementById("zipcode");
    	var addr1 = document.getElementById("addr1");
		
		new daum.Postcode({
	        oncomplete: function(data) {
	            
	        	if(data.userSelectedType ==="R"){//사용자가 선택한 주소가 도로명주소일때
	        		addr1.value = data.roadAddress;
	        	
	        	}else{//사용자가가 선택한 주소가 지번주소일때(J)
	        		addr1.value = data.jibunAddress;
	        	}
	        	zipcode.value = data.zonecode;
	        }
		
	    }).open();
		document.getElementById("addr2").focus();
		
	}//addrfunc 함수부분
	
	function joinCheck(){
		
		if(inputform.userid.value == ""){
			alert("아이디가 입력되지 않았습니다");
			return inputform.userid.focus();
		}
	
		if(inputform.useridunchk.value != "idchk"){//
			alert("아이디중복확인안했습니다");
			return false;
		}
		if(inputform.pwd.value == ""){
			alert("비밀번호가 입력되지 않았습니다");
			return inputform.pwd.focus();
		}
		if(inputform.pwdchk.value == ""){
			alert("비밀번호확인이 입력되지 않았습니다");
			return inputform.pwdchk.focus();
		}
		
		if( inputform.pwd.value != inputform.pwdchk.value){
			alert("비밀번호를 일치하게 입력하세요");
			return inputform.pwdchk.focus();
		}
		
		if(inputform.username.value == ""){
			alert("이름이 입력되지 않았습니다");
			return inputform.username.focus();
		}
		if(inputform.phone1.value == "" ){
			alert("전화번호가 입력되지 않았습니다");
			return inputform.phone1.focus();
		}
		if(inputform.phone2.value == ""){
			alert("전화번호가 입력되지 않았습니다");
			return inputform.phone2.focus();
		}
		if(inputform.phone3.value == ""){
			alert("전화번호가 입력되지 않았습니다");
			return inputform.phone3.focus();
		}
		if(inputform.zipcode.value == ""){
			alert("우편번호가 입력되지 않았습니다");
			return inputform.zipcode.focus();
		}
		if(inputform.addr1.value == ""){
			alert("주소가 입력되지 않았습니다");
			return inputform.addr1.focus();
		}
		if(inputform.addr2.value == ""){
			alert("주소가 입력되지 않았습니다");
			return inputform.addr2.focus();
		}
		inputform.submit();
	}//joinCheck 함수부분
</script>

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