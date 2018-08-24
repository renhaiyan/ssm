package com.self.pojo;

/**
 * 微博路径
 * @author rhy
 * @2017-11-7 上午10:21:22
 * @version v1.0
 */
public class Address {

	private String id;
	private String address;
	private String region;
	private String num;
	public Address() {
		super();
	}
	
	public Address(String id, String address, String region, String num) {
		super();
		this.id = id;
		this.address = address;
		this.region = region;
		this.num = num;
	}




	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
}
