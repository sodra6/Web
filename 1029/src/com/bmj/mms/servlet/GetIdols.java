package com.bmj.mms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bmj.mms.dao.IdolsDAO;
import com.bmj.mms.vo.Idol;
import com.fasterxml.jackson.databind.ObjectMapper;
@WebServlet("/getIdols.ims")
public class GetIdols extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			resp.setContentType("application/json; charset=UTF-8");
			
			PrintWriter out = resp.getWriter();
			
			List<Idol> idols = IdolsDAO.selectList();
			
			ObjectMapper om = new ObjectMapper();
			
			String json = om.writeValueAsString(idols);
			
			out.println(json);
			
		}
}
