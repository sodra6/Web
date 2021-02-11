package util;

import vo.Idol;

public class IdolPrinterArap implements IdolPrinter{

	Idol idol;
	
	public IdolPrinterArap() {
		// TODO Auto-generated constructor stub
	}
	
	public IdolPrinterArap(Idol idol) {
		this.idol = idol;
	}

	public void setIdol(Idol idol) {
		this.idol = idol;
	}
	
	
	public void print() {
		
		System.out.println("اسم : "+ idol.getName()+
				" / مفتاح  : "+ idol.getHeight()+"cm"+
				" / وزن : "+ idol.getWeight()+"kg"
				);
		
	}//뽀린트 끝
}
