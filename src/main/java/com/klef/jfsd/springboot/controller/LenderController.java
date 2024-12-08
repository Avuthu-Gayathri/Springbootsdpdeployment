package com.klef.jfsd.springboot.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.model.LoanRequest;
import com.klef.jfsd.springboot.service.LenderService;
import com.klef.jfsd.springboot.service.LoanRequestService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LenderController {

    @Autowired
    private LenderService lenderService;
    
    @Autowired
    private LoanRequestService loanRequestService;
    
    

    // Lender Registration
    @GetMapping("lenderreg")
    public ModelAndView lenderreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("lenderreg");
        return mv;
    }

    // Lender Login
    @GetMapping("lenderlogin")
    public ModelAndView lenderlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("lenderlogin");
        return mv;
    }

    // Insert Lender (Registration Form Submission)
    @PostMapping("insertlender")
    public ModelAndView insertlender(HttpServletRequest request) {
        String name = request.getParameter("lname");
        String dob = request.getParameter("ldob");
        String email = request.getParameter("lemail");
        String password = request.getParameter("lpwd");
        String contactno = request.getParameter("lcontactno");
        String address = request.getParameter("laddress");

        Lender lender = new Lender();
        lender.setName(name);
        lender.setDob(dob);
        lender.setEmail(email);
        lender.setPassword(password);
        lender.setContactno(contactno);
        lender.setAddress(address);

        String msg = lenderService.LenderRegistration(lender);

        ModelAndView mv = new ModelAndView("lenderlogin");
        mv.addObject("message", msg);
        return mv;
    }

    // Check Lender Login
    @PostMapping("checklenderlogin")
    public ModelAndView checklenderlogin(HttpServletRequest request) {
        String lemail = request.getParameter("lemail");
        String lpwd = request.getParameter("lpwd");

        Lender lender = lenderService.checklenderlogin(lemail, lpwd);

        ModelAndView mv = new ModelAndView();
        if (lender != null) {
            HttpSession session = request.getSession();
            session.setAttribute("lender", lender);
            mv.addObject("lender", lender);
            mv.setViewName("lenderhome");
        } else {
            mv.setViewName("lenderlogin");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }

    // Lender Home
    @GetMapping("lenderhome")
    public ModelAndView lenderhome(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Lender lender = (Lender) session.getAttribute("lender");

        ModelAndView mv = new ModelAndView();
        if (lender != null) {
            mv.addObject("lender", lender);
        } else {
            mv.addObject("message", "Please login to continue.");
        }
        mv.setViewName("lenderhome");
        return mv;
    }

    // Lender Profile
    @GetMapping("lenderprofile")
    public ModelAndView lenderprofile(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Lender lender = (Lender) session.getAttribute("lender");

        ModelAndView mv = new ModelAndView();
        if (lender != null) {
            mv.addObject("lender", lender);
            mv.setViewName("lenderprofile");
        } else {
            mv.addObject("message", "Please login to continue.");
            mv.setViewName("lenderlogin");
        }
        return mv;
    }

    // Update Lender Form
    @GetMapping("/updatelender")
    public String showUpdateLenderForm(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Lender lender = (Lender) session.getAttribute("lender");

        if (lender != null) {
            model.addAttribute("lender", lender);
            return "updatelender"; // Render the JSP form
        } else {
            model.addAttribute("message", "Please login to continue.");
            return "lenderlogin";
        }
    }

    // Update Lender Submission
    @PostMapping("/updatelender")
    public String updateLender(HttpServletRequest request, Lender updatedLender, Model model) {
        HttpSession session = request.getSession();
        Lender lender = (Lender) session.getAttribute("lender");

        if (lender != null) {
            updatedLender.setId(lender.getId()); // Preserve the existing ID
            Lender savedLender = lenderService.updateLender(updatedLender);
            session.setAttribute("lender", savedLender); // Update session with new details
            model.addAttribute("message", "Profile updated successfully!");
            return "redirect:/lenderprofile"; // Redirect to profile page
        } else {
            model.addAttribute("message", "Session expired. Please login again.");
            return "lenderlogin";
        }
    }

    
    
 // View All Loan Requests (already implemented earlier)
    @GetMapping("/viewallloanrequests")
    public ModelAndView viewAllLoanRequests() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallloanrequests");
        mv.addObject("loanRequestList", lenderService.ViewAllLoanRequests());
        return mv;
    }

 // Accept Loan Request
    @GetMapping("/acceptloanrequest")
    public ModelAndView acceptLoanRequest(@RequestParam("requestId") int requestId) {
        String message = lenderService.acceptLoanRequest(requestId);
        ModelAndView mv = new ModelAndView("redirect:/viewallloanrequests");
        mv.addObject("message", message);
        return mv;
    }

    // Reject Loan Request
    @GetMapping("/rejectloanrequest")
    public ModelAndView rejectLoanRequest(@RequestParam("requestId") int requestId) {
        String message = lenderService.rejectLoanRequest(requestId);
        ModelAndView mv = new ModelAndView("redirect:/viewallloanrequests");
        mv.addObject("message", message);
        return mv;
    }
    
    
    // Lender Logout
    @GetMapping("lenderlogout")
    public ModelAndView lenderlogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("lenderlogin");
        return mv;
    }


    
    
    
    
    
    
    
    
    
    
    
    
    


    
    
}