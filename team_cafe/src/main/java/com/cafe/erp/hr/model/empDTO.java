package com.cafe.erp.hr.model;

import java.sql.Date;

public class empDTO {
	
	private int employee_code;
    private String employee_name, employee_jumin, employee_phone,employee_address,employee_jobname,
    employee_bank,employee_bankaddress,employee_endyn,job_name;
    private Date employee_startdate , employee_enddate;
    
    
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public int getEmployee_code() {
		return employee_code;
	}
	public void setEmployee_code(int employee_code) {
		this.employee_code = employee_code;
	}
	
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmployee_jumin() {
		return employee_jumin;
	}
	public void setEmployee_jumin(String employee_jumin) {
		this.employee_jumin = employee_jumin;
	}
	public String getEmployee_phone() {
		return employee_phone;
	}
	public void setEmployee_phone(String employee_phone) {
		this.employee_phone = employee_phone;
	}
	public String getEmployee_address() {
		return employee_address;
	}
	public void setEmployee_address(String employee_address) {
		this.employee_address = employee_address;
	}
	public String getEmployee_bank() {
		return employee_bank;
	}
	public void setEmployee_bank(String employee_bank) {
		this.employee_bank = employee_bank;
	}
	public String getEmployee_bankaddress() {
		return employee_bankaddress;
	}
	public void setEmployee_bankaddress(String employee_bankaddress) {
		this.employee_bankaddress = employee_bankaddress;
	}
	public Date getEmployee_startdate() {
		return employee_startdate;
	}
	public void setEmployee_startdate(Date employee_startdate) {
		this.employee_startdate = employee_startdate;
	}
	public String getEmployee_jobname() {
		return employee_jobname;
	}
	public void setEmployee_jobname(String employee_jobname) {
		this.employee_jobname = employee_jobname;
	}
	public Date getEmployee_enddate() {
		return employee_enddate;
	}
	public void setEmployee_enddate(Date employee_enddate) {
		this.employee_enddate = employee_enddate;
	}
	public String getEmployee_endyn() {
		return employee_endyn;
	}
	public void setEmployee_endyn(String employee_endyn) {
		this.employee_endyn = employee_endyn;
	}
	
	
    
}
