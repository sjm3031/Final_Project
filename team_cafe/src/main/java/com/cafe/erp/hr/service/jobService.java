package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.jobDTO;

public interface jobService {
	

	public void insertJob(jobDTO dto);

	public List<jobDTO> getJobList();
	
	public jobDTO getJob(int job_code);

	public int updateJob(jobDTO dto);

	public int deleteJob(int job_code); 

}
