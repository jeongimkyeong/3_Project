<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/MainSection.css">
<%@include file="/module/ComLink.jsp" %>
</head>
<body>
<%
	String msg = null;
	msg = (String)request.getAttribute("msg");
	if(msg != null){
		%>
		<script>
			alert("<%=msg%>");
		</script>
		<%
	}
%>
	<div id="wrap">
		<header id="header">
			<%@include file="/module/common/LoginHeader.jsp" %>
		</header>
		
		<div class="mainPage">
			<%@include file="/module/main/MainSection.jsp"%>
		</div>
		
		<!-- footer -->
			<%@include file="/module/common/Footer.jsp" %>
	</div>
</body>
</html>