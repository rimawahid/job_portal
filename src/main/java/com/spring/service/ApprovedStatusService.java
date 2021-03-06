package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.ApprovedStatusDAO;
import com.spring.model.ApplyJob;
import com.spring.model.ApprovedStatus;


@Service(value = "approvedStatusService")
public class ApprovedStatusService {
	@Autowired
	ApprovedStatusDAO approvedStatusDAO;
	
	@Autowired
	ApplyJobService applyJobService;
	
	public ApprovedStatus save(ApplyJob applyJob) {
		//System.out.println(request.getParameter("id"));
		ApprovedStatus a = new ApprovedStatus();
		a.setTitle(applyJob.getTitle());
		a.setBudget(applyJob.getBudget());
		a.setBidAmount(applyJob.getBidAmount());
		a.setDeliveryTime(applyJob.getDeliveryTime());
		a.setFreelancer(applyJob.getFreelancer());
		a.setProposalDate(applyJob.getProposalDate());
		a.setStatus(applyJob.getStatus());
		return approvedStatusDAO.save(a);
	}
}
