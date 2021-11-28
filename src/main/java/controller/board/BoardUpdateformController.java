package controller.board;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardUpdateformController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//페이지 이동
		HttpUtil.forward(request, response, "/SubPage/Community/FreeBoard/Update.jsp");
		
	}

}
