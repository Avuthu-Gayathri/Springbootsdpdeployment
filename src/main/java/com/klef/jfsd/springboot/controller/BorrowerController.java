package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.model.LoanRequest;
import com.klef.jfsd.springboot.service.BorrowerService;
import com.klef.jfsd.springboot.service.LoanPaymentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BorrowerController {

    @Autowired
    private BorrowerService borrowerService;

    @GetMapping("borrowerreg")
    public ModelAndView borrowerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("borrowerreg");
        return mv;
    }

    @GetMapping("borrowerlogin")
    public ModelAndView borrowerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("borrowerlogin");
        return mv;
    }

    @PostMapping("insertborrower")
    public ModelAndView insertborrower(HttpServletRequest request) {
        // Extracting values from the form
        String name = request.getParameter("bname");
        String dob = request.getParameter("bdob");
        String email = request.getParameter("bemail");
        String password = request.getParameter("bpwd");
        String contactno = request.getParameter("bcontactno");
        String address = request.getParameter("baddress");
        String accountNumber = request.getParameter("baccountnumber"); // Fixed to match JSP
        String accountType = request.getParameter("baccounttype");

        // Check extracted values
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Account Type: " + accountType);

        Borrower borrower = new Borrower();
        borrower.setName(name);
        borrower.setDob(dob);
        borrower.setEmail(email);
        borrower.setPassword(password);
        borrower.setContactno(contactno);
        borrower.setAddress(address);
        borrower.setAccountNumber(accountNumber); // Ensure it's not null
        borrower.setAccountType(accountType); // Ensure it's not null

        String msg = borrowerService.BorrowerRegistration(borrower);

        ModelAndView mv = new ModelAndView("borrowerlogin");
        mv.addObject("message", msg);

        return mv;
    }


    @PostMapping("checkborrowerlogin")
    public ModelAndView checkborrowerlogin(HttpServletRequest request) {
        String bemail = request.getParameter("bemail");
        String bpwd = request.getParameter("bpwd");

        Borrower borrower = borrowerService.checkborrowerlogin(bemail, bpwd);

        ModelAndView mv = new ModelAndView();
        if (borrower != null) {
            HttpSession session = request.getSession();
            session.setAttribute("borrower", borrower); // Store borrower in session
            mv.addObject("borrower", borrower);
            mv.setViewName("borrowerhome");
        } else {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }


    @GetMapping("borrowerhome")
    public ModelAndView borrowerhome(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Borrower borrower = (Borrower) session.getAttribute("borrower"); // Retrieve borrower from session

        ModelAndView mv = new ModelAndView();
        if (borrower != null) {
            mv.addObject("borrower", borrower);
        } else {
            mv.addObject("message", "Please login to continue.");
        }
        mv.setViewName("borrowerhome");
        return mv;
    }

    @GetMapping("borrowerprofile")
    public ModelAndView borrowerprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("borrowerprofile");
        return mv;
    }

    @GetMapping("profile")
    public ModelAndView profile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Fetch borrower's email from the request
        String borrowerEmail = request.getParameter("bemail");

        if (borrowerEmail != null) {
            // Fetch borrower details using email
            Borrower borrower = borrowerService.getBorrowerByEmail(borrowerEmail);
            if (borrower != null) {
                mv.addObject("borrower", borrower);
            } else {
                mv.addObject("message", "Borrower not found!");
            }
        } else {
            mv.addObject("message", "Email is missing!");
        }

        mv.setViewName("borrowerprofile");
        return mv;
    }

    
    
 // Update Borrower Form
    @GetMapping("/updateborrower")
    public String showUpdateBorrowerForm(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Borrower borrower = (Borrower) session.getAttribute("borrower"); // Fetch borrower from session

        if (borrower != null) {
            model.addAttribute("borrower", borrower);
            return "updateborrower"; // Render the JSP form
        } else {
            model.addAttribute("message", "Please login to continue.");
            return "borrowerlogin";
        }
    }

    // Update Borrower Submission
    @PostMapping("/updateborrower")
    public String updateBorrower(HttpServletRequest request, Borrower updatedBorrower, Model model) {
        HttpSession session = request.getSession();
        Borrower borrower = (Borrower) session.getAttribute("borrower");

        if (borrower != null) {
            updatedBorrower.setId(borrower.getId()); // Ensure the ID is preserved
            Borrower savedBorrower = borrowerService.updateBorrower(updatedBorrower);
            session.setAttribute("borrower", savedBorrower); // Update session with new details
            model.addAttribute("message", "Profile updated successfully!");
            return "redirect:/borrowerprofile"; // Redirect to borrower home page
        } else {
            model.addAttribute("message", "Session expired. Please login again.");
            return "borrowerlogin";
        }
    }
    
    @GetMapping("addloanrequest")
    public ModelAndView addLoanRequestPage(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Borrower borrower = (Borrower) session.getAttribute("borrower"); // Check for borrower

        ModelAndView mv = new ModelAndView();
        if (borrower != null) { // If borrower is logged in, allow access
            mv.setViewName("addloanrequest");
        } else { // Redirect to login page if not logged in
            mv.addObject("message", "Please login to continue.");
            mv.setViewName("borrowerlogin");
        }
        return mv;
    }


    @PostMapping("addloanrequest")
    public ModelAndView addLoanRequest(HttpServletRequest request) {
        // Extract parameters from the request
        String loanType = request.getParameter("loanType");
        double requestedAmount = Double.parseDouble(request.getParameter("requestedAmount"));
        String requestDate = request.getParameter("requestDate");
        String dueDate = request.getParameter("dueDate");
        double interestRate = Double.parseDouble(request.getParameter("interestRate"));
        int loanTerm = Integer.parseInt(request.getParameter("loanTerm"));
        String requestStatus = "Pending"; // Default status for new requests

        // Create a new LoanRequest object
        LoanRequest loanRequest = new LoanRequest();
        loanRequest.setLoanType(loanType);
        loanRequest.setRequestedAmount(requestedAmount);
        loanRequest.setRequestDate(requestDate);
        loanRequest.setDueDate(dueDate);
        loanRequest.setInterestRate(interestRate);
        loanRequest.setLoanTerm(loanTerm);
        loanRequest.setRequestStatus(requestStatus);

        // Save the loan request using the service
        String msg = borrowerService.addLoanRequest(loanRequest); // Assuming lenderService has this method

        // Prepare the ModelAndView
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addloanrequest");
        mv.addObject("message", msg);

        return mv;
    }

    
    
    
    
 // View All Loan Requests (already implemented earlier)
    @GetMapping("/ViewLoanRequestStatus")
    public ModelAndView ViewLoanRequestStatus() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ViewLoanRequestStatus");
        mv.addObject("loanRequestList", borrowerService.ViewLoanRequestStatus());
        return mv;
    }
    
    @GetMapping("/payloan")
    public String showPayLoanPage() {
        return "payloan"; // Matches the JSP file name
    }
   
    
    
    @GetMapping("borrowerlogout")
    public ModelAndView borrowerlogout(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("borrowerlogin");
        return mv;
    }
    
    
    
}
