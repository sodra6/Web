package org.bmj.ims.vo;

import java.sql.Date;
import java.util.Calendar;

public class Idol {
	private int idolId,groupId;
	private String name;
	private Double height, weight;
	private Date birthDate;
	private char gender;
	private String groupName;
	
	public Idol(int idolId, String name, Double height, Double weight, Date birthDate, char gender, int groupId) {
		super();
		this.idolId = idolId;
		this.groupId = groupId;
		this.name = name;
		this.height = height;
		this.weight = weight;
		this.birthDate = birthDate;
		this.gender = gender;
	}
	//년월일 얻기용
	private Calendar cal;
	
	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Idol() {
		// TODO Auto-generated constructor stub
	}

	public int getIdolId() {
		return idolId;
	}

	public void setIdolId(int idolId) {
		this.idolId = idolId;
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeigth(Double weight) {
		this.weight = weight;
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
	public String getGenderIcon() {
		String icon = "<i class= 'fas fa-";
		
		if(gender=='F') {
			icon+="fe";
		}
		icon+="male'></i>";
	
		return icon;
	}


	
}
