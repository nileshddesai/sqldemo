package com.nildev.bhaktirealestate.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nildev.bhaktirealestate.domain.PropertyCategory;
import com.nildev.bhaktirealestate.repository.PropertyCategoryRepository;
import com.nildev.bhaktirealestate.service.PropertyCategoryService;

@Service
@Transactional
public class PropertyCategoryServiceImpl implements PropertyCategoryService {

	@Autowired
	PropertyCategoryRepository propertyCategoryRepository;
	
	@Override
	public PropertyCategory save(PropertyCategory propertyCategory) {
		return propertyCategoryRepository.save(propertyCategory);
	}

	@Override
	@Transactional(readOnly = true)
	public List<PropertyCategory> findAll() {
		return propertyCategoryRepository.findByStatus(0);
	}

	@Override
	public void delete(Long propertyCategoryId) {
		propertyCategoryRepository.delete(propertyCategoryId);
	}

}
