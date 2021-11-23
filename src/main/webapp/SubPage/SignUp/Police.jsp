<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/SignUp1.css"  type="text/css" rel="stylesheet">
<link href="/css/SignUp2.css"  type="text/css" rel="stylesheet"> 
</head>
<body>
<!-- Header -->
<%@include file="/module/common/Header.jsp" %>
<%@ include file="/module/ConLink.jsp" %>


<div class="smain"> 

	
            <div class="nlnbWrap">
                <h2><span>PRODUCT</span>수강신청</h2>
                <div class="nlnb">
        
                    <dl>
                        <dt><a href="/SubPage/SignUp/Freepass.jsp">프리패스 신청</a></dt>
                    </dl>
        
                    <dl>
                        <dt><a href="/SubPage/SignUp/Content9.jsp">9급공무원</a></dt>
                    </dl>
        
                    <dl>
                        <dt><a href="/SubPage/SignUp/Police.jsp">경찰공무원</a></dt>
                    </dl>
        
                   
                </div>
        
                        <div class="lnbcs">
                    <p>고객상담/기술지원</p>
                    <strong style="word-break:break-all;">070.7017.0727</strong>
                    <span class="csline"></span>
                    <div class="cs_txt">
                            평일 09:00~18:00<br>점심시간 09:00~17:00
                    </div>
                </div>
        
        <!--  배너시작   -->
            <div style="text-align:center;">
                                
            </div>
        <!--  배너끝  -->
        
            </div> 
	<div class="content">
    	<div class="cont_tit">
        	<h3>경찰공무원</h3>
        </div>
        <div class="scont">
            <table class="btbl" style="width:830px">
				<colgroup>
				<col style="width:22%">
				<col style="width:60%">
				<col style="width:18%">
				</colgroup>
				<thead>
					<tr>
						<th colspan="2">강의정보</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody>

                    <tr>
                        <td><img src="../ahdma/studimg/study_20181004111157.gif" alt="영어 EBS E쏙 패키지" class="imgbox" onclick="location.href='class_view.asp?categbn=3&amp;idx=5&amp;intpg=1';" style="cursor:pointer;"></td>
                        <td class="cont"><a href="class_view.asp?categbn=3&amp;idx=5&amp;intpg=1"><h4>영어 EBS E쏙 패키지</h4></a>
                                            <p>내신특강 중학 국어 4 통합편 (2014,2학년 2학기용)</p>
                                            구성 : 단과5과목 / 기간 : 60일 / 수강료 : <strong class="frprice">70,000</strong>원
                        </td>
                        <td><a href="class_view.asp?categbn=3&amp;idx=5&amp;intpg=1" class="sbtn">강의실입장</a>
                            
                <a href="javascript:go2Basket(true,'3','5');" class="sbtn">장바구니</a>
                <a href="javascript:go2Mst(true,'3','5');" class="sbtn">수강신청</a>
                </td>
                    </tr>

                    <tr>
                        <td><img src="../ahdma/studimg/study_20181004111352.gif" alt="과학 수능완성" class="imgbox" onclick="location.href='class_view.asp?categbn=3&amp;idx=6&amp;intpg=1';" style="cursor:pointer;"></td>
                        <td class="cont"><a href="class_view.asp?categbn=3&amp;idx=6&amp;intpg=1"><h4>과학 수능완성</h4></a>
                                            <p>한 장으로 끝내는 환장국사 시즌Ⅱ</p>
                                            구성 : 단과4과목 / 기간 : 40일 / 수강료 : <strong class="frprice">30,000</strong>원
                        </td>
                        <td><a href="class_view.asp?categbn=3&amp;idx=6&amp;intpg=1" class="sbtn">강의실입장</a>
                            
                <a href="javascript:go2Basket(true,'3','6');" class="sbtn">장바구니</a>
                <a href="javascript:go2Mst(true,'3','6');" class="sbtn">수강신청</a>
                </td>
                    </tr>

            </tbody>
			</table>

            <!--  테이블 Paging 부분     -->
		<div class="paging">

			<img src="../img/img/a_prev2.gif" alt="처음페이지">
			<img src="../img/img/a_prev1.gif" alt="이전페이지">

			<strong>1</strong>

			<img src="../img/img/a_next1.gif" alt="다음페이지">
			<img src="../img/img/a_next2.gif" alt="마지막페이지">

		</div>

        </div>
    </div>
   </div>
    
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>    
</body>
</html>