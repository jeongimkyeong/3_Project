<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/css/CSread.css" rel="stylesheet" type="text/css">
    <%@include file="/module/ConLink.jsp" %>
</head>
<body>
<!-- Header -->
<%@include file="/module/common/Header.jsp" %>


<div class="smain">
        <div class="leftbWrap"> <!--nlnbWrap-->
            <h2>
                <span>CS CENTER</span>
                고객센터
            </h2>
            <div class="leftb"> <!-- nlnb-->
                <dl>
                    <dt>
                        <a href="/SubPage/CScenter/Notice/List.jsp">공지사항</a>
                    </dt>
                </dl>
                <dl>
                    <dt>
                        <a href="/SubPage/CScenter/Question/List.jsp">자주묻는질문</a>
                    </dt>
                </dl>
                <dl>
                    <dt>
                        <a href="/SubPage/CScenter/Inquiry/List.jsp">문의게시판</a>
                    </dt>
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
        <div class="content">
            <div class="cont_tit">
                <h3>자주묻는질문</h3>
            </div>
            <div class="scont">
                <table class="ftbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: 30%;">
                        <col style="width: 20%;">
                        <col style="width: 30%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>제목</th>
                            <td colspan="3">회원가입은 무료인가요? </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>2021-00-00 오전 00:00:00 </td>
                            <th>조회수</th>
                            <td>00</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        	<td class="cmt" colspan="4">
                        	"회원가입은 무료입니다."
                        	<br>
                        	</td>
                        </tr>
                    </tbody>
                </table>
                <div class="cbtn">
                	<a href="/SubPage/CScenter/Question/List.jsp" class="mbtn">목록으로</a>
                </div>
			</div>                
		</div>
	</div>		                	    
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>