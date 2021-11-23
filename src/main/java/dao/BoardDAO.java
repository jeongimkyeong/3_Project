package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import controller.Controller;
import dto.BoardDTO;

public class BoardDAO {
	//여기서만 사용 가능
	private static BoardDAO instance = new BoardDAO();
	//데이터베이스소스 ds변수 생성
	DataSource ds;
	
	//싱글톤 패턴
	public static BoardDAO getInstance() {
		if(instance==null)
			instance = new BoardDAO();
		return instance;
	}
	
	//생성자 함수 사용했을 때 연결 툴 만들어서 작업하도록
	public BoardDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:comp/env");
			ds = (DataSource)envContext.lookup("jdbc/MysqlDB");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//게시물 추가작업
	public void PostBoard(dto.BoardDTO dto) {
		//커넥션생성
		Connection conn = null;			
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		
		try {
			//커넥션툴 연결작업
			conn = ds.getConnection();
			
			//Post작성한 데이터 DB에 삽입 쿼리문(조건이 수시로 변할 때 변수처리를 '?'문자로 처리 : 바인딩 변수)
			String sql = "insert into board_tbl(subject, username, content, pwd) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getUsername());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getPwd());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {rs.close();}catch(Exception e) {}
			try {pstmt.close();}catch(Exception e) {}
			try {conn.close();}catch(Exception e) {}
		}
	}
	
	
	
	
	//게시물 리스트
	public Vector<BoardDTO> GetBoardList(int start, int end){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//Vector:ArrayList와 다르게 동기화 처리 가능
		Vector<BoardDTO> list = new Vector();
		
		try {
			conn = ds.getConnection();
			
			//list 조회하기 위한 sql문 (board테이블의 num을 내림차순으로 출력 / limit(시작,반환갯수))
			String sql = "select * from board_tbl order by num desc limit ?,?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start); 	//limit 시작값
			pstmt.setInt(2, end);		//limit 반환갯수
			rs = pstmt.executeQuery();	//쿼리 전달된 값 변수(rs) 대입
			
			if(rs!=null) //전달된 값이 있다면 
			{
				while(rs.next()) //다음 행이 존재할 경우 true리턴 / 마지막행에선 false리턴
				{
					//dto에 값 담음
					BoardDTO dto = new BoardDTO();
					dto.setNum(rs.getInt("num"));
					dto.setSubject(rs.getString("subject"));
					dto.setUsername(rs.getString("username"));
					dto.setRegdate(rs.getString("regdate"));
					dto.setCount(rs.getInt("count"));
					//dto값 list에 추가
					list.add(dto);
				}
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();}catch(Exception e1) {}
			try {pstmt.close();}catch(Exception e1) {}
			try {conn.close();}catch(Exception e1) {}
		}
		//값 받아서 리턴 (리스트의 위치 정보가 전달 되는 것 (BoardService로 전달))
		return list;
	}
	
	//전체 게시물 수 가져오기
	public int GetTotalCount()
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totalcnt=0;
		
		try {
			conn = ds.getConnection();
			String sql = "select count(*) from board_tbl";
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				totalcnt=rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (Exception e2) {}
			try {pstmt.close();} catch (Exception e2) {}
			try {conn.close();} catch (Exception e2) {}
		}
		return totalcnt;
	}
	

	//해당 게시물 가져오기
	public BoardDTO GetBoardDTO(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDTO dto = null;
		
		try {
			conn = ds.getConnection();
			String sql = "select * from board_tbl where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			//조회된 결과가 있고, 열을 한번 내렸을 때 값이 있다면
			if(rs!=null && rs.next()) {
				dto=new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setPwd(rs.getString("pwd"));
				dto.setUsername(rs.getString("username"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setCount(rs.getInt("count"));
			}
			
		} catch (Exception e) {
			
		} finally {
			try {conn.close();}catch(Exception e) {}
			try {pstmt.close();}catch(Exception e) {}
			try {rs.close();}catch(Exception e) {}
		}
		return dto;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
