package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.Embeddable;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.sgrh.component.lookup.OccupationCode;

@Component
@Scope("prototype")
@Embeddable
public class Relation {
	@Column(name="father_name")
	private String relationName;
	
	@Column(name="father_adhar")
	private String relationAdharNumber;
	
	@Column(name="father_education")
	private String relationEducation;
	
	@Column(name="father_occupation")
	private String relationOccupation;

	public String getRelationName() {
		return relationName;
	}

	public void setRelationName(String relationName) {
		this.relationName = relationName;
	}

	public String getRelationAdharNumber() {
		return relationAdharNumber;
	}

	public void setRelationAdharNumber(String relationAdharNumber) {
		this.relationAdharNumber = relationAdharNumber;
	}

	public String getRelationEducation() {
		return relationEducation;
	}

	public void setRelationEducation(String relationEducation) {
		this.relationEducation = relationEducation;
	}

	public String getRelationOccupation() {
		return relationOccupation;
	}

	public void setRelationOccupation(String relationOccupation) {
		this.relationOccupation = relationOccupation;
	}

}
