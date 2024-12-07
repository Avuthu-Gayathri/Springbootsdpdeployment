package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.LoanRequest;
import com.klef.jfsd.springboot.repository.BorrowerRepository;
import com.klef.jfsd.springboot.repository.LoanRequestRepository;

@Service
public class BorrowerServiceImpl implements BorrowerService
{
    @Autowired
    private BorrowerRepository borrowerRepository;
    
    @Autowired
   	private LoanRequestRepository loanrequestRepository;
    
    @Override
    public String BorrowerRegistration(Borrower b) {
        borrowerRepository.save(b);
        return "Borrower Registered Successfully";
    }
    
   
	

    @Override
    public Borrower checkborrowerlogin(String email, String pwd) 
    {
        return borrowerRepository.checkborrowerlogin(email, pwd);
    }
    
    @Override
    public Borrower displayBorrowerByID(int bid) 
    {
        return borrowerRepository.findById(bid).orElse(null);
    }
    
    @Override
    public Borrower getBorrowerByEmail(String email)
    {
        return borrowerRepository.findByEmail(email);  // This fetches the borrower based on the email
    }
    
    
    public Borrower updateBorrower(Borrower borrower) {
        return borrowerRepository.save(borrower); // Save updated borrower details
    }
    
    @Override
	public String addLoanRequest(LoanRequest loanRequest) {
	    loanrequestRepository.save(loanRequest);
	    return "Loan request added successfully!";
	}



	@Override
	public List<LoanRequest> ViewLoanRequestStatus() {
		{ 
			  return loanrequestRepository.findAll(); 
			 } 
	} 
}
