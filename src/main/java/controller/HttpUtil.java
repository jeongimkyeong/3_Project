package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HttpUtil {

	public static void forward(HttpServletRequest req,HttpServletResponse resp,String URL) 
	{
		RequestDispatcher dispacher = req.getRequestDispatcher(URL);
		try {
			dispacher.forward(req, resp);
		} catch (ServletException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
}
