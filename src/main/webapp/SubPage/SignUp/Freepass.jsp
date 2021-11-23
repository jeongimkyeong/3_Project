<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/Freepass.css" type="text/css" rel="stylesheet">

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
                    <h3>프리패스 신청</h3>
                    프리패스는 서비스기간동안 제한없이 모든 서비스 이용가능합니다.
                </div>
                <div class="scont">
        
                    <div class="prBox">
                        <span class="mbg pretit">프리미엄내용</span>
                        <table class="stbl" style="width:550px">
                                <colgroup>
                                    <col style="width:40%">
                                    <col style="width:18%">
                                    <col style="width:18%">
                                    <col style="width:24%">
                                </colgroup>
                                <tbody>	
                    
                                    <tr>
                                        <th>1개월 무제한</th>
                                        <td>기간 : 30일</td>
                                        <td><strong class="fr">100,000</strong>원</td>
                                        <td><a href="#" class="btn"><span class="sico mbg"></span>신청하기</a></td>
                                    </tr>	
                    
                                    <tr>
                                        <th class="brn">2개월 무제한</th>
                                        <td class="brn">기간 : 60일</td>
                                        <td class="brn"><strong class="fr">200,000</strong>원</td>
                                        <td class="brn"><a href="#" class="btn"><span class="sico mbg"></span>신청하기</a></td>
                                    </tr>	
                                    
                                </tbody>
                            </table>
                    </div>
                </div>
            </div>
        </div>
        
<!-- footer -->
<%@include file="/module/common/Footer.jsp" %>           

</body>
</html>