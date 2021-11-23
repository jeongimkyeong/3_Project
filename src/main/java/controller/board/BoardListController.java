package controller.board;

import java.util.Vector;

import controller.Controller;
import controller.HttpUtil;
import dto.BoardDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.BoardService;

public class BoardListController implements Controller{

		@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) {
			 	
			//파라미터 가져오기(request객체의 getParameter()메서드로 사용자가 입력한 데이터 가져와 변수에 대입)
			String s = request.getParameter("start");
			String e = request.getParameter("end");
			int start=0;
			int end=10;
			
			//입력값 검증
			String nowPage= "1";
			//외부로부터 전달 받은 페이지가 있다면 (첫 번째 페이지는 조건문 처리 X)
			if(request.getParameter("nowPage")!=null) 
			{
				//nowPage값이 있다면 start값 계산
				nowPage = request.getParameter("nowPage"); //nowPage받아옴
				start = Integer.parseInt(request.getParameter("start"));
				end = Integer.parseInt(request.getParameter("end"));
			}
			
			//서비스 실행
			BoardService service = BoardService.getInstance();
			
			//start - end 게시물 가져오기
			Vector<BoardDTO> list = service.GetBoardList(start, end);
			
			//전체 게시물 수 받아오기
			int tcnt = service.GetTotalCount();
			System.out.println("TCNT : " + tcnt);
			
			//페이지 이동
			request.setAttribute("list", list);
			request.setAttribute("tcnt", tcnt);

			HttpUtil.forward(request, response, "/SubPage/Community/FreeBoard/List.jsp");
		}
}
