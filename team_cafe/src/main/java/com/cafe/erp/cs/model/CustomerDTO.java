package com.cafe.erp.cs.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomerDTO extends User{

	private String customer_id, customer_pwd, customer_name, 
		customer_phone, customer_birth, customer_gender;
	
	public CustomerDTO(
			String username, String password, boolean enabled, 
			boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities,
			String customer_id, String customer_pwd, String customer_name,
			String customer_phone, String customer_birth, String customer_gender
			) 
	{
		super(username, password, enabled, accountNonExpired, 
				credentialsNonExpired, accountNonLocked, authorities);
		this.customer_id = customer_id;
		this.customer_pwd = customer_pwd;
		this.customer_name = customer_name;
		this.customer_phone = customer_phone;
		this.customer_birth = customer_birth;
		this.customer_gender = customer_gender;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_pwd() {
		return customer_pwd;
	}

	public void setCustomer_pwd(String customer_pwd) {
		this.customer_pwd = customer_pwd;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_birth() {
		return customer_birth;
	}

	public void setCustomer_birth(String customer_birth) {
		this.customer_birth = customer_birth;
	}

	public String getCustomer_gender() {
		return customer_gender;
	}

	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}

	@Override
	public String toString() {
		return "CustomerDTO [customer_id=" + customer_id + ", customer_pwd=" + customer_pwd + ", customer_name="
				+ customer_name + ", customer_phone=" + customer_phone + ", customer_birth=" + customer_birth
				+ ", customer_gender=" + customer_gender + "]";
	}
}
