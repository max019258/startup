package com.inhatc.domain;


public class CpubenchVO {
	private  Integer CPU_num;
	private  String CPU_name;
	private  Integer benchi_value;
	private  String price;
	
	@Override
	public String toString() {
		return "CpubenchVO [CPU_num=" + CPU_num + ", CPU_name=" + CPU_name + ", benchi_value=" + benchi_value
				+ ", price=" + price + "]";
	}
	public Integer getCPU_num() {
		return CPU_num;
	}
	public void setCPU_num(Integer cPU_num) {
		CPU_num = cPU_num;
	}
	public String getCPU_name() {
		return CPU_name;
	}
	public void setCPU_name(String cPU_name) {
		CPU_name = cPU_name;
	}
	public Integer getBenchi_value() {
		return benchi_value;
	}
	public void setBenchi_value(Integer benchi_value) {
		this.benchi_value = benchi_value;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}


	

}
