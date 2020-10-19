package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServlet extends HttpServlet {
// 상속을 받아야 java가 서블릿이 된다.
	
	public LifeCycleServlet() {
		System.out.println("태어났어요 웅애!");
	}
	
	@Override
		public void init(ServletConfig config) throws ServletException {
		System.out.println("쥰비중!!");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//서비스라는것이 먼저 요청이되고
		//get방식이면 doGet, post방식이면 doPost
		String ip = req.getRemoteAddr();
		System.out.println(ip);
		
		
		System.out.println("열심히 서비수");//객체생성후 응답되면 출력이됨
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8' />");
		out.println("<title>라이프</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>메롱</h1>");
		out.println("</body>");
		out.println("</html>");
		
	}
	
	@Override
		public void destroy() {
		System.out.println("죽음");
		}
	
	
	
}
