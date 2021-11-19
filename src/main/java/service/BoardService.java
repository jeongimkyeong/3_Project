package service;

import dao.BoardDAO;
import dto.BoardDTO;

public class BoardService {
	//객체 연결
	private static BoardService instance = new BoardService();
	//디폴트 생성자는 여기서만 사용할 수 있도록 함
	private BoardService() {};
	
	
	public static BoardService getInstance() {
		if(instance==null)
			instance = new BoardService();
		return instance;
	}
	
	
	//DAO가져오기
	BoardDAO dao = BoardDAO.getInstance();
	
	
	//게시물 추가
	public void PostBoard(BoardDTO dto) {
		dao.PostBoard(dto);
	}
	
	
	
	
	
}
