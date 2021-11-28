package controller.board;

import controller.Controller;
import controller.HttpUtil;
import dto.BoardDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.BoardService;

public class BoardDeleteController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//파라미터 받기
		int num = Integer.parseInt(request.getParameter("num"));
		String pwd = request.getParameter("pwd");
		
		//게시물 DTO받기
		HttpSession session = request.getSession();
		BoardDTO dto = (BoardDTO) session.getAttribute("dto");
		
		//입력값 검증
		if(request.getParameter("num")==null) {
			request.setAttribute("msg","게시물 번호가 올바르지 않습니다");
			HttpUtil.forward(request, response, "/board/read.do");
		}
		//서비스 호출
		BoardService service = BoardService.getInstance();
		
		//메서드 실행
		if(dto.getPwd().equals(pwd)) 
		{
			service.DeleteBoard(num);
			//페이지 이동
			request.setAttribute("msg", "삭제완료!");
			HttpUtil.forward(request, response, "/board/list.do");
		}
		else
		{
			request.setAttribute("msg", "입력하신 패스워드가 올바르지 않습니다");
			HttpUtil.forward(request, response, "/board/read.do");
		}
		
	}
	

}
