package util;

import vo.Idol;

public class IdolPrinterJp implements IdolPrinter {

	private Idol idol;
	
	public IdolPrinterJp() {
		// TODO Auto-generated constructor stub
	}
	
	public IdolPrinterJp(Idol idol) {
		this.idol = idol;
	}

	public void setIdol(Idol idol) {
		this.idol = idol;
	}
	
	public void print() {
		
		System.out.println("なまえ : "+idol.getName()+
				" / ハイト : "+idol.getHeight()+"cm"+
				" / たいじゅう : "+idol.getWeight()+"kg"
				);
		
	}//뽀린트 끝
	
}
