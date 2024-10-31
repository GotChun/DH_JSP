package CH18;


class 캬라멜{
	@Override
	public String toString() {
		return "캬라멜";
	}
}
class 버터옥수수{
	@Override
	public String toString() {
		return "버터옥수수";
	}
}
class PopCorn<T>{
	private T meterial;
	PopCorn(T meterial){
		this.meterial = meterial;
	}
	@Override
	public String toString() {
		return "PopCorn [meterial=" + meterial + "]";
	}
}

public class C02GenericMain {
	public static void main(String[] args) {
		PopCorn<캬라멜> ob1 = new PopCorn<캬라멜>(new 캬라멜());
		System.out.println(ob1);	//캬라멜맛 팝콘이 출력
		
		PopCorn<버터옥수수> ob2 = new PopCorn<버터옥수수>(new 버터옥수수());
		System.out.println(ob2);	//버터옥수수맛 팝콘이 출력
	}
}
