package bean;

public class Bean {
	private String name;
	private String message;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		System.out.println("이름 : " + this.name);
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) { 
		this.message = message;
		System.out.println("메시지 : " + this.message);
	}
}
