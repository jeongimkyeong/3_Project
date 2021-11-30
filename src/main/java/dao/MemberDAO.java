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
			System.out.println("DBCP TRY부분 진입");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}//생성자 메소드 MemberDAO를 실행하게되면 자동실행되는부분
	
	
	//멤버 조회
	public MemberDTO memberSearch(String userid) {
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
				dto = new MemberDTO();
				dto.setUserid(userid);
				dto.setPwd(rs.getString("pwd"));
				dto.setUsername(rs.getString("username"));
				dto.setPhone(rs.getString("phone"));
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
	}//memberSearch 메소드 부분
	
	public String memberIdSearch(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userid = null;
		
		try {
			conn = ds.getConnection();
			String sql="select userid from member_tbl where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs != null) {//받아온 id 값이 db에 있따면
				while(rs.next()) {
					userid = rs.getString("userid");
				}
			}else {
				return "검색된아이디없음";
			}
		
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {conn.close();}catch(Exception e) {}
				try {pstmt.close();}catch(Exception e) {}
			}
		return userid;
			
	}//memberIdSearch class 부분
	
	public boolean memberJoin(MemberDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result=0;
		
		try {
			conn = ds.getConnection();
			String sql="insert into member_tbl values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getUsername());
			pstmt.setString(4, dto.getPhone());
			pstmt.setInt(5, dto.getZipcode());
			pstmt.setString(6, dto.getAddr1());
			pstmt.setString(7, dto.getAddr2());
			pstmt.setInt(8, dto.getGrade());
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {conn.close();}catch(Exception e) {}
			try {pstmt.close();}catch(Exception e) {}
		}
		if(result != 0) {
			return true;
		}else {
			return false;
		}
	}//memberJoin 메소드 부분
	
	
	public boolean memberUpdate(MemberDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result=0;
		
		try {
			conn = ds.getConnection();
			String sql="update member_tbl set phone=?,zipcode=?,addr1=?,addr2=? where userid=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getPhone());
			pstmt.setInt(2, dto.getZipcode());
			pstmt.setString(3, dto.getAddr1());
			pstmt.setString(4, dto.getAddr2());
			pstmt.setString(5, dto.getUserid());
			pstmt.setString(6, dto.getPwd());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {conn.close();}catch(Exception e) {}
			try {pstmt.close();}catch(Exception e) {}
		}
		if(result != 0 ) {
			return true;
		}else {
			return false;
		}
		
	}//memberUpdate 메소드 부분
	
	public String memberIdFindSearch(MemberDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userid=null;
		
		try {
			conn = ds.getConnection();
			String sql="select userid from member_tbl where username=? and phone=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUsername());
			pstmt.setString(2, dto.getPhone());
			rs = pstmt.executeQuery();
			
			
			if(rs != null) {
				rs.next();
				userid = rs.getString("userid");
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
		
		return userid;
		
		
	}//memberIdFindSearch 메소드 부분
	
	public String memberPwdFindSearch(MemberDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pwd=null;
		
		try {
			conn = ds.getConnection();
			String sql="select pwd from member_tbl where userid=? and phone=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserid());
			pstmt.setString(2, dto.getPhone());
			rs = pstmt.executeQuery();
			
			
			if(rs != null) {
				rs.next();
				pwd = rs.getString("pwd");
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
		
		return pwd;
		
		
	}//memberIdFindSearch 메소드 부분
	
	
	
//	Connection conn = null;
//	PreparedStatement pstmt = null;
//	ResultSet rs = null;
//	
//	try {
//		conn = ds.getConnection();
//		String sql="";
//		pstmt = conn.prepareStatement(sql);
//		
//		
//	} catch (SQLException e) {
//		e.printStackTrace();
//	}finally {
//		try {conn.close();}catch(Exception e) {}
//		try {pstmt.close();}catch(Exception e) {}
//		try {rs.close();}catch(Exception e) {}
//	}
	
}//MemberDAO class 부분
