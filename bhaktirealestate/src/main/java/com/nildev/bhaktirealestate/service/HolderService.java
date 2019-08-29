package com.nildev.bhaktirealestate.service;

import java.util.List;

import com.nildev.bhaktirealestate.domain.Holder;

public interface HolderService {

	Holder save(Holder holder);
	
	List<Holder> findByPropertyCategoryId(Long propertyCategoryId);
	
	void delete(Long id);

	Holder findById(Long id);
}
