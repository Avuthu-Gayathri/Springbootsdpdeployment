package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Lender;

import jakarta.transaction.Transactional;


@Repository
public interface LenderRepository extends JpaRepository<Lender, Integer>
{
	@Query("select l from Lender l where l.email=?1 and l.password=?2 ")
	public Lender checklenderlogin(String email, String pwd);
	
	public Lender findByEmail(String email);
	
	
	
}
