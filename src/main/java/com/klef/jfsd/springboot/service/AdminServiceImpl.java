package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BorrowerRepository;
import com.klef.jfsd.springboot.repository.LenderRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired 
	 private AdminRepository adminRepository; 
	
	@Autowired
	private LenderRepository lenderRepository;
	
	@Autowired
	private BorrowerRepository borrowerRepository;

	 @Override 
	 public Admin checkadminlogin(String uname, String pwd) { 
	   
	  return adminRepository.checkadminlogin(uname, pwd); 
	 } 
	 
	 @Override 
	 public String deletelender(int lid)  
	 { 
	  lenderRepository.deleteById(lid); 
	  return "Lender Deleted Successfully"; 
	 } 
		
	@Override 
	 public List<Lender> ViewAllLenders()  
	 { 
	  return lenderRepository.findAll(); 
	 } 
	
	@Override 
	 public String deleteborrower(int bid)  
	 { 
	  borrowerRepository.deleteById(bid); 
	  return "Borrower Deleted Successfully"; 
	 } 
	
	@Override 
	 public List<Borrower> ViewAllBorrowers()  
	 { 
	  return borrowerRepository.findAll(); 
	 } 
}
