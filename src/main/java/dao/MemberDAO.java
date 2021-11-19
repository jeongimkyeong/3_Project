package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.MemberDTO;

public class MemberDAO {

	DataSource ds;
	
	//싱글턴 패턴
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		if(instance==null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	//DBCP 데이터베이스를 매번 연결하지않고 미리 연결되있는 db를 객체에 연결에 필요에따라
	//객체를 이용하면 필요할때마다 db를연결할수있음 ( 사용자증가에 따른 서버부하 최적화)
	public MemberDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:comp/env");
			ds = (DataSource)envContext.lookup("jdbc/MysqlDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	//멤버 조회
	public MemberDTO memberSearch(String userid) {
		System.out.println("MemberDAO의 memberSearch메소드 호출");
		MemberDTO dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			String sql="select * from member_tbl where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("rs.next()성공");
				dto = new MemberDTO();
				dto.setUserid(userid);
				dto.setPwd(rs.getString("pwd"));
				dto.setUsername(rs.getString("username"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
				dto.setZipcode(rs.getInt("zipcode"));
				dto.setAddr1(rs.getString("addr1"));
				dto.setAddr2(rs.getString("addr2"));
				dto.setGrade(rs.getInt("grade"));
			}else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {conn.close();}catch(Exception e) {}
			try {pstmt.close();}catch(Exception e) {}
			try {rs.close();}catch(Exception e) {}
		}
		return dto;
	}
	
	
	
	
	
	
	
}//MemberDAO class 부분
