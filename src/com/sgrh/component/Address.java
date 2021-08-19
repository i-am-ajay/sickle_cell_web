package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;


@Component
@Embeddable
@RequestScope
public class Address {
	@Column(name="permanent_address")
	private String permanentAddress;
	
	@Column(name="birth_city")
	private String cityOfBirth;
	
	private String district;
	private String state;
	
	@Column(name="country")
	private String countryName;
	
	public String getCityOfBirth() {
		return cityOfBirth;
	}
	public void setCityOfBirth(String cityOfBirth) {
		this.cityOfBirth = cityOfBirth;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	
	
	
	
}
