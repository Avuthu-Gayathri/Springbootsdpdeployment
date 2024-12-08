package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.service.LoanPaymentService;

@Controller
@RequestMapping("/loans")
public class LoanController {


    @Autowired
    private LoanPaymentService loanPaymentService;
    


  
    // Loan calculation page
    @GetMapping("/calculate-loan")
    public String showLoanCalculationPage() {
        return "calculate-loan";  // Returns the loan calculation form JSP
    }

    // Handle loan calculation
    @PostMapping("/calculate-loan")
    public String calculateLoan(@RequestParam double requestedAmount, 
                                @RequestParam double interestRate, 
                                @RequestParam int loanTerm, 
                                Model model) {

        // Loan Calculation based on simple interest
        double interestAmount = (requestedAmount * interestRate * loanTerm) / 100;
        double totalDueAmount = requestedAmount + interestAmount;

        // Add to model
        model.addAttribute("requestedAmount", requestedAmount);
        model.addAttribute("interestRate", interestRate);
        model.addAttribute("loanTerm", loanTerm);
        model.addAttribute("interestAmount", interestAmount);
        model.addAttribute("totalDueAmount", totalDueAmount);

        return "loan-due";  // Points to loan-due.jsp
    }
    
    @PostMapping("/processLoanPayment")
    public String processLoanPayment(
            @RequestParam("loanId") String loanId,
            @RequestParam("amount") double amount,
            @RequestParam("paymentMethod") String paymentMethod,
            Model model) {

        System.out.println("Processing payment for Loan ID: " + loanId);
        System.out.println("Amount: " + amount);
        System.out.println("Payment Method: " + paymentMethod);

        boolean paymentSuccess = loanPaymentService.processPayment(loanId, amount, paymentMethod);
        if (paymentSuccess) {
            model.addAttribute("message", "Loan payment successful!");
        } else {
            model.addAttribute("message", "Loan payment failed. Please try again.");
        }


        model.addAttribute("loanId", loanId);
        model.addAttribute("amount", amount);
        model.addAttribute("paymentMethod", paymentMethod);

        return "payloan";
    }

   

}
