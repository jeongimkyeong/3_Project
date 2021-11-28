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
<%@include file="/module/common/LoginHeader.jsp" %>


<div class="smain">
        <div class="leftbWrap"> <!--nlnbWrap-->
            <h2>
                <span>BBS</span>
                커뮤니티
            </h2>
            <div class="leftb"> <!-- nlnb-->
                <dl>
                    <dt>
                        <a href="/board/list.do">자유게시판</a>
                    </dt>
                </dl>
                <dl>
                    <dt>
                        <a href="/SubPage/Community/PassNote/List.jsp">합격수기</a>
                    </dt>
                </dl>
                <dl>
                    <dt>
                        <a href="/SubPage/Community/Data/List.jsp">자료실</a>
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
                <h3>자유게시판</h3>
            </div>
            <div class="scont">
            	<form name="deleteFrm" method="post" action="/board/delete.do">
            	<!-- 게시글 리스트 -->
                <table class="ftbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 22%;">
                        <col style="width: 78%;">
                    </colgroup>
                    
                    <!-- 게시글 -->
                    <tbody>
                        <tr>
                            <th>비밀번호</th>
                            <td>
                            <input name="pwd" type="text" style="width:100px;height:34px;border:1px solid #ddd;">
                            </td>
                        </tr>
                        <input type="hidden" name="num" value="<%=request.getParameter("num") %>">
                        <input type="hidden" name="nowPage" value="<%=request.getParameter("nowPage") %>">
                        <input type="hidden" name="start" value="<%=request.getParameter("start") %>">
                        <input type="hidden" name="end" value="<%=request.getParameter("end") %>">                     
                    </tbody>               
                </table>
                	<div class="cbtn">
		                <input type="submit" value="삭제" class="mbtn grey">
		                <a href="/board/list.do" class="mbtn ">목록으로</a>
		           	</div>           
				</form>
            </div>
        </div>
    </div>
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>