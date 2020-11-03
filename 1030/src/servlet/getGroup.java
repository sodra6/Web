package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.GroupDAO;
import vo.Group;

@WebServlet("/group.bmj")
public class getGroup extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		List<Group> groups = GroupDAO.selectList();
		
		ObjectMapper om = new ObjectMapper();
		
		String json = om.writeValueAsString(groups);
		
		out.println(json);
		
	}
	
	
}
