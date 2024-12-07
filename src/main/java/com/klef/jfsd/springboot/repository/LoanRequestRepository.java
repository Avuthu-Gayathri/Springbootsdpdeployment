package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.model.LoanRequest;

public interface LoanRequestRepository extends JpaRepository<LoanRequest, Integer>
{

}
