package com.bmj.phonebook.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bmj.phonebook.dao.PhonebookDAO;
import com.bmj.phonebook.vo.Phonebook;

@WebServlet("/DeleteServlet.bmj")
public class DeleterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String noStr=req.getParameter("no");
		
		int no = Integer.parseInt(noStr);
		
		PhonebookDAO.delete(no);
		
		resp.sendRedirect("/index.jsp");
		
	}
}
