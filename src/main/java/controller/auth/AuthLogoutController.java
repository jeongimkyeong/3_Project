package controller.auth;

import java.io.IOException;
import java.util.Enumeration;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AuthLogoutController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("AuthLogoutController 진입");
		
		HttpSession session = request.getSession();
		
		//저장된 세션 정보 (속성이름,속성값) 모두가져와보는것
//		String name;
//		String value;
//		int i=0;
//		Enumeration<String> enu = session.getAttributeNames();
//		while(enu.hasMoreElements()) {
//			i++;
//			name=enu.nextElement();
//			value=session.getAttribute(name).toString();
//			
//			System.out.println("설정되있는 세션 속성이름["+i+"] :" + name);
//			System.out.println("설정되있는 세션 속성값["+i+"] :" + value);
//		}
		
		//저장된 세션 삭제기능
		session.invalidate();
		//로그인페이지이동할때 보낼 메시지
		request.setAttribute("msg", "로그아웃 하셨습니다");
		HttpUtil.forward(request, response, "/MainPage.jsp");
		
		
	}

	
}//AuthLogoutController class 부분
