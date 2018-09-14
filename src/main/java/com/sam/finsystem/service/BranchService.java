package com.sam.finsystem.service;

import java.util.List;

import com.sam.finsystem.model.Branch;

public interface BranchService {
	
	Branch findById(int id);
	
	void saveBranch(Branch branch);
    
    void updateBranch(Branch branch);
     
    void deleteBranchByBranchCode(String branchCode);
 
    List<Branch> findAllBranch(); 
     
    Branch findBranchByBranchCode(String branchCode);
 
    boolean isBranchCodeUnique(Integer id, String branchCode);

}
