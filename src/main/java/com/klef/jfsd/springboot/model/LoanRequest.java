package com.klef.jfsd.springboot.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "loanrequest_table")
public class LoanRequest {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int requestId;         // Unique identifier for the loan request
    
    private String loanType;       // Type of loan (e.g., Personal, Education, etc.)
    private double requestedAmount;// Amount requested for the loan
    private String requestDate;      // Date when the loan request was made
    private String dueDate;          // Date by which the loan should be repaid
    private double interestRate;   // Interest rate for the loan
    private int loanTerm;          // Loan term (duration in months or years)
    private String requestStatus;  // Current status of the loan request (Pending, Approved, Rejected, etc.)

    // Constructors
    public LoanRequest() {}

    public LoanRequest(int requestId, double requestedAmount, String loanType,
                       String requestDate, String dueDate, String requestStatus,  double interestRate, 
                       int loanTerm) {
        this.requestId = requestId;
        this.requestedAmount = requestedAmount;
        this.loanType = loanType;
        this.requestDate = requestDate;
        this.dueDate = dueDate;
        this.requestStatus = requestStatus;
        this.interestRate = interestRate;
        this.loanTerm = loanTerm;
    }

    // Getters and Setters
    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }


    public double getRequestedAmount() {
        return requestedAmount;
    }

    public void setRequestedAmount(double requestedAmount) {
        this.requestedAmount = requestedAmount;
    }

    public String getLoanType() {
        return loanType;
    }

    public void setLoanType(String loanType) {
        this.loanType = loanType;
    }
    public String getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(String requestDate) {
        this.requestDate = requestDate;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }

    public String getRequestStatus() {
        return requestStatus;
    }

    public void setRequestStatus(String requestStatus) {
        this.requestStatus = requestStatus;
    }
    public double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(double interestRate) {
        this.interestRate = interestRate;
    }

    public int getLoanTerm() {
        return loanTerm;
    }

    public void setLoanTerm(int loanTerm) {
        this.loanTerm = loanTerm;
    }
    

    // toString method
    @Override
    public String toString() {
        return "LoanRequest [requestId=" + requestId + ",  requestedAmount=" + requestedAmount
                + ", loanType=" + loanType + ", requestDate=" + requestDate
                + ", dueDate=" + dueDate + ", requestStatus=" + requestStatus 
                + ", interestRate=" + interestRate + ", loanTerm=" + loanTerm + "]";
    }
}
