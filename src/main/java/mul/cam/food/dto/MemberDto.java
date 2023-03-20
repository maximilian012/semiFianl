package mul.cam.food.dto;

import java.io.Serializable;

public class MemberDto implements Serializable{

	private int seq;
	private String user_id;
	private String password;
	private String email;
	private String name;
	private String age;
	private String address;
	private String regdate;
	private String delflg;
	
	public MemberDto() {
	}

	public MemberDto(int seq, String user_id, String password, String email, String name, String age, String address,
			String regdate, String delflg) {
		super();
		this.seq = seq;
		this.user_id = user_id;
		this.password = password;
		this.email = email;
		this.name = name;
		this.age = age;
		this.address = address;
		this.regdate = regdate;
		this.delflg = delflg;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getDelflg() {
		return delflg;
	}

	public void setDelflg(String delflg) {
		this.delflg = delflg;
	}

	@Override
	public String toString() {
		return "MemberDto [seq=" + seq + ", user_id=" + user_id + ", password=" + password + ", email=" + email
				+ ", name=" + name + ", age=" + age + ", address=" + address + ", regdate=" + regdate + ", delflg="
				+ delflg + "]";
	}
	
}
