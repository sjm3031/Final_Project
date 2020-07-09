package com.cafe.erp.hr.model;

public class jobDTO {
	private int job_code;
	private String job_name,job_mpay,job_tpay;
	
	public int getJob_code() {
		return job_code;
	}
	public void setJob_code(int job_code) {
		this.job_code = job_code;
	}
	public String getJob_tpay() {
		return job_tpay;
	}
	public void setJob_tpay(String job_tpay) {
		this.job_tpay = job_tpay;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String getJob_mpay() {
		return job_mpay;
	}
	public void setJob_mpay(String job_mpay) {
		this.job_mpay = job_mpay;
	}
	
	
}
