package controller.board;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardDeleteformController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpUtil.forward(request, response, "/SubPage/Community/FreeBoard/Delete.jsp");
		
	}

}
