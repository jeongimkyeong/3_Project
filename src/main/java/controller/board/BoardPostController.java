package controller.board;

import controller.Controller;
import controller.HttpUtil;
import dto.BoardDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.BoardService;

public class BoardPostController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//파라미터 받기(Post.jsp의 form에 입력값 받기)
		String subject = request.getParameter("subject");
		String username = request.getParameter("username");
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");

		
		//DTO 넣기
		BoardDTO dto = new BoardDTO();
		dto.setSubject(subject);
		dto.setUsername(username);
		dto.setContent(content);
		dto.setPwd(pwd);
		
		//서비스 가져오기(싱글톤 패턴)
		BoardService service = BoardService.getInstance();
		
		//서비스처리
		service.PostBoard(dto);
		
		//페이지 이동
		HttpUtil.forward(request, response, "/SubPage/Community/FreeBoard/Post.jsp");
		
	}

}
