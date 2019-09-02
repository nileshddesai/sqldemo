package com.nildev.bhaktirealestate.service;

import java.util.List;

import com.nildev.bhaktirealestate.domain.PropertyCategory;

public interface PropertyCategoryService {

	PropertyCategory save(PropertyCategory propertyCategory);
	
	List<PropertyCategory> findAll();
	
	void delete(Long propertyCategoryId);

	PropertyCategory findById(Long propertyCategoryId);
}
