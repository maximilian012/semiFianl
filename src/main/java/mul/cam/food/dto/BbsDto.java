package mul.cam.food.dto;

import java.io.Serializable;

// BBS Bulletin Board System
public class BbsDto implements Serializable{

	private int seq;
	private String writer;
	private String thumbnail;
	private String title;
	private String content;
	private String ingredients;
	private String cookingtime;
	private String serving;
	private int category;
	private String regdate;
	private double star;
	private String tag;
	
	public BbsDto() {
		// TODO Auto-generated constructor stub
	}

	public BbsDto(int seq, String writer, String thumbnail, String title, String content, String ingredients,
			String cookingtime, String serving, int category, String regdate, double star, String tag) {
		super();
		this.seq = seq;
		this.writer = writer;
		this.thumbnail = thumbnail;
		this.title = title;
		this.content = content;
		this.ingredients = ingredients;
		this.cookingtime = cookingtime;
		this.serving = serving;
		this.category = category;
		this.regdate = regdate;
		this.star = star;
		this.tag = tag;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public String getCookingtime() {
		return cookingtime;
	}

	public void setCookingtime(String cookingtime) {
		this.cookingtime = cookingtime;
	}

	public String getServing() {
		return serving;
	}

	public void setServing(String serving) {
		this.serving = serving;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "BbsDto [seq=" + seq + ", writer=" + writer + ", thumbnail=" + thumbnail + ", title=" + title
				+ ", content=" + content + ", ingredients=" + ingredients + ", cookingtime=" + cookingtime
				+ ", serving=" + serving + ", category=" + category + ", regdate=" + regdate + ", star=" + star
				+ ", tag=" + tag + "]";
	}
	
	

	

}
