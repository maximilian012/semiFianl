package mul.cam.food.dto;

/*
 	create table category (
	seq int auto_increment primary key,
    name varchar(50) not null
);
 
 */

public class BbsCategory {

	private int number;
	private String name;
	
	public BbsCategory() {
		// TODO Auto-generated constructor stub
	}

	public BbsCategory(int number, String name) {
		super();
		this.number = number;
		this.name = name;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "BbsCategory [number=" + number + ", name=" + name + "]";
	}
	
}
