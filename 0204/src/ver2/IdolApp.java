package ver2;

import util.IdolPrinterEng;
import util.IdolPrinterJp;
import util.IdolPrinterKor;
import vo.Idol;

public class IdolApp {

	
	public static void main(String[] args) {
		
		Idol idol = new Idol("IU", 162, 44);
		
		//한글로 출력
		IdolPrinterJp printer = new IdolPrinterJp(idol);
		
		printer.print();
	}
}
