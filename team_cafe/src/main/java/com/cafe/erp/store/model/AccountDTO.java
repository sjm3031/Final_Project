package com.cafe.erp.store.model;

public class AccountDTO {
	private int account_number;
	private String account_name, account_ceoname, account_address, account_email;

	
	public int getAccount_number() {
		return account_number;
	}
	public void setAccount_number(int account_number) {
		this.account_number = account_number;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public String getAccount_ceoname() {
		return account_ceoname;
	}
	public void setAccount_ceoname(String account_ceoname) {
		this.account_ceoname = account_ceoname;
	}
	public String getAccount_address() {
		return account_address;
	}
	public void setAccount_address(String account_address) {
		this.account_address = account_address;
	}
	public String getAccount_email() {
		return account_email;
	}
	public void setAccount_email(String account_email) {
		this.account_email = account_email;
	}
}
