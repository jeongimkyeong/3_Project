<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="paging" >
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
                                <option value="0" >상품명</option>

                            </select>
                            <input type="text" name="searchstr" id="searchstr" class="inptxt1" value="">
                            <a href="#" class="fbtn grey" style="background-color:#cc3333;">검색하기</a>
                        </fieldset>
                    </div>
                </form>
</body>
</html>