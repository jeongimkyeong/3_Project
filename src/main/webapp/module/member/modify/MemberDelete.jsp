<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/module/ConLink.jsp" %>
<%@ include file="/module/common/LoginHeader.jsp" %>
<%@ include file="/module/LoginJoinLink.jsp" %>
</head>
<body>

<div class="smain" >
    <div class="leftbWrap"> <!--nlnbWrap-->
	            <h2>
	                <span>MYPAGE</span>
	                나의 강의실
	            </h2>
            <div class="leftb"> <!-- nlnb-->
                <dl class="leftbdl">
                    <dt>
                        <a href="#">구매강좌목록</a>
                    </dt>
                    <dd>
		                <a href="#">기본서1</a>
	               </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="#">장바구니</a>
                    </dt>
                    <dd>
                    	<a href="#">문제집1</a>
                    </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="#">내질문과 답변</a>
                    </dt>
                    <dd>
                    	<a href="#">기출문제집1</a>
                    </dd>
                </dl>
                <dl class="leftbdl">
                    <dt>
                        <a href="/module/member/modify/MemberDelete.jsp">회원탈퇴</a>
                    </dt>
                    <dd>
                    	<a href="/module/member/modify/MemberDelete.jsp">회원탈퇴</a>
                    </dd>
                </dl>                                
            </div>
            <div class="leftcs"><!--lnbcs-->
                <p>고객상담/기술지원</p>
                <strong style="word-break:break-all;">070.7017.0727</strong>
                <span class="csline"></span>
                <div class="cs_txt">
                    " 평일 09:00~18:00"<br>
                    "점심시간 09:00~17:00 "
                </div>
            </div>
            <!-- 배너시작 -->
            <div style="text-align: center;"></div>
            <!-- 배너끝-->
    </div>
    <div class="content" style="height:700px">
	    <h3 class="steptitle" style="font-size:28px;">
			회원탈퇴
		</h3>
		<div style="border:1px solid lightgray; height:300px; margin:10px;">
			<div style="padding:30px; font-size:15px;">회원탈퇴 하시면 즉시탈퇴됩니다</div>
		</div>
		
		<div class="checkbutton">
				<input type="button" value="탈퇴하기" class="chkbtninput" onclick="memberDelete()">
		</div>
    </div>
    
</div>
<%@include file="/module/common/Footer.jsp" %>
</body>
</html>