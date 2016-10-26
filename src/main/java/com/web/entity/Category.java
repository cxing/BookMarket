package com.web.entity;

import java.io.Serializable;

public class Category implements Serializable {

	private static final long serialVersionUID = -3766780183428993793L;

	//index id
	private int id;

	//category id
	private int cid;

	//category name
	private String cname;

	//count all books number;
	private int count;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", cid=" + cid + ", cname=" + cname + ", count=" + count + "]";
	}

}
