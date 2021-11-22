package controller.board;

import controller.Controller;
import dto.BoardDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.BoardService;

public class BoardReadController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//파라미터 가져오기(num에 해당하는 페이지 꺼내와서 read.jsp전달)
		int num =Integer.parseInt(request.getParameter("num"));
		
		//입력값 검증
		String nowPage = "1";
		
		//서비스 실행
		BoardService service = BoardService.getInstance();
		
		//num에 해당하는 게시물 가져오기
		//게시물 번호 검색해서 번호에 해당하는 내용들 포함해서 가져오기
		BoardDTO dto = service.GetBoardDTO(num);
		
		//페이지이동
		
	}

}
