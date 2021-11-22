package controller.member;

import java.io.IOException;
import java.text.ParseException;

import dto.MemberDTO;
import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;

public class memberJoinController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("memberJoinController 진입");
		
		//파라미터받기
		String userid= request.getParameter("userid");
		String pwd= request.getParameter("pwd");
		String pwdchk= request.getParameter("pwdchk");
		String username= request.getParameter("username");
		String phone1= request.getParameter("phone1");
		String phone2= request.getParameter("phone2");
		String phone3= request.getParameter("phone3");
		int zipcode= Integer.parseInt(request.getParameter("zipcode")) ;
		String addr1= request.getParameter("addr1");
		String addr2= request.getParameter("addr2");
		int grade = 1;//일반회원 권한
		
		//아이디중복확인
		MemberService service = MemberService.getInstance();
		MemberDTO dto =  service.memberSearch(userid);

			//비밀번호 일치확인
			if(pwd.equals(pwdchk)) {
				//dto에 파라미터값 담기
				dto = new MemberDTO();
				dto.setUserid(userid);
				dto.setPwd(pwd);
				dto.setUsername(username);
				dto.setPhone(phone1+phone2+phone3);
				dto.setZipcode(zipcode);
				dto.setAddr1(addr1);
				dto.setAddr2(addr2);
				dto.setGrade(grade);
				//서비스 실행
				boolean join = service.memberJoin(dto);
				//페이지이동
				if(join == true) {
					request.setAttribute("msg", "회원가입에 성공 하셨습니다");
					HttpUtil.forward(request, response, "/MainPage.jsp");
				}else {
					request.setAttribute("msg", "회원가입에 실패.. 하셨습니다");
					HttpUtil.forward(request, response, "/module/Join/memberJoin.jsp");
				}
			}else{
				request.setAttribute("msg", "비밀번호를 확인해주세요");
				HttpUtil.forward(request, response, "/module/Join/memberJoin.jsp");
			}//if문 (비밀번호 일치확인)
			
		
	}

	
	
}//memberJoinController class 부분
