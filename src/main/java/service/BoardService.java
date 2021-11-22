package service;

import java.util.Vector;

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
		//dao에서 사용할 수 있는 함수 생성
		dao.PostBoard(dto);		
	}
	
	//게시물 리스트(start-end까지의 게시물 가져오기)
	public Vector<BoardDTO> GetBoardList(int start, int end) {
		//dao에서 사용할 수 있는 함수 생성
		return dao.GetBoardList(start,end);
	}
	
	//전체 게시물 수 가져오기
	public int GetTotalCount() {
		return dao.GetTotalCount();
	}
	
	
	
	
	
}
