package service;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberService {
	
	private static MemberService instance = new MemberService();
	//private MemberService() {};
	
	//싱글턴 패턴
	public static MemberService getInstance() {
		if(instance ==null) {
			instance = new MemberService();
		}
		return instance;
	}
	
	MemberDAO dao = MemberDAO.getInstance();
	
	
	public MemberDTO memberSearch(String userid) {
		return dao.memberSearch(userid);
	}//memberSearch 메소드 부분
	
	public boolean memberJoin(MemberDTO dto) {
		return dao.memberJoin(dto); //db에 회원가입창에서 입력한 값이 등록됬다면 true반환
	}//memberJoin 메소드 부분
	
	
}//MemberService class부분
