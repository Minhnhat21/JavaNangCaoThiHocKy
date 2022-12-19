package com.minhnhat.payload.response;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


public class PageInfo<T> {
    private int page;
    private int pages;
    private int limit;
    private int total;
    private List<T> data;
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
    
    

}