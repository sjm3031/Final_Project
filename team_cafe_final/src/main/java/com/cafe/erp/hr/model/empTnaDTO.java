package com.cafe.erp.hr.model;

import java.sql.Date;

public class empTnaDTO {
	
	private int emptna_code,emptna_empcode,emptna_year,emptna_month,emptna_day,emptna_empname,employee_code;
	
	private String employee_name,employee_jumin,starttime,endtime;
	private Double emptna_daytotaltime;
	private Date emptna_starttime,emptna_endtime;

	
	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getEmployee_jumin() {
		return employee_jumin;
	}

	public void setEmployee_jumin(String employee_jumin) {
		this.employee_jumin = employee_jumin;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public int getEmptna_code() {
		return emptna_code;
	}

	public void setEmptna_code(int emptna_code) {
		this.emptna_code = emptna_code;
	}

	public int getEmptna_empcode() {
		return emptna_empcode;
	}

	public void setEmptna_empcode(int emptna_empcode) {
		this.emptna_empcode = emptna_empcode;
	}

	public int getEmptna_year() {
		return emptna_year;
	}

	public void setEmptna_year(int emptna_year) {
		this.emptna_year = emptna_year;
	}

	public int getEmptna_month() {
		return emptna_month;
	}

	public void setEmptna_month(int emptna_month) {
		this.emptna_month = emptna_month;
	}

	public int getEmptna_day() {
		return emptna_day;
	}

	public void setEmptna_day(int emptna_day) {
		this.emptna_day = emptna_day;
	}

	public int getEmptna_empname() {
		return emptna_empname;
	}

	public void setEmptna_empname(int emptna_empname) {
		this.emptna_empname = emptna_empname;
	}

	public Date getEmptna_starttime() {
		return emptna_starttime;
	}

	public void setEmptna_starttime(Date emptna_starttime) {
		this.emptna_starttime = emptna_starttime;
	}

	public Date getEmptna_endtime() {
		return emptna_endtime;
	}

	public void setEmptna_endtime(Date emptna_endtime) {
		this.emptna_endtime = emptna_endtime;
	}

	public Double getEmptna_daytotaltime() {
		return emptna_daytotaltime;
	}

	public void setEmptna_daytotaltime(Double emptna_daytotaltime) {
		this.emptna_daytotaltime = emptna_daytotaltime;
	}

	public int getEmployee_code() {
		return employee_code;
	}

	public void setEmployee_code(int employee_code) {
		this.employee_code = employee_code;
	}
	
   

	
    
	
	
    
}