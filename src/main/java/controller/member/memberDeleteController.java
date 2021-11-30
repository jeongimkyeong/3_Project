package controller.member;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

public class memberDeleteController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//로그인시 저장된 세션정보
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		System.out.println("세션에 저장된 정보 userid : "+userid);
		
		MemberService service = MemberService.getInstance();
		boolean delete = service.memberDelete(userid);
		
		if(delete ==true) {
			request.setAttribute("msg", "회원삭제 됬습니다");
			HttpUtil.forward(request, response, "/module/member/Login/Login.jsp");
		}else {
			request.setAttribute("msg", "회원삭제 실패했습니다 다시 시도하세요");
			HttpUtil.forward(request, response, "/module/Main.jsp");
		}
		
	}

}//memberDeleteController class 부분
