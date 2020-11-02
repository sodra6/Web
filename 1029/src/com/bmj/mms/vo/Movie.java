package com.bmj.mms.vo;

import java.sql.Date;
import java.util.Calendar;

public class Movie {

	
	private int no, audienceNum,genre;
	private String name, director, posterImage;
	private Date releaseDate, endDate;
	
	public String getPosterImage() {
		return posterImage;
	}


	public void setPosterImage(String posterImage) {
		this.posterImage = posterImage;
	}

	//날짜얻기용
	private Calendar releaseCalendar;
	private Calendar endCalendar;
	
	public Movie() {
		releaseCalendar = Calendar.getInstance();
		endCalendar = Calendar.getInstance();
	}
	
	private String genreName;
	
	public String getGenreName() {
		return genreName;
	}


	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}


	

	public Movie(String name2, String director2, int audienceNum2, int genre2, Date releaseDate2) {
		// TODO Auto-generated constructor stub
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getAudienceNum() {
		return audienceNum;
	}

	public void setAudienceNum(int audienceNum) {
		this.audienceNum = audienceNum;
	}

	public int getGenre() {
		return genre;
	}

	public void setGenre(int genre) {
		this.genre = genre;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		releaseCalendar.setTime(releaseDate);
		this.releaseDate = releaseDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		if(endDate!=null) {
			endCalendar.setTime(endDate);
		}
		this.endDate = endDate;
	}
	
	public int getReleaseYear() {
		return releaseCalendar.get(Calendar.YEAR);
	}
	public int getReleaseMonth() {
		return releaseCalendar.get(Calendar.MONTH)+1;
	}
	public int getReleaseDay() {
		return releaseCalendar.get(Calendar.DATE);
	}
	public int getEndYear() {
		return endCalendar.get(Calendar.YEAR);
	}
	public int getEndMonth() {
		return endCalendar.get(Calendar.MONTH)+1;
	}
	public int getEndDay() {
		return endCalendar.get(Calendar.DATE);
	}
}
