package com.cafe.erp.sell.model;

import java.util.Date;

public class SellDTO {
	private int code, pcount, accounts_total;
	private String name;
	private Date accounts_startsell;

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAccounts_total() {
		return accounts_total;
	}
	public void setAccounts_total(int accounts_total) {
		this.accounts_total = accounts_total;
	}
	public Date getAccounts_startsell() {
		return accounts_startsell;
	}
	public void setAccounts_startsell(Date accounts_startsell) {
		this.accounts_startsell = accounts_startsell;
	}
}
