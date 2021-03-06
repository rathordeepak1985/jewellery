package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tblbrand")
public class Brand {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblbrand_cid_gen")
	@SequenceGenerator(name = "tblbrand_cid_gen", sequenceName = "tblbrand_cid_seq")
	@Column(name = "cid")
	private int id;

	private Integer companyId;
	private String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
