package controller.auth;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;

public class AuthLoginController  implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AuthLoginController 호출됨");
		
		//파라미터 받아오기(Login.jsp에서 입력받은 email과 pwd)
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		//입력값검증
		if(userid.isEmpty()) {
			request.setAttribute("msg", "아이디 입력하지않았습니다");
			HttpUtil.forward(request, response,"/module/Login/Login.jsp");
		}else if(pwd.isEmpty()) {
			request.setAttribute("msg", "비밀번호 입력하지않았습니다");
			HttpUtil.forward(request, response,"/module/Login/Login.jsp");
		}
		
		//Login.jsp에서 입력받은 email과 pwd 조회해보기
		System.out.println("userid : " + userid);
		System.out.println("psd : " + pwd);
		
		//회원서비스 이용시작 service가 DAO와 DTO를 연결하는 클래스같네요
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
		
		
		//DB IDPW == 입력받은 IDPW 비교후 세션에 저장
		//페이지이동(메인페이지)
		
	}
	
	
	
	
}
