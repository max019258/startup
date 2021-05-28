package com.inhatc.domain;


public class GpubenchVO {
	private  Integer GPU_num;
	private  String GPU_name;
	private  Integer benchi_value;
	private  Integer price;
	public Integer getGPU_num() {
		return GPU_num;
	}
	public void setGPU_num(Integer gPU_num) {
		GPU_num = gPU_num;
	}
	public String getGPU_name() {
		return GPU_name;
	}
	public void setGPU_name(String gPU_name) {
		GPU_name = gPU_name;
	}
	public Integer getBenchi_value() {
		return benchi_value;
	}
	public void setBenchi_value(Integer benchi_value) {
		this.benchi_value = benchi_value;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "GpubenchVO [GPU_num=" + GPU_num + ", GPU_name=" + GPU_name + ", benchi_value=" + benchi_value
				+ ", price=" + price + "]";
	}
}
