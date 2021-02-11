package factory;

import util.IdolPrinter;
import util.IdolPrinterArap;
import util.IdolPrinterEng;
import util.IdolPrinterJp;
import util.IdolPrinterKor;
import vo.Idol;

public class IdolPrinterFactory {

	
	public static IdolPrinter getIdolPrinter(String type, Idol idol) {
	
		
		switch(type) {
		
			case("E") : return new IdolPrinterEng(idol);
			case("K") : return new IdolPrinterKor(idol);
			case("A") : return new IdolPrinterArap(idol);
			case("J") : return new IdolPrinterJp(idol);
			
				default : return null;
		}
		
		
		
//		if(type.equals("K")) {
//			return new IdolPrinterKor(idol);
//		}else if(type.equals("E")) {
//			return new IdolPrinterEng(idol);
//		}else if(type.equals("J")) {
//			return new IdolPrinterJp(idol);
//		}else if(type.equals("A")) {
//			return new IdolPrinterArap(idol);
//		}else {
//			return null;
//		}
//	}
	
	}
}
