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
		try {
			response.sendRedirect("/board/list.do");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//Post처리하고 나서 list로 이동(하지만 새로고침 했을 때 동일 게시물 계속 올라가게 됨) 
		//HttpUtil.forward(request, response, "/board/list.do");
		
		//sendRedirect() 메소드는 응답 객체가 가진 헤더 정보에 클라이언트가 다음번에 어디로 갈지를 지정해주는 것(소드가 실행된 이후의 코드 또한 계속 실행)
		//forward: 제어 흐름을 다른 곳으로 넘기는 방식

		
		
		
	}

}
