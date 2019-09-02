package com.nildev.bhaktirealestate.domain;

import java.io.Serializable;
import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "holder")
@DynamicUpdate
public class Holder implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5312177564326659464L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "holder_id")
    private Long id;

    @NotNull
    @Size(max = 250)
    @Column(name = "holder_name", length = 250, nullable = false)
    private String holderName;
    
    @NotNull
    @Size(max = 10)
    @Column(name = "mobile_no", length = 10)
    private String mobileNo;
    
    @Size(max = 300)
    @Column(name = "address_line1", length = 300)
    private String addressLine1;
    
    @Size(max = 300)
    @Column(name = "address_line2", length = 300)
    private String addressLine2;
    
    @Size(max = 100)
    @Column(name = "property_size", length = 100)
    private String propertySize;
    
    @Size(max = 100)
    @Column(name = "property_price", length = 100)
    private String propertyPrice;
    
    @Size(max = 300)
    @Column(name = "note", length = 300)
    private String note;
    
    @JsonIgnore
    @NotNull
    @ManyToOne
    @JoinColumn(name = "property_category_id", nullable = false)
    private PropertyCategory propertyCategory;
    
    @UpdateTimestamp
	@Column(name = "modified_on", nullable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP")
	private Instant modifiedOn;
    
    @CreationTimestamp
	@Column(name = "created_on", nullable = false, updatable = false, columnDefinition = "TIMESTAMP default CURRENT_TIMESTAMP")
	private Instant createdOn;
    
    @Column(name = "status", nullable = false, columnDefinition = "int default 0")
	private int status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHolderName() {
		return holderName;
	}

	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getPropertySize() {
		return propertySize;
	}

	public void setPropertySize(String propertySize) {
		this.propertySize = propertySize;
	}

	public String getPropertyPrice() {
		return propertyPrice;
	}

	public void setPropertyPrice(String propertyPrice) {
		this.propertyPrice = propertyPrice;
	}

	public PropertyCategory getPropertyCategory() {
		return propertyCategory;
	}

	public void setPropertyCategory(PropertyCategory propertyCategory) {
		this.propertyCategory = propertyCategory;
	}

	public Instant getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Instant modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public Instant getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Instant createdOn) {
		this.createdOn = createdOn;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	} 
    
}
