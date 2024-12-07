package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.model.LoanRequest;
import com.klef.jfsd.springboot.repository.LenderRepository;
import com.klef.jfsd.springboot.repository.LoanRequestRepository;



@Service
public class LenderServiceImpl implements LenderService
{
	@Autowired
	private LenderRepository lenderRepository;
	

	@Autowired
	private LoanRequestRepository loanrequestRepository;
	
	
	
	
	@Override
	public String LenderRegistration(Lender l) {
		lenderRepository.save(l);
		return "Lender Registered Successfully";
	}

	@Override
	public Lender checklenderlogin(String email, String pwd) 
	{
		return lenderRepository.checklenderlogin(email,pwd);
	}
	
	@Override
	public Lender displayLenderByID(int lid) 
	{
		
		return lenderRepository.findById(lid).get();
	}
	
	
	public Lender getLenderByEmail(String email)
	{
        return lenderRepository.findByEmail(email);  // This fetches the lender based on the email
    }

	@Override
	public Lender updateLender(Lender lender) {
		return lenderRepository.save(lender); 
	}
	

	@Override 
	public List<LoanRequest> ViewAllLoanRequests()  
	 { 
	  return loanrequestRepository.findAll(); 
	 } 
	
	
	public String acceptLoanRequest(int requestId) {
        LoanRequest loanRequest = loanrequestRepository.findById(requestId).orElse(null);
        if (loanRequest != null) {
            loanRequest.setRequestStatus("Accepted");
            loanrequestRepository.save(loanRequest);
            return "Loan request accepted successfully!";
        }
        return "Loan request not found.";
    }

    public String rejectLoanRequest(int requestId) {
        LoanRequest loanRequest = loanrequestRepository.findById(requestId).orElse(null);
        if (loanRequest != null) {
            loanRequest.setRequestStatus("Rejected");
            loanrequestRepository.save(loanRequest);
            return "Loan request rejected successfully!";
        }
        return "Loan request not found.";
    }
	
}
