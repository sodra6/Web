package ver1;

import vo.Idol;

public class IdolApp {

	
	public static void main(String[] args) {
		

		Idol idol = new Idol();
		idol.setName("Jin");
		idol.setHeight(132);
		idol.setWeight(70);
		
		System.out.println("이름 : "+idol.getName()+
							" / 키 : "+idol.getHeight()+"cm"+
							" / 몸무게 : "+idol.getWeight()+"kg"
				);
		//아이돌
		idol.setName("남진");
		idol.setHeight(175);
		idol.setWeight(90);
		
		System.out.println("이름 : "+idol.getName()+
				" / 키 : "+idol.getHeight()+"cm"+
				" / 몸무게 : "+idol.getWeight()+"kg"
				);
		
	}
}
