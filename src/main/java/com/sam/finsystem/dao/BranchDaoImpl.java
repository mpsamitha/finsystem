package com.sam.finsystem.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sam.finsystem.model.Branch;

@Repository("branchDao")
public class BranchDaoImpl extends AbstractDao<Integer, Branch> implements BranchDao{

	public Branch findById(int id) {
		return getByKey(id);
	}

	public void saveBranch(Branch branch) {
		persist(branch);
	}

	public void deleteBranchByBranchCode(String branchCode) {
		Query query = getSession().createSQLQuery("delete from Branch where branchCode = :branchCode");
        query.setString("branchCode", branchCode);
        query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Branch> findAllBranch() {
		Criteria criteria = createEntityCriteria();
        return (List<Branch>) criteria.list();
	}

	public Branch findBranchByBranchCode(String branchCode) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("branchCode", branchCode));
        return (Branch) criteria.uniqueResult();
	}

}
