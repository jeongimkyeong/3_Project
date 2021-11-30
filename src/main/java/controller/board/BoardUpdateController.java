package controller.board;

import controller.Controller;
import controller.HttpUtil;
import dto.BoardDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.BoardService;

public class BoardUpdateController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//현재 읽고 있는 게시물 가져오기
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		//입력값 검증
		if(username.isEmpty()||pwd.isEmpty()||subject.isEmpty()||content.isEmpty())
		{
			request.setAttribute("msg", "입력이 올바르지 않습니다.");
			HttpUtil.forward(request, response, "/board/updateform.do");
		}
		
		//ID일치여부 확인 && 게시물 패스워드 일치 여부 확인
		HttpSession session = request.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		String loginname = (String)session.getAttribute("username");
		
		if(!loginname.equals(username))
		{
			request.setAttribute("msg", "게시물을 게시한 계정이 아닙니다.");
			HttpUtil.forward(request, response, "/board/read.do");
		}
		else if(!dto.getPwd().equals(pwd))
		{
			request.setAttribute("msg", "패스워드가 일치하지 않습니다.");
			HttpUtil.forward(request, response, "/board/read.do");
		}
		else	//ID + PW 둘 다 일치
		{	
				//수정할 내용 updatedto에 담기
			BoardDTO updatedto = new BoardDTO();
			updatedto.setUsername(username);
			updatedto.setSubject(subject);
			updatedto.setContent(content);
			updatedto.setNum(dto.getNum());
			
			//서비스 객체
			BoardService service = BoardService.getInstance();
			
			//처리 함수 실행
			service.UpdateBoard(updatedto);
			
			//페이지 이동
			request.setAttribute("msg", "수정 완료!");
			HttpUtil.forward(request, response, "/board/read.do");
		}
	}

}
