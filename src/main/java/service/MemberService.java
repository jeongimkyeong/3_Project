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
	}
	
	
}
