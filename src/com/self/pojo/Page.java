package com.self.pojo;

public class Page {

	private int page;
	private int size = 10;
	public Page() {
		super();
	}
	public Page(int page, int size) {
		super();
		this.page = page;
		this.size = size;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	
	
}
