package util;

import vo.Idol;

public class IdolPrinterEng implements IdolPrinter {
	//맴버필드로 인자를 선언
	private Idol idol;
	//생성자주입과 setter주입이 필요
	
	public IdolPrinterEng() {
		// TODO Auto-generated constructor stub
	}
	
	
	//생성자 주입
	public IdolPrinterEng(Idol idol) {
		this.idol = idol;
	}

	//setter주입
	public void setIdol(Idol idol) {
		this.idol = idol;
	}
	
	public void print() {
		
		System.out.println("name : "+idol.getName()+
				" / height : "+idol.getHeight()+"cm"+
				" / weight : "+idol.getWeight()+"kg"
				);
		
	}//뽀린트 끝
	
}
