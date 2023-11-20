package com.ji.servlet013.banana;

public class Banana {

	private String b_location;
	private String b_flavor;
	private int b_price;
	private String b_introduce;
	
	
	public Banana() {
		super();
	}

	public Banana(String b_location, String b_flavor, int b_price, String b_introduce) {
		super();
		this.b_location = b_location;
		this.b_flavor = b_flavor;
		this.b_price = b_price;
		this.b_introduce = b_introduce;
	}

	public String getB_location() {
		return b_location;
	}

	public void setB_location(String b_location) {
		this.b_location = b_location;
	}

	public String getB_flavor() {
		return b_flavor;
	}

	public void setB_flavor(String b_flavor) {
		this.b_flavor = b_flavor;
	}

	public int getB_price() {
		return b_price;
	}

	public void setB_price(int b_price) {
		this.b_price = b_price;
	}

	public String getB_introduce() {
		return b_introduce;
	}

	public void setB_introduce(String b_introduce) {
		this.b_introduce = b_introduce;
	}
	
	
	
	
}
