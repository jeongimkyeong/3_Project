package controller;

import java.io.IOException;
import java.util.HashMap;

import controller.auth.AuthLoginController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{

	//URL-controller 저장
	HashMap<String,Controller> list = null;
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 함수 호출됨");
		list = new HashMap<String,Controller>();
		//멤버 처리 URL-Controller 저장
		
		//인증
		list.put("/auth/Login.do",new AuthLoginController());
	}
	

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service함수 호출됨");
		//문자셋 설정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("FController 진입");
		//요청한 작업 URL 추출 
		//(실제 웹서버의 주소로 가는것이아닌 .do인 서블릿으로 통해 가는거라
		//URL 을 추출할수없돠)
		String URI = request.getRequestURI();
		System.out.println("요청 URI : " + URI);
		//컬렉션에 해당 URL이 존재하는지, 존재한다면 Controller객체를 가져옴
		Controller subController = list.get(URI);
		//execute()호출을 통해 해당 작업처리 수행
		subController.execute(request, response);
	}
	
	
	
	
}//FrontController class 부분
