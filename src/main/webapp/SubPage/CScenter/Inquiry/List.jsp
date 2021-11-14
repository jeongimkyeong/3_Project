<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/css/CSlist.css" rel="stylesheet" type="text/css">
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
                <h3>문의게시판</h3>
            </div>
            <div class="scont">
                <table class="btbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 12%;">
                        <col style="width: 44%;">
                        <col style="width: 16%;">
                        <col style="width: 16%;">
                        <col style="width: 12%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>등록일</th>
                            <th class="bkn">답변</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td class="tl"><a href="/SubPage/CScenter/Inquiry/Read.jsp">환불계좌문의</a></td>
                            <td>정**</td>
                            <td>2021-00-00</td>
                            <td class="dbtn">대기</td>
                        </tr>
                    </tbody>
                </table>
                <div class="paging">
                    <img src="/img/fpage.gif" alt="처음페이지">
                    <img src="/img/back.gif" alt="이전페이지">
        
                    <strong>1</strong>
        
                    <img src="/img/next.gif" alt="다음페이지">
                    <img src="/img/lpage.gif" alt="마지막페이지">
                </div>
                <form name="sform" method="post" action="#">
                    <div class="boardSch">
                        <fieldset>
                            <select id="searchpart" name="searchpart" class="seltxt1 w100">
                                <option value="0">제목</option>
                                <option value="1">내용</option>
                                <option value="2">제목+내용</option>
                            </select>
                            <input type="text" name="searchstr" id="searchstr" class="inptxt1" value="">
                            <a href="#" class="fbtn grey">검색하기</a>
                        </fieldset>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>