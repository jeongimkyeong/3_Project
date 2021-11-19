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
<%
	int totalRecode=0; 	//전체 게시물수 저장
	int numPerPage=10; 	//한 페이지당 표시할 게시물의 수(10개)
	int pagePerBlock=15;//블럭당 표시할 페이지 수
	
	int totalPage=0;	//전체 페이지 수
	int totalBlock=0;	//전체 블록 수
	
	int nowPage=1;		//현재 페이지
	int nowBlock=1;		//현재 블럭
	
	int start=0;		//DB로부터 가져올 게시물의 시작 Num
	int end=10; 		//Start로부터 10개까지의 게시물을 가져옴
	
	int listSize=0;		//현재 읽어온 게시물의 수(DB로부터 가져온)
	
	if(request.getParameter("nowPage")!=null) //한번 이상 페이지이동 클릭 했을 때
	{
		nowPage=Integer.parseInt(request.getParameter("nowPage"));
	}
	
	totalRecode = (Integer)request.getAttribute("tcnt");		//전체 게시물 수
	totalPage = (int)Math.ceil((double)totalRecode/numPerPage); //전체 페이지 수 반올림하기 위해 소수점 이하 값 살려주려고 double형
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);//전체 페이지블럭 수 반올림하기 위해 소수점 이하 값 살려주려고 double형
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);	//현재 페이지 블럭
	
%>


<!-- Header -->
<%@include file="/module/common/Header.jsp" %>


<div class="smain">
        <div class="leftbWrap"> <!--nlnbWrap-->
            <h2>
                <span>BBS</span>
                커뮤니티
            </h2>
            <div class="leftb"> <!-- nlnb-->
                <dl>
                    <dt>
                        <a href="/SubPage/Community/FreeBoard/List.jsp">자유게시판</a>
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
                <table class="btbl" style="width: 830px;">
                    <colgroup>
                        <col style="width: 12%;">
                        <col style="width: 44%;">
                        <col style="width: 16%;">
                        <col style="width: 16%;">
                        <col style="width: 12%;">
                    </colgroup>
                    
                    <!-- 열이름 -->
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>등록일</th>
                            <th class="bkn">조회수</th>
                        </tr>
                    </thead>
                    
                    <!-- 게시글 -->
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td class="tl"><a href="#">제목내용</a></td>
                            <td>홍길동</td>
                            <td>2021-00-00</td>
                            <td>0</td>
                        </tr>
                    </tbody>
                </table>
                
                <!-- 페이징처리 -->
                <div class="paging">
                    <img src="/img/fpage.gif" alt="처음페이지">
                    <img src="/img/back.gif" alt="이전페이지">
        
                    <a><strong>1</strong></a>
        
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
                
                <div class="cbtn">
                	<a href="#" class="mbtn grey">글쓰기</a>
            	</div>                
            </div>
        </div>
    </div>
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>