<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="header">
        <!-- TOP 메뉴 -->
        <div class="tWrap">
            <h1>
                <a href="/Main.jsp">
                <img src="/img/hLogo.png">
                </a>
            </h1>
            <div class="tmenu">
                <a onclick="location.href='/auth/memberUpdate.do'">정보수정</a>
                <a onclick="location.href='/auth/Logout.do'">로그아웃</a>
                <a href="#">장바구니</a>
                <a href="#">내강의실</a>
            </div>
        </div>
        <!-- 메뉴 부분 -->
        <div class="meWrap">
            <div class="menu">
                <a href="#">학원소개</a>
                <a href="/SubPage/SignUp/Contents9.jsp">수강신청</a>
                <a href="#">강사소개</a>
                <a href="/SubPage/Book/Mainbooklist.jsp">교재소개</a>
                <a href="/SubPage/Community/FreeBoard/List.jsp">커뮤니티</a>
                <a href="/SubPage/CScenter/Notice/List.jsp">고객센터</a>
            </div>
            
            <div class="smeWrap">
	            <div class="smenu">
	                <ul>
	                    <li>
	                        <a href="#">학원소개</a>
	                    </li>
	                    <li>
	                        <a href="#">오시는길</a>
	                    </li>
	                    <li>
	                        <a href="#">영업시간안내</a>
	                    </li>                                        
	                </ul>
	                <ul>
	                    <li>
	                        <a href="/SubPage/SignUp/Freepass.jsp">프리패스신청</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/SignUp/Contents9.jsp">9급공무원</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/SignUp/Police.jsp">경찰공무원</a>
	                    </li>                                                            
	                </ul>
	                <ul>
	                    <li>
	                        <a href="#">국어</a>
	                    </li>
	                    <li>
	                        <a href="#">영어</a>
	                    </li>
	                    <li>
	                        <a href="#">한국사</a>
	                    </li>                                                             
	                </ul>
	                <ul>
	                    <li>
	                        <a href="/SubPage/Book/BasicBook/MainBasicBook.jsp">기본서</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/Book/TestWorkBook/MainTestWorkBook.jsp">문제집</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/Book/WorkBook/MainWorkBook.jsp">기출문제집</a>
	                    </li>                                                               
	                </ul> 
	                <ul>
	                    <li>
	                        <a href="/SubPage/Community/FreeBoard/List.jsp">자유게시판</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/Community/PassNote/List.jsp">합격수기</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/Community/Data/List.jsp">자료실</a>
	                    </li>                                                               
	                </ul>
	                <ul>
	                    <li>
	                        <a href="/SubPage/CScenter/Notice/List.jsp">공지사항</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/CScenter/Question/List.jsp">자주묻는질문</a>
	                    </li>
	                    <li>
	                        <a href="/SubPage/CScenter/Inquiry/List.jsp">문의게시판</a>
	                    </li>                                                               
	                </ul>                                                                                
	            </div>
	        </div>
        </div>
    </div>
</body>
</html>