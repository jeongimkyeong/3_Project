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
    <link href="/css/CSread.css" rel="stylesheet" type="text/css">
    <%@include file="/module/ConLink.jsp" %>
</head>
<body>

<!-- DTO 가져오기 -->
<%@page import="dto.*" %>
<%
	BoardDTO dto = (BoardDTO)request.getAttribute("dto");
	System.out.println("현재페이지 : " + request.getParameter("nowPage"));
	System.out.println("start : " + request.getParameter("start"));
	System.out.println("end : " + request.getParameter("end"));
%>
<%session.setAttribute("dto", dto); %>
<script>
	//목록
	function list() {
		document.listFrm.nowPage.value=<%=request.getParameter("nowPage")%>;
		document.listFrm.start.value=<%=request.getParameter("start")%>;
		document.listFrm.end.value=<%=request.getParameter("end")%>;
		documnet.listFrm.action="/board/list.do";
		documnet.listFrm.submit();
	}
	//수정
	function updateform() {
		document.updateFrm.nowPage.value=<%=request.getParameter("nowPage")%>;
		document.updateFrm.start.value=<%=request.getParameter("start")%>;
		document.updateFrm.end.value=<%=request.getParameter("end")%>;
		document.updateFrm.num.value=<%=dto.getNum()%>;
		document.updateFrm.action="/board/updateform.do";
		document.updateFrm.submit();
	}
	//삭제
	function delform() {
		document.deleteFrm.nowPage.value=<%=request.getParameter("nowPage")%>;
		document.deleteFrm.start.value=<%=request.getParameter("start")%>;
		document.deleteFrm.end.value=<%=request.getParameter("end")%>;
		document.deleteFrm.num.value=<%=dto.getNum()%>;
		document.deleteFrm.action="/board/deleteform.do";
		document.deleteFrm.submit();
	}		
</script>

<form name="deleteFrm" method="post">
	<input type="hidden" name="num">
	<input type="hidden" name="nowPage">
	<input type="hidden" name="start">
	<input type="hidden" name="end">
</form>

<form name="updateFrm" method="post">
	<input type="hidden" name="num">
	<input type="hidden" name="nowPage">
	<input type="hidden" name="start">
	<input type="hidden" name="end">
</form>

<form name="listFrm" method="get">
	<input type="hidden" name="nowPage">
	<input type="hidden" name="start">
	<input type="hidden" name="end">
</form>



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
            	<!-- 게시글 리스트 -->
                <table class="ftbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: 60%;">
                        <col style="width: 20%;">
                    </colgroup>
                    
                    <!-- 게시글 -->
                    <tbody>
                    	<tr>
                            <th>제목</th>
                            <td colspan="2"><%=dto.getSubject() %></td>
                        </tr>
                        <tr>
                            <th>글쓴이</th>
                            <td><%=dto.getUsername() %>&nbsp;<%=dto.getRegdate() %></td>
                            <td>조회수 : <%=dto.getCount() %></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td class="cmt" colspan="3">
                            	<pre><%=dto.getContent() %></pre>
                            </td>
                        </tr>                     
                    </tbody>               
                </table>
		        	<div class="cbtn">
		            	<a href="/board/list.do" class="mbtn ">목록으로</a>
		            	<a href="javascript:updateform()" class="mbtn ">수정</a>
		            	<a href="javascript:delform()" class="mbtn ">삭제</a>
		           	</div>
				<form>
					<dl class="reple">
						<dt>댓글</dt>
							<dd>
								<textarea name="neyong" id="neyong" cols="45" rows="5" class="txtarea" style="width:95%" onkeyup="CheckByte(250,rpfm,'textlimit');"></textarea>
							</dd>
							<dd>
								<div class="stip">기타의견은 250자 내외로 입력하실 수 있습니다. <strong class="fb" id="textlimit">0</strong>/250Byte</div>
								<a href="#" class="ssbtn blue">댓글달기</a>
							</dd>
					</dl>				
				</form>
           
            </div>
        </div>
    </div>
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>