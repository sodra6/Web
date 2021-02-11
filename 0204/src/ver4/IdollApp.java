package ver4;

import factory.IdolPrinterFactory;
import util.IdolPrinter;
import vo.Idol;

public class IdollApp {

	public static void main(String[] args) {
		
		Idol idol = new Idol("남진", 175, 90);
		
		IdolPrinter idolPrinter = IdolPrinterFactory.getIdolPrinter("J",idol);
		
		idolPrinter.print();
		
	}
	
}
