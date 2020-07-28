package com.cafe.erp.accounting.model;

import java.sql.Timestamp;
import java.util.Date;

public class AccountsDTO {
	private int accounts_code,accounts_total,accounts_card,accounts_cash,accounts_saleCount,reserveFund_code;
	private Date accounts_startSell,accounts_endSell;
	
	
	public int getAccounts_code() {
		return accounts_code;
	}
	public void setAccounts_code(int accounts_code) {
		this.accounts_code = accounts_code;
	}
	public int getAccounts_total() {
		return accounts_total;
	}
	public void setAccounts_total(int accounts_total) {
		this.accounts_total = accounts_total;
	}
	public int getAccounts_card() {
		return accounts_card;
	}
	public void setAccounts_card(int accounts_card) {
		this.accounts_card = accounts_card;
	}
	public int getAccounts_cash() {
		return accounts_cash;
	}
	public void setAccounts_cash(int accounts_cash) {
		this.accounts_cash = accounts_cash;
	}
	public int getAccounts_saleCount() {
		return accounts_saleCount;
	}
	public void setAccounts_saleCount(int accounts_saleCount) {
		this.accounts_saleCount = accounts_saleCount;
	}
	public int getReserveFund_code() {
		return reserveFund_code;
	}
	public void setReserveFund_code(int reserveFund_code) {
		this.reserveFund_code = reserveFund_code;
	}
	public Date getAccounts_startSell() {
		return accounts_startSell;
	}
	public void setAccounts_startSell(Date accounts_startSell) {
		this.accounts_startSell = accounts_startSell;
	}
	public Date getAccounts_endSell() {
		return accounts_endSell;
	}
	public void setAccounts_endSell(Date accounts_endSell) {
		this.accounts_endSell = accounts_endSell;
	}
	
	
	  
	
}
