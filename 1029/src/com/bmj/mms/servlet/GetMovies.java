package com.bmj.mms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bmj.mms.dao.MoviesDAO;
import com.bmj.mms.vo.Movie;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/getMovies.mms")
public class GetMovies extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("appication/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		List<Movie> list = MoviesDAO.selecList();
		
		
		//ObjectMapper 객체
		ObjectMapper om = new ObjectMapper();
		
		String json = om.writeValueAsString(list);
		
		out.println(json);
	}
	
}
