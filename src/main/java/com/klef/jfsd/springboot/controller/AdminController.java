package com.klef.jfsd.springboot.controller; 
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.Lender;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BorrowerService;
import com.klef.jfsd.springboot.service.LenderService;

import jakarta.servlet.http.HttpServletRequest; 
 
@Controller 
public class AdminController  
{ 
  @Autowired 
  private AdminService adminService; 
  
  @Autowired
  private LenderService lenderService;
  
  
  @Autowired
  private BorrowerService borrowerService;
  
  @GetMapping("/") 
  public ModelAndView home() 
  { 
    ModelAndView mv = new ModelAndView(); 
    mv.setViewName("home"); 
    return mv; 
  } 
   
   
     @GetMapping("adminlogin") 
     public ModelAndView adminlogin() 
     { 
       ModelAndView mv = new ModelAndView(); 
       mv.setViewName("adminlogin"); 
       return mv; 
     } 
      
  
       
     @PostMapping("checkadminlogin") 
     //@ResponseBody 
     public ModelAndView checkadminlogin(HttpServletRequest request) 
     { 
      ModelAndView mv = new ModelAndView(); 
       
     String auname = request.getParameter("auname"); 
     String apwd = request.getParameter("apwd"); 
       
     Admin admin = adminService.checkadminlogin(auname, apwd); 
      
     if(admin!=null) 
     { 
      //return "Admin Login Success"; 
      mv.setViewName("adminhome"); 
      
      
     } 
     else 
     { 
      //return "Admin Login Fail"; 
      mv.setViewName("adminloginfail"); 
      mv.addObject("message","Login Failed"); 
     }     
     return mv;       
     } 
      
     @GetMapping("adminhome") 
     public ModelAndView adminhome() 
     { 
       ModelAndView mv = new ModelAndView(); 
       mv.setViewName("adminhome"); 
       
       
       return mv; 
     } 
     
     
     
     @GetMapping("deletelender") 
     public ModelAndView deletelender() 
     { 
       ModelAndView mv = new ModelAndView(); 
       List<Lender> lenderlist = adminService.ViewAllLenders(); 
       mv.setViewName("deletelender"); 
       mv.addObject("lenderlist",lenderlist); 
       return mv; 
     } 
      
     @GetMapping("delete") 
     public String deleteoperation(@RequestParam("id") int lid) 
     { 
      adminService.deletelender(lid); 
       
         return "redirect:/deletelender"; //redirect to same path  
     } 
     
     @GetMapping("viewalllenders") 
     public ModelAndView viewalllenders() 
     { 
       ModelAndView mv = new ModelAndView(); 
       List<Lender> lenderlist = adminService.ViewAllLenders(); 
       mv.setViewName("viewalllenders"); 
       mv.addObject("lenderlist",lenderlist); 
       
       //long count = adminService.empcount();
      //mv.addObject("count",count);
       
       return mv; 
     } 
     
     
     
     
     
     @GetMapping("deleteborrower") 
     public ModelAndView deleteborrower() 
     { 
         ModelAndView mv = new ModelAndView(); 
         List<Borrower> borrowerlist = adminService.ViewAllBorrowers(); 
         mv.setViewName("deleteborrower"); 
         mv.addObject("borrowerlist", borrowerlist); 
         return mv; 
     } 
     
     @GetMapping("deleteBorrower") 
     public String deleteBorrower(@RequestParam("id") int bid) 
     { 
         adminService.deleteborrower(bid); 
         return "redirect:/deleteborrower"; //redirect to same path  
     }
     
     
     @GetMapping("viewallborrowers") 
     public ModelAndView viewallborrowers() 
     { 
       ModelAndView mv = new ModelAndView(); 
       List<Borrower> borrowerlist = adminService.ViewAllBorrowers(); 
       mv.setViewName("viewallborrowers"); 
       mv.addObject("borrowerlist",borrowerlist); 
       
       //long count = adminService.empcount();
      //mv.addObject("count",count);
       
       return mv; 
     } 
     
 
     
      
     @GetMapping("adminlogout") 
     public ModelAndView adminlogout() 
     { 
       ModelAndView mv = new ModelAndView(); 
       mv.setViewName("adminlogin"); 
       return mv; 
     } 
     
     @GetMapping("/session-expired")
     public String sessionExpired() {
         return "sessionExpired"; // JSP/HTML page for session expiry message
     }
     
      
 
}