package com.nildev.bhaktirealestate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nildev.bhaktirealestate.domain.PropertyCategory;

@Repository
public interface PropertyCategoryRepository extends JpaRepository<PropertyCategory, Long> {

	List<PropertyCategory> findByStatus(int status);

	@Modifying
	@Query("UPDATE PropertyCategory SET status = 1 WHERE id = ?1")
	void delete(Long propertyCategoryId);

}
