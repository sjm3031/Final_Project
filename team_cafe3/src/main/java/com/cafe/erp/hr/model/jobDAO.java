package com.cafe.erp.hr.model;

import java.util.HashMap;
import java.util.List;

public interface jobDAO {

	public void insertJob(jobDTO dto);

	public List<jobDTO> getJobList();
	
	public jobDTO getJob(int job_code);

	public int updateJob(jobDTO dto);

	public int deleteJob(int job_code); 

}
