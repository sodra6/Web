package org.bmj.ims.vo;

public class PageVo {

	private int start,end;
	
	public PageVo() {
		// TODO Auto-generated constructor stub
	}
	public PageVo(int pageNo, int numPage) {
			this.end = pageNo*numPage;
			this.start = end-numPage+1;
	
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
}
