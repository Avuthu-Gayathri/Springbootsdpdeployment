package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Borrower;
import com.klef.jfsd.springboot.model.Lender;

public interface AdminService 
{
	public Admin checkadminlogin(String uname, String pwd);
	
    public String deletelender(int lid);
	public List<Lender> ViewAllLenders();
	
	public String deleteborrower(int bid);
	public List<Borrower> ViewAllBorrowers();
	
}
