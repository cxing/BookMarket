package com.web.entity;

/**
 * 图书实体
 */
public class Book {

	private long book_id;// 图书ID

	private String name;// 图书名称

	private int number;// 馆藏数量

	public Book() {
	}

	public Book(long book_id, String name, int number) {
		this.book_id = book_id;
		this.name = name;
		this.number = number;
	}

	public long getBookId() {
		return book_id;
	}

	public void setBookId(long book_id) {
		this.book_id = book_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", name=" + name + ", number=" + number + "]";
	}


}
