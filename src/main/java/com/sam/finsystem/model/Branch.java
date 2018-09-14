package com.sam.finsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="BRANCH")
public class Branch {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
 
    @Size(min=3, max=50)
    @Column(name = "BRANCH_NAME", nullable = false)
    private String branchName;
    
    @Size(min=3, max=50)
    @Column(name = "BRANCH_ADDRESS", nullable = false)
    private String branchAddress;
    
    @Column(name = "BRANCH_PHONE", nullable = false)
    private int branchPhone;
    
    @NotNull
    @DateTimeFormat(pattern="dd/MM/yyyy") 
    @Column(name = "BRANCH_OPEN_DATE", nullable = false)
    @Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate branchOpenDate;
     
    @NotEmpty
    @Column(name = "BRANCH_CODE", unique=true, nullable = false)
    private String branchCode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchAddress() {
		return branchAddress;
	}

	public void setBranchAddress(String branchAddress) {
		this.branchAddress = branchAddress;
	}

	public int getBranchPhone() {
		return branchPhone;
	}

	public void setBranchPhone(int branchPhone) {
		this.branchPhone = branchPhone;
	}

	public LocalDate getBranchOpenDate() {
		return branchOpenDate;
	}

	public void setBranchOpenDate(LocalDate branchOpenDate) {
		this.branchOpenDate = branchOpenDate;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((branchCode == null) ? 0 : branchCode.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Branch other = (Branch) obj;
		if (branchCode == null) {
			if (other.branchCode != null)
				return false;
		} else if (!branchCode.equals(other.branchCode))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Branch [id=" + id + ", branchName=" + branchName + ", branchAddress=" + branchAddress + ", branchPhone="
				+ branchPhone + ", branchOpenDate=" + branchOpenDate + ", branchCode=" + branchCode + "]";
	}
    
    
}
