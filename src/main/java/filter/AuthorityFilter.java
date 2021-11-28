package filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import controller.HttpUtil;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AuthorityFilter implements Filter{
	//필터 등록하는 방법 2가지 (1.web.xml / 2.어노테이션) 두 방법을 모두 이용해서 중복 필터 등록은 안됨
	
	//URL-권한(숫자) 저장용
	Map<String, Integer> PageGradeMap = new HashMap<String,Integer>();
	
	//딱 한 번만 호출(웹서버 시작할 때 서블릿 작업시 필요한 자원을 준비시키는 코드 넣음)
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//grade값에 따른 계정 유형 (익명계정 - 0 / 일반회원 - 1 / 관리자 - 2)
		
		//페이지별 허용 권한 설정(URL grade값 부여)
		//자유게시판 페이지
		PageGradeMap.put("/board/list.do", 1); 	 //게시판 리스트 일반계정 이상 허용
		PageGradeMap.put("/board/post.do", 1); 	 //게시판 글쓰기 일반계정 이상 허용
		PageGradeMap.put("/board/update.do", 1); //게시판 글수정 일반계정 이상 허용
		PageGradeMap.put("/board/delete.do", 1); //게시판 글삭제 일반계정 이상 허용
		
		
		//합격수기 페이지
		//자료실 페이지(관리자만 가능)
	}
	
	//필터링 설정한 서블릿을 실행할 때마다 호출되는 메소드(실제 필터링 기능 구현)
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//요청 URL 가져오기
		HttpServletRequest req = (HttpServletRequest)request;	//ServletRequest request를 웹에서 사용할 용도로 변경
		String URL = req.getServletPath(); 						//req(ServletRequest request)내장객체로부터 요청 URL정보 꺼내오기
		System.out.println("FILTER에서 URL확인 : " + URL);
		
		//접속한 계정의 Grade값 가져오기
		int UserGradeNo=0; 
		HttpSession session = req.getSession();					//HttpSession인터페이스는 둘 이상의 page request에서 사용자를 식별하거나, 웹 사이트를 방문하고 해당 사용자에 대한 정보를 저장하는 방법 제공 
		Integer tmp = (Integer)session.getAttribute("grade");	//로그인에서 부여했던 grade에 해당하는 value값 가져와 tmp에 대입
		if(tmp!=null) {											//tmp(세션에서 받아온 grade값)가 null이 아니라면 UserGradeNo를 tmp에 대입
			UserGradeNo = tmp;
		}
		System.out.println("FILTER에서 UserGradeNo확인 : " + UserGradeNo);
			

		//페이지별 권한 가져오기
		tmp = PageGradeMap.get(URL);							//해당 URL의 그레이드 값 tmp에 대입
		int PageGradeNo=0;										//PageGradeNo==0 : 해당 페이지에 부여된 권한 X, 모두 볼 수 있는 페이지
		if(tmp!=null) {											//PageGradeNo!=0 : 권한이 있어야 볼 수 있는 페이지
			PageGradeNo = tmp;
		}
		System.out.println("FILTER에서 PageGradeNo확인 : " + PageGradeNo);
		
		//페이지별 접근 권한 처리
		if(PageGradeNo>=1 && UserGradeNo==0)					//익명계정(0)이 1권한 이상의 페이지에 접근한 경우 오류메시지 출력
		{
			throw new ServletException("로그인이 필요한 페이지입니다.");
//			request.setAttribute("msg","로그인이 필요한 페이지입니다.");//예외처리 오류메시지 날리고 로그인 창으로 보냄
//			HttpUtil.forward((HttpServletRequest)request,(HttpServletResponse)response, "/module/member/Login/Login.jsp");
			
		}
		if(PageGradeNo>=2 && UserGradeNo<2)						//관리자 권한이 필요한 페이지(2)에 관리자가 아닌 계정이 요청한 경우
		{
			throw new ServletException("페이지 접근 권한이 없습니다.");

		}
		
		chain.doFilter(request, response);						//지정된 위치로 데이터 전달
		
	}

	//딱 한 번만 호출(필터 객체가 삭제 될 때 호출되는 메소드 서블릿이 사용한 자원을 초기화 시키는 코드 넣음) 
	@Override
	public void destroy() {
		Filter.super.destroy();
	}

}
