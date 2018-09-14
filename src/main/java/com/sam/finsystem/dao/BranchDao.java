package com.sam.finsystem.dao;

import java.util.List;

import com.sam.finsystem.model.Branch;

public interface BranchDao {
	
	Branch findById(int id);
	 
    void saveBranch(Branch branch);
     
    void deleteBranchByBranchCode(String branchCode);
     
    List<Branch> findAllBranch();
 
    Branch findBranchByBranchCode(String branchCode);

}
