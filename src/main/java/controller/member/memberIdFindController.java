package controller.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import controller.Controller;
import controller.HttpUtil;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;

public class memberIdFindController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		
		//파라미터받기
		String username = request.getParameter("username");
		String phonef = request.getParameter("phonef");
		String phones = request.getParameter("phones");
		String phonet = request.getParameter("phonet");
		
		//dto에 입력받은 값 넣기
		MemberDTO dto = new MemberDTO();
		dto.setUsername(username);
		dto.setPhone(phonef+phones+phonet);
		
		System.out.println(dto.getUsername());
		System.out.println(dto.getPhone());
		//서비스실행
		MemberService service = MemberService.getInstance();
		String userid = service.memberIdFindSearch(dto);
		
		//페이지이동
		request.setAttribute("userid", userid);
		HttpUtil.forward(request, response, "/module/member/Login/MemberIdFind.jsp");

	}

	
	
}//memberIdFindController class 부분
