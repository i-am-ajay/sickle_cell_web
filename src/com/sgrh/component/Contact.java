package com.sgrh.component;

import javax.persistence.Column;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

@Component
@RequestScope
public class Contact {
	@Column(name="mobile_no_mother",length=10)
	private String mobileNoMother;
	
	@Column(name="mobile_no_father", length=10)
	private String mobileNoFather;
	
	@Column(name="land_line_number")
	private String landLineNumber;
	
	@Column(name="email")
	private String email;
	
	public String getMobileNoMother() {
		return mobileNoMother;
	}
	public String getMobileNoFather() {
		return mobileNoFather;
	}

	public void setMobileNoFather(String mobileNoFather) {
		this.mobileNoFather = mobileNoFather;
	}

	public void setMobileNoMother(String mobileNoMother) {
		this.mobileNoMother = mobileNoMother;
	}

	public String getLandLineNumber() {
		return landLineNumber;
	}
	public void setLandLineNumber(String landLineNumber) {
		this.landLineNumber = landLineNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
