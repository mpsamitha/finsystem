package com.sam.finsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.finsystem.dao.BranchDao;
import com.sam.finsystem.model.Branch;

@Service("branchService")
@Transactional
public class BranchServiceImpl implements BranchService{

	@Autowired
	private BranchDao dao;
	
	public Branch findById(int id) {
		return dao.findById(id);
	}

	public void saveBranch(Branch branch) {
		dao.saveBranch(branch);
	}

	public void updateBranch(Branch branch) {
		Branch entity = dao.findById(branch.getId());
		if(entity!=null){
			entity.setBranchName(branch.getBranchName());
			entity.setBranchAddress(branch.getBranchAddress());
			entity.setBranchPhone(branch.getBranchPhone());
			entity.setBranchOpenDate(branch.getBranchOpenDate());
			entity.setBranchCode(branch.getBranchCode());
		}
	}

	public void deleteBranchByBranchCode(String branchCode) {
		dao.deleteBranchByBranchCode(branchCode);
	}

	public List<Branch> findAllBranch() {
		return dao.findAllBranch();
	}

	public Branch findBranchByBranchCode(String branchCode) {
		return dao.findBranchByBranchCode(branchCode);
	}

	public boolean isBranchCodeUnique(Integer id, String branchCode) {
		Branch branch = findBranchByBranchCode(branchCode);
		 return ( branch == null || ((id != null) && (branch.getId() == id)));
	}

}
