package util;

import vo.Idol;

public class IdolPrinterKor implements IdolPrinter {

	private Idol idol;
	
	public IdolPrinterKor() {
		// TODO Auto-generated constructor stub
	}
	
	public IdolPrinterKor(Idol idol) {
		this.idol = idol;
	}

	public void setIdol(Idol idol) {
		this.idol = idol;
	}
	
	public void print() {
		
		System.out.println("이름 : "+idol.getName()+
				" / 키 : "+idol.getHeight()+"cm"+
				" / 몸무게 : "+idol.getWeight()+"kg"
				);
		
	}//뽀린트 끝
	
}
