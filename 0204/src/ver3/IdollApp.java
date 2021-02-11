package ver3;

import util.IdolPrinter;
import util.IdolPrinterEng;
import util.IdolPrinterJp;
import util.IdolPrinterKor;
import vo.Idol;

public class IdollApp {

	public static void main(String[] args) {
		
		Idol idol = new Idol("남진", 176, 90);
	
		
		IdolPrinter printer = new IdolPrinterJp(idol);
		
		printer.print();
	}
	
}
