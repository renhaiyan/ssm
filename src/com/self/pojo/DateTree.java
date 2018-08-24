package com.self.pojo;

import java.util.List;

public class DateTree {

	private String id;
	private String text;
	private List<DateTree> children;
	public DateTree() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DateTree(String id, String text, List<DateTree> children) {
		super();
		this.id = id;
		this.text = text;
		this.children = children;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public List<DateTree> getChildren() {
		return children;
	}
	public void setChildren(List<DateTree> children) {
		this.children = children;
	}
	
	
}
