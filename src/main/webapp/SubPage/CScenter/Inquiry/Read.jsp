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
                <h3>공지사항</h3>
            </div>
            <div class="scont">
                <table class="ftbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: 80%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>문의제목</th>
                            <td>
                            <strong>환불계좌문의</strong>
                            </td>
                        </tr>
                        <tr>
                            <th>처리상태</th>
                            <td>답변대기</td>
                        </tr>
                        <tr>
                            <th>글쓴이</th>
                            <td>홍길동</td>
                        </tr>                         
                        <tr>
                            <th>작성일</th>
                            <td>2021-00-00 오전 00:00:00 </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        	<th>문의내용</th>
                        	<td class="cmt">환불계좌 문의드려요</td>
                        </tr>
                    </tbody>
                </table>
                <div class="cbtn">
                	<a href="#" class="mbtn grey">삭제하기</a>
                	<a href="/SubPage/CScenter/Inquiry/List.jsp" class="mbtn">목록으로</a>
                </div>
			</div>                
		</div>
	</div>		                	    
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>