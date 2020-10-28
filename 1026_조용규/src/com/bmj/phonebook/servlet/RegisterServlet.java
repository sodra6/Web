package com.bmj.phonebook.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bmj.phonebook.dao.PhonebookDAO;
import com.bmj.phonebook.vo.Phonebook;

@WebServlet("/RegisterServlet.bmj")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("post / insert.bmj");

		req.setCharacterEncoding("UTF-8");

		
		String name = req.getParameter("name");
		String phone1 = req.getParameter("phone1");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		String year	= req.getParameter("year");
		String month = req.getParameter("month");
		String date	= req.getParameter("date");
		String genderStr = req.getParameter("gender");
		
		
		Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
		char gender = genderStr.charAt(0);
		
		
		Phonebook phonebook = new Phonebook();
		phonebook.setBirthDate(birthDate);
		phonebook.setGender(gender);
		phonebook.setName(name);
		phonebook.setPhone(phone1+phone2+phone3);
		
		PhonebookDAO.insert(phonebook);
		
		
		
		resp.sendRedirect("/index.jsp");
	}
}
