<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/module/ConLink.jsp" %>
<%@ include file="/module/common/Header.jsp" %>
<div class="smain" >
	<%@ include file="/SubPage/Book/TagLink/leftbWrapTag.jsp" %>
    
    <div class="content" style="height:1300px">
	    <div class="itemtitle">
	    	<h1>교재소개</h1>
	    </div>
	    <div id="itemlist" style="height:500px">
	    	<ul>
	    		<li class="itemli" >
	    			<form class="itemform">
	    				<img src="/img/Book/book1.jpg">
	    				<h3>공단기 실전동형모의고사 영어</h3>
	    				<em><strong>10,000</strong>원</em>
	    				<a href="#" class="itembtn">장바구니</a>
	    				<a href="#" class="itembtn">구매하기</a>
	    			</form>
	    		</li>
	    		
	    		<li class="itemli">
	    			<form class="itemform">
	    				<img src="/img/Book/book2.jpg">
	    				<h3>공단기 실전동형모의고사 영어</h3>
	    				<em><strong>10,000</strong>원</em>
	    				<a href="#" class="itembtn">장바구니</a>
	    				<a href="#" class="itembtn">구매하기</a>
	    			</form>
	    		</li>
	    		
	    		<li class="itemli">
	    			<form class="itemform">
	    				<img src="/img/Book/book3.jpg">
	    				<h3>공단기 실전동형모의고사 영어</h3>
	    				<em><strong>10,000</strong>원</em>
	    				<a href="#" class="itembtn">장바구니</a>
	    				<a href="#" class="itembtn">구매하기</a>
	    			</form>
	    		</li>
	    		
	    		
	    	</ul>
	    </div>
<%@include file="/SubPage/Book/TagLink/pagingFormTag.jsp" %>
    </div>
</div>
<%@include file="/module/common/Footer.jsp" %>
</body>
</html>