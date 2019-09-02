package com.nildev.bhaktirealestate.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nildev.bhaktirealestate.domain.Holder;
import com.nildev.bhaktirealestate.repository.HolderRepository;
import com.nildev.bhaktirealestate.service.HolderService;

@Service
@Transactional
public class HolderServiceImpl implements HolderService {
	
	@Autowired
	HolderRepository holderRepository;
	
	@Override
	public Holder save(Holder holder) {
		return holderRepository.save(holder);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Holder> findByPropertyCategoryId(Long propertyCategoryId) {
		return holderRepository.findByPropertyCategory_IdAndStatusOrderByIdDesc(propertyCategoryId, 0);
	}

	@Override
	public void delete(Long id) {
		holderRepository.delete(id);
	}

	@Override
	@Transactional(readOnly = true)
	public Holder findById(Long id) {
		return holderRepository.findById(id).get();
	}
}
