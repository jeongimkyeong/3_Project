<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*,javax.sql.*,javax.naming.*" %>

<body>
<%
	//연결 툴 만드는 작업
	//서버의 context.xml에서 web.xml에 적혀진 res-ref-name을 찾아서 DBCP 세팅값 확인(오라클 서버주소, 유저명, 암호등)
	try {
		Context initContext = new InitialContext();
		
		//initContext의 lookup메서드를 이용해 "java:comp/env"에 해당하는 객체 찾아서 envContext에 삽입
		Context envContext = (Context)initContext.lookup("java:comp/env");
		
		//envContext의 lookup메서드를 이용해 "jdbc/MysqlDB"에 해당하는 객체를 찾아서 ds에 삽입 (context.xml에서 해당 이름의 DBCP를 찾아옴)
		DataSource ds = (DataSource)envContext.lookup("jdbc/MysqlDB"); 
		
		//getConnection메서드 이용해 커넥션풀로 부터 커넥션 객체를 얻어내어 conn변수에 저장
		Connection conn = ds.getConnection();
		
		//PreparedStatement sql문을 중간에 임시 저장 후 최종 sql문 완성되면 executeUpdate()함수 실행
		PreparedStatement pstmt=null;
		
		for(int i=1; i<=500; i++)
		{
		String sql = "insert into board_tbl values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		//셋팅걸기 auto_increment는 null값 넣으면 자동
		pstmt.setString(1, null); 
		pstmt.setString(2, "aaa@naver.com"+i);
		pstmt.setString(3, "aaa"+i);
		pstmt.setString(4, "Subject"+i);
		pstmt.setString(5, "Content"+i);
		pstmt.setString(6, "2021-00-00");
		pstmt.setString(7, "1234");
		pstmt.setInt(8, 0);
		pstmt.setString(9, "파일없음");
		pstmt.setInt(10, 0);
		pstmt.executeUpdate(); // 조회 : executeQuery()
		}
		
		try {pstmt.close();}catch(Exception e1) {}
		try {conn.close();}catch(Exception e2) {}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		
	}
%>

</body>
</html>