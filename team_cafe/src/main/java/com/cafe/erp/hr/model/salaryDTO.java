package com.cafe.erp.hr.model;

public class salaryDTO {
	
	private int salary_code, salary_empcode,salary_tpay,salary_mpay,salary_date,salary_totalpay,
	salary_month,salary_year;
	private double salary_time;
	private String employee_name,employee_jobname,employee_bank,employee_bankaddress;
	
	
	
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

	public int getSalary_year() {
		return salary_year;
	}

	public void setSalary_year(int salary_year) {
		this.salary_year = salary_year;
	}

	public int getSalary_code() {
		return salary_code;
	}

	public void setSalary_code(int salary_code) {
		this.salary_code = salary_code;
	}

	public int getSalary_empcode() {
		return salary_empcode;
	}

	public void setSalary_empcode(int salary_empcode) {
		this.salary_empcode = salary_empcode;
	}

	public Double getSalary_time() {
		return salary_time;
	}

	public void setSalary_time(Double salary_time) {
		this.salary_time = salary_time;
	}

	public int getSalary_tpay() {
		return salary_tpay;
	}

	public void setSalary_tpay(int salary_tpay) {
		this.salary_tpay = salary_tpay;
	}

	public int getSalary_mpay() {
		return salary_mpay;
	}

	public void setSalary_mpay(int salary_mpay) {
		this.salary_mpay = salary_mpay;
	}

	public int getSalary_date() {
		return salary_date;
	}

	public void setSalary_date(int salary_date) {
		this.salary_date = salary_date;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public int getSalary_totalpay() {
		return salary_totalpay;
	}

	public void setSalary_totalpay(int salary_totalpay) {
		this.salary_totalpay = salary_totalpay;
	}

	public int getSalary_month() {
		return salary_month;
	}

	public void setSalary_month(int salary_month) {
		this.salary_month = salary_month;
	}

	public String getEmployee_jobname() {
		return employee_jobname;
	}

	public void setEmployee_jobname(String employee_jobname) {
		this.employee_jobname = employee_jobname;
	}
	
	
	
}
