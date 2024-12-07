package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.model.LoanRequest;

public interface LenderService 
{
	public String LenderRegistration(Lender l);
	public Lender checklenderlogin(String email, String pwd);
	public Lender displayLenderByID(int lid);
	public Lender getLenderByEmail(String lenderEmail);
	public Lender updateLender(Lender lender);
	
	
	
	public List<LoanRequest> ViewAllLoanRequests(); 
	public String acceptLoanRequest(int requestId);
	public String rejectLoanRequest(int requestId);


	
}

