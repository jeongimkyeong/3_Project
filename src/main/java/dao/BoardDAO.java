package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import controller.Controller;

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
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//커넥션툴 연결작업
			conn = ds.getConnection();
			
			//Post작성한 데이터 DB에 삽입 쿼리문
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
}
