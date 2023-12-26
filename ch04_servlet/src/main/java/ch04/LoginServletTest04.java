package ch04;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginServletTest04 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
		
		if(id != null && pw != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idkey", id);  //Session 끊길때까지 사용가능
		}
		response.sendRedirect("04.login.jsp");
		
	}

}
