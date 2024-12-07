package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.LoanRequest;

public interface BorrowerService 
{
    public String BorrowerRegistration(Borrower b);
    public Borrower checkborrowerlogin(String email, String pwd);
    public Borrower displayBorrowerByID(int bid);
    public Borrower getBorrowerByEmail(String borrowerEmail);
    public Borrower updateBorrower(Borrower borrower);
    
	
	public String addLoanRequest(LoanRequest loanRequest); // Add a loan request
	public List<LoanRequest> ViewLoanRequestStatus();
	
}