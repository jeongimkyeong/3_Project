package controller.auth;

import java.io.IOException;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

public class AuthLoginController  implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AuthLoginController 호출됨");
		
		//파라미터 받아오기(Login.jsp에서 입력받은 userid와 pwd)
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		//Login.jsp에서 입력받은 email과 pwd 조회해보기
			System.out.println("userid : " + userid);
			System.out.println("psd : " + pwd);
		
		//입력값검증 Login.jsp에서 자바스크립트 처리해서 사용은안한다
//		if(userid.isEmpty()) {
//			request.setAttribute("msg", "아이디 입력하지않았습니다");
//			HttpUtil.forward(request, response,"/module/Login/Login.jsp");
//		}else if(pwd.isEmpty()) {
//			request.setAttribute("msg", "비밀번호 입력하지않았습니다");
//			HttpUtil.forward(request, response,"/module/Login/Login.jsp");
//		}
		
		
		
		//회원서비스 이용시작 service가 DAO와 DTO를 연결하는 클래스같네요
		//MemberService 타입의 객체생성
		MemberService service = MemberService.getInstance();
		
		MemberDTO dto = service.memberSearch(userid);
		//회원정보 조회 서비스객체를통해서 Login.jsp에서 입력받은 userid 를 가지고
		//MemberDTO타입의 메소드(memberSearch(userid))를 호출해서 
		//Login.jsp에서 입력받은 userid 를 가지고 MemberDTO타입으로
		//MemberDAO안에 있는 memberSearch(email) 메소드로 보낸다
		//MemberDAO에 memberSearch(String email) 메소드가 실행이되고
		//Login.jsp에서 입력받은 userid를 가지고 db와 연결을 하고
		//userid에 해당되는 정보들을 추출해서 dto 객체에 담는다
		//그리고 메소드 타입을 MemberDto해서 dto 객체를 return한다
		//MemberDTO 타입으로 dto 객체를 만들면 회원정보가 담긴 dto객체가 생성된다
		
		if(dto.getPwd().equals(pwd)) {//입력받은비번과 db에있는 비번이 같다면
			//세션부여
			HttpSession session = request.getSession();//세션객체받아옴
			//세션에 정보추가
			session.setAttribute("userid", userid);//계정명 세션에추가
			session.setAttribute("username", dto.getUsername());//이름 세션에추가
			session.setAttribute("grade", dto.getGrade());//등급 세션에추가
			
			//등록한 세션값확인
			System.out.println(session.getAttribute("userid"));
			System.out.println(session.getAttribute("username"));
			System.out.println(session.getAttribute("grade"));
			
			//세션유지시간 설정
			session.setMaxInactiveInterval(60*30); // 30분
			
			//페이지이동(로그인한 메인메이지)
			
			//request,response 값을 가지고 /module/Main.jsp에 이동한다
			//HttpUtil.forward(request, response, "/module/Main.jsp");
			try {
				//request,response 값을 가져가지않고 바로 이동한다
				//실행했을때 URL주소가 달라지는 차이도있다
				response.sendRedirect("/module/Main.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//DB IDPW == 입력받은 IDPW 비교후 세션에 저장
		//페이지이동(메인페이지)
		
	}
	
	
	
	
}
