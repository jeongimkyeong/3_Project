package controller.board;

import java.util.Vector;

import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardListController implements Controller{

		@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) {
			 
			//파라미터 가져오기(request객체의 getParameter()메서드로 사용자가 입력한 데이터 가져와 변수에 대입)
			int start=0;
			int end=10;
			
			//입력값 검증 (첫 번째 페이지는 조건문 처리 X)
			String nowPage= "1";
			//외부로부터 전달 받은 페이지가 있다면
			if(request.getParameter("nowPage")!=null) 
			{
				//nowPage값이 있다면 start값 계산
				nowPage = request.getParameter("nowPage"); //nowPage받아옴
				start = Integer.parseInt(request.getParameter("start"));
				end = Integer.parseInt(request.getParameter("end"));
			}
			
			//서비스 실행
			
			//전체 게시물 수 받아오기
			
			//페이지 이동
			
		}
}
