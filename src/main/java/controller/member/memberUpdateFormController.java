package controller.member;

import java.io.IOException;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;

public class memberUpdateFormController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//파라미터 받기
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String zipcode = request.getParameter("zipcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		

		
		MemberService service = MemberService.getInstance();
		
		MemberDTO dto = new MemberDTO();
		dto.setUserid(userid);
		dto.setPwd(pwd);
		dto.setPhone(phone1+phone2+phone3);
		dto.setZipcode(Integer.parseInt(zipcode));
		dto.setAddr1(addr1);
		dto.setAddr2(addr2);
		
		boolean update = service.memberUpdate(dto);
		if(update == true) {

			request.setAttribute("msg", "회원수정 성공했습니다");
			HttpUtil.forward(request, response, "/module/Main.jsp");
		}else {
				request.setAttribute("msg", "비밀번호 일치하지않아 회원수정 실패했습니다");
				HttpUtil.forward(request, response,"/module/Main.jsp");
		}
	}

}//memberUpdateFormController class부분
