package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login.do")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		
		//원래는 데이터베이스와 연동하여 실제 그아이디에 그패스워드가 있는경우에만 로그인 가능
		if(id.equals("test")&& password.equals("1234")) {
			HttpSession session = req.getSession();
			
			//세션에 loginUser를 셋팅
			session.setAttribute("loginUser", "조용규");
			

			
		}//if() end
		
		//index.jsp로 리다이렉트방식
		resp.sendRedirect("/index.jsp");
	}
}
