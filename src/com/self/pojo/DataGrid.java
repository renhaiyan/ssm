package com.self.pojo;

import java.util.List;

public class DataGrid {

	private int total;
	private List<?> rows;
	public DataGrid() {
		super();
	}
	public DataGrid(int total, List<Lawyer> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	
}
