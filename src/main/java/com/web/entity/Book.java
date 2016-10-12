package com.web.entity;

/**
 * 图书实体
 */
public class Book {

	private String id;			// 图书ID

	private int cid;  			//图书分类ID

	private String bname;		// 图书名称

	private String author;		//作者

	private float price;		//价格

	private String press;		//出版社

	private String publishTime;	//出版时间

	private int edition;		//版本

	private int pageNum;		//页数

	private int wordNum;		//字数

	private String printTime;	//印刷时间

	private String image;		//图片

	public Book() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getPress() {
		return press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public String getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	public int getEdition() {
		return edition;
	}

	public void setEdition(int edition) {
		this.edition = edition;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getWordNum() {
		return wordNum;
	}

	public void setWordNum(int wordNum) {
		this.wordNum = wordNum;
	}

	public String getPrintTime() {
		return printTime;
	}

	public void setPrintTime(String printTime) {
		this.printTime = printTime;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", cid=" + cid + ", bname=" + bname + ", author=" + author + ", price=" + price
				+ ", press=" + press + ", publishTime=" + publishTime + ", edition=" + edition + ", pageNum=" + pageNum
				+ ", wordNum=" + wordNum + ", printTime=" + printTime + ", image=" + image + "]";
	}
}
