package com.nildev.bhaktirealestate.domain;

import java.io.Serializable;
import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "property_category")
@DynamicUpdate
public class PropertyCategory implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1125629808794529944L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "property_category_id")
    private Long id;

    @NotNull
    @Size(max = 250)
    @Column(name = "property_category_name", length = 250, nullable = false)
    private String propertyCategoryName;
    
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

	public String getPropertyCategoryName() {
		return propertyCategoryName;
	}

	public void setPropertyCategoryName(String propertyCategoryName) {
		this.propertyCategoryName = propertyCategoryName;
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
    
}
