package com.nildev.bhaktirealestate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nildev.bhaktirealestate.domain.Holder;

@Repository
public interface HolderRepository extends JpaRepository<Holder, Long> {

	List<Holder> findByPropertyCategory_IDAndStatus(Long id, int status);
	
	@Modifying
	@Query("UPDATE Holder SET status = 1 WHERE id = ?1")
	void delete(Long id);
}
