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
                <h2><span>PRODUCT</span>학원소개</h2>
                <div class="nlnb">
        
                   <dl>
                        <dt><a href="/SubPage/Info/Information.jsp">학원소개</a></dt>
                       
                    </dl>
                    <dl>
                        <dt><a href="/SubPage/Info/Map.jsp">오시는 길</a></dt>
                       
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
        	<h3>학원소개</h3>
        </div>
        <img style="width:750px; border:0; " src="/img/Info/Info.gif"><br> 
    </div>
     </div>        
 <!-- footer -->
<%@include file="/module/common/Footer.jsp" %> 

</body>
</html>