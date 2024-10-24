package C08;

public class SimpleDto {

	private String name;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "SimpleDto [name=" + name + ", age=" + age + "]";
	}
	public SimpleDto(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	public SimpleDto() {} 
}
