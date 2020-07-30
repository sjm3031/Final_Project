package com.cafe.erp.hr.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.hr.model.jobDAO;
import com.cafe.erp.hr.model.jobDTO;

@Component
public class jobServiceImpl implements jobService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertJob(jobDTO dto) {
		
		jobDAO dao = sqlSession.getMapper(jobDAO.class);
		
		dao.insertJob(dto);
		
	}

	@Override
	public List<jobDTO> getJobList() {
		
		jobDAO dao = sqlSession.getMapper(jobDAO.class);
		
		return dao.getJobList();
	}
	
	@Override
	public jobDTO getJob(int job_code) {
		jobDAO dao = sqlSession.getMapper(jobDAO.class);
		
		return dao.getJob(job_code);
	}

	@Override
	public int updateJob(jobDTO dto) {

		jobDAO dao = sqlSession.getMapper(jobDAO.class);
		
		return dao.updateJob(dto);
	}
	

	@Override
	public int deleteJob(int job_code) {

		jobDAO dao = sqlSession.getMapper(jobDAO.class);
		
		return dao.deleteJob(job_code);
	}

	
	
}
