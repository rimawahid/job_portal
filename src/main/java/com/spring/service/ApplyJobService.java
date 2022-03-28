package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.ApplyJobDAO;
import com.spring.model.ApplyJob;


@Service(value = "applyJobService")
public class ApplyJobService {
	@Autowired
	ApplyJobDAO applyJobDAO;

//	public ApplyJob save(ApplyJob applyJob, MultipartFile file) throws IllegalStateException, IOException {
//		file.transferTo(new File("D:\\IDB\\Project\\job_portal\\src\\main\\webapp\\files"+ file.getOriginalFilename()));
//		return applyJobDAO.save(applyJob);
//	}
	public ApplyJob save(ApplyJob applyJob){
        return applyJobDAO.save(applyJob);
    }
}
