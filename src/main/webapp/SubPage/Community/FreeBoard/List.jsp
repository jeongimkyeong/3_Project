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
	String msg=null;
	msg = (String)request.getAttribute("msg");
	System.out.println("MSG : " + msg);
	if(msg!=null){
	%>
		<script>
			//Controller에서 지정한 메시지 출력
			alert("<%=msg%>");
		</script>
	<%
	}
%>


<%
	int totalRecode=0; 	//전체 게시물 수
	int totalPage=0; 	//전체 페이지 수
	int totalBlock=0;	//전체 블록 수
	
	int numPerPage=10; 	//한 페이지당 표시할 게시물 수
	int pagePerBlock=5;	//블록당 표시할 페이지 수
		
	int nowPage=1;		//현재 페이지
	int nowBlock=1;		//현재 블록
	
	int start=1;		//DB로부터 가져올 게시물의 시작 번호
	int end=10;			//Start로부터 10개의 게시물 출력하기 위한 값 지정
	
	int listSize=0;		//현재 읽어온 게시물의 수(DB로부터 가져온)
	
	//파라미터로 nowPage 넘어왔다면 nowPage에 해당 파라미터 값을 넣는다.
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));	
	}
	
	totalRecode = (Integer)request.getAttribute("tcnt");			//전체 게시물 수
	totalPage = (int)Math.ceil((double)totalRecode/numPerPage);		//전체 페이지 수 (전체게시물/한 페이지당 표시할 게시물 수) 
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);	//전체 블록 수 (전체페이지/블록당 표시할 페이지 수)
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);		//현재 블록	(현재페이지/블록당 표시할 페이지 수)
	
%>
<script>
	
	//페이지 이동 (함수가 실행되는 순간(board/list.do)가 받아서 처리)
	//매개변수는 함수 호출한 곳에서 받음
	function paging(page) {
		//nowPage저장
		document.readFrm.nowPage.value=page; 
		//start, end값 저장
		var numPerPage = <%=numPerPage%>
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		//전송
		document.readFrm.action="/board/list.do";
		document.readFrm.submit();
	}
	
	//블록 이동 (value가 2라면 pagePerBlock(5) * (2-1) +1 = 6번째 페이지부터 출력)
	function block(value) { 
		//page변수는 이전, 다음페이지 계산하기 위한 함수(다음페이지의 첫 번째 or 이전페이지의 첫 번째 계산식)
		var page = <%=pagePerBlock%> * (value-1) + 1;
		document.readFrm.nowPage.value=page;
		//start, end값 저장
		var numPerPage = <%=numPerPage%>
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		//전송
		document.readFrm.submit();
	}
	
	function list() {
		document.listFrm.submit();
	}
	
	function read(num) {
		var page=<%=nowPage%>;
		var numPerPage=<%=numPerPage%>;
		
		document.readFrm.num.value=num;
		document.readFrm.nowPage.value=page;
		
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		
		document.readFrm.action="/board/read.do";
		document.readFrm.submit();
	}
	
	
</script>

<!-- 함수 실행 시 form으로 데이터 전달 받고 nowPage가 위에 선언한 if문 실행 후 nowPage 업데이트되면서 nowBlock도 변경-->
	<form name="readFrm" method="get">
		<input type="hidden" name="num">
		<input type="hidden" name="start">
		<input type="hidden" name="end">
		<input type="hidden" name="nowPage">  		
	</form>
	
	<form name="listFrm" method="get">
		<input type="hidden" name="nowPage" value="1">
		<input type="hidden" name="start" value="1">
		<input type="hidden" name="end" value="10">                	
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
                    <%@page import="java.util.*,dto.*" %>
                    <%
                    	Vector<BoardDTO> list = (Vector<BoardDTO>)request.getAttribute("list");
                    	for(int i=0;i<list.size();i++)
                    	{
                    	    %>
                    	    <!-- list안에 저장된 값 꺼내옴 -->
	                        <tr>
	                            <td><%=list.get(i).getNum() %></td>
	                            <td class="tl"><a href="javascript:read('<%=list.get(i).getNum()%>')"><%=list.get(i).getSubject() %>></a></td>
	                            <td><%=list.get(i).getUsername() %></td>
	                            <td><%=list.get(i).getRegdate() %></td>
	                            <td><%=list.get(i).getCount() %></td>
	                        </tr>
	                        <%
                    	}
                    %>    
                    </tbody>
                    
                </table>
                
                <!-- 페이징처리 -->
                
                <%
                //몇 번째 블록인지 판단해서 몇 페이지까지 출력할지 지정((현재블럭 -1) * (블럭당 표시할 페이지 수))
                //(1-1) * 10 + 1 = 1번블록 (pageStart 1로 지정)
                int pageStart = (nowBlock-1)*pagePerBlock+1;
                //마지막 블럭이 아니라면 pageStart에서 pagePerBlock 출력
                int pageEnd = ((pageStart + pagePerBlock)<=totalPage)?(pageStart+pagePerBlock):totalPage+1;
                %>
                <div class="paging">
                   
                <% 
                if(nowBlock>1)
                {
                %>
                	 <a href="javascript:block('<%=(nowBlock*0)+1%>')"><img src="/img/fpage.gif" alt="처음페이지"></a>
					<a href="javascript:block('<%=nowBlock-1%>')"><img src="/img/back.gif" alt="이전페이지"></a>
                <%	
                }
                %>                   
                                     
        			<!-- 클릭했을 때 해당 블록으로 이동될 수 있도록 -->
        			<%
        				for(int i=pageStart;i<pageEnd;i++)
        				{
        			%> 
                    <a href="javascript:paging('<%=i%>')"><strong><%=i%></strong></a>
        			<%
        				}
        			%>
        			
        		<%
        		if(totalBlock>nowBlock)
        		{
        		%>
                    <a href="javascript:block('<%=nowBlock+1%>')"><img src="/img/next.gif" alt="다음페이지"></a>
                    <a href="javascript:block('<%=totalBlock%>')"><img src="/img/lpage.gif" alt="마지막페이지"></a>
                <%
        		}
                %>  
                </div>
                <div class="cbtn">
                	<a href="/SubPage/Community/FreeBoard/Post.jsp" class="mbtn grey">글쓰기</a>
            	</div>  
                
                <!-- 검색처리 -->
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