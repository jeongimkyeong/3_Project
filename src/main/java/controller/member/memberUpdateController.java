package controller.member;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

public class memberUpdateController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("memberUpdateController 진입");
		//로그인시 저장된 세션정보
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		System.out.println("세션에 저장된 정보 userid : "+userid);
		
		MemberService service = MemberService.getInstance();
		MemberDTO dto = service.memberSearch(userid);
		;
		//dto 값을 가지고 페이지이동
		request.setAttribute("userid", dto.getUserid());
		request.setAttribute("username", dto.getUsername());
		request.setAttribute("phonef", dto.getPhone().substring(0, 3));
		request.setAttribute("phones", dto.getPhone().substring(3, 7));
		request.setAttribute("phonet", dto.getPhone().substring(7, dto.getPhone().length()));
		request.setAttribute("zipcode", Integer.toString(dto.getZipcode()));
		request.setAttribute("addr1", dto.getAddr1());
		request.setAttribute("addr2", dto.getAddr2());

		HttpUtil.forward(request, response, "/module/member/modify/MemberUpdate.jsp");
		
		
	}

}
