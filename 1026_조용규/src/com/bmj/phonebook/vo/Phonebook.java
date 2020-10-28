package com.bmj.phonebook.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;

public class Phonebook {

	private int no;
	private String name, phone;
	private char gender;
	private Date birthDate;
	private Timestamp regdate;
	
	//폰번호 얻기용
	private String phon1;
	private String phon2;
	private String phon3;
	
	
	//년월일 얻기용
	private Calendar cal;
	
	public Phonebook() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
		
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
		cal = Calendar.getInstance();
		cal.setTime(birthDate);
	}
	public int getBirthYear() {
		
		return cal.get(Calendar.YEAR);
	}
	public int getBirthMonth() {
		return cal.get(Calendar.MONTH)+1;
	}
	public int getBirthDay() {
		return cal.get(Calendar.DATE);
	}
	

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getGenderIcon() {
		String icon = "<i class= 'fas fa-";
		
		if(gender=='F') {
			icon+="fe";
		}
		icon+="male'></i>";
	
		return icon;
	}
	
	
}
