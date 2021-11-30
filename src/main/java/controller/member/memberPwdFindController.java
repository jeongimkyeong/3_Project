package controller.member;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;

public class memberPwdFindController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//파라미터받기
		String userid = request.getParameter("userid");
		String phonef = request.getParameter("phonef");
		String phones = request.getParameter("phones");
		String phonet = request.getParameter("phonet");
		//dto에 입력받은 값 넣기
		MemberDTO dto = new MemberDTO();
		dto.setUserid(userid);
		dto.setPhone(phonef+phones+phonet);
				
		System.out.println(dto.getUserid());
		System.out.println(dto.getPhone());
		//서비스실행
		MemberService service = MemberService.getInstance();
		String pwd = service.memberPwdFindSearch(dto);
		//페이지이동
		request.setAttribute("pwd", pwd);
		HttpUtil.forward(request, response, "/module/member/Login/MemberPwdFind.jsp");
		
		
	}

	
	
}//memberPwdFindController class 부분
