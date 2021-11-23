package controller.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import controller.Controller;
import dao.MemberDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class memberJoinIdCheck implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		//한글깨짐 방지
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		  }
		response.setContentType("text/html; charset=utf-8");	
		String id = request.getParameter("userid");
		
		//System.out.println("memberJoinIdCheck진입");
		//System.out.println("memberJoin.jsp에서 ajax로 받아온 data값인 id값 : "+id);
		
		MemberDAO dao = new MemberDAO();
		String idcheck = dao.memberIdSearch(id);
		//System.out.println("DB에서 받아온 userid 값 : " + idcheck);
		
		try {
			response.getWriter().print(idcheck);//ajax로 보내는것
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	
	
}
