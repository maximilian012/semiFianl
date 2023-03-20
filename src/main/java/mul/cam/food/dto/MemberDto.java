package mul.cam.food.dto;

import java.io.Serializable;

public class MemberDto implements Serializable{

	private int seq;
	private String user_id;
	private String password;
	private String name;
	private String age;
	private String address;
	private String regdate;
	private String delflg;
	private String auth;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public MemberDto(int seq, String user_id, String password, String name, String age, String address, String regdate,
			String delflg, String auth) {
		super();
		this.seq = seq;
		this.user_id = user_id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.address = address;
		this.regdate = regdate;
		this.delflg = delflg;
		this.auth = auth;
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

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "MemberDto [seq=" + seq + ", user_id=" + user_id + ", password=" + password + ", name=" + name + ", age="
				+ age + ", address=" + address + ", regdate=" + regdate + ", delflg=" + delflg + ", auth=" + auth + "]";
	}
	
}
