package com.cafe.erp.hr.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.jobService;






@Controller
public class jobController {

	@Resource
	private jobService jobService;
	
	@RequestMapping(value = "/jobList.cafe", method = RequestMethod.GET)
	public String jobList(Model model) {
		List<jobDTO> list = jobService.getJobList();
		
		model.addAttribute("list", list);
		
		return "jobListForm";
	}
	
	@RequestMapping(value = "/jobList.cafe", method = RequestMethod.POST)
	public String jobInsert(jobDTO dto) {
		
			jobService.insertJob(dto);
			
			return "redirect:jobList.cafe";
		}
	
	@RequestMapping("/jobDelete.cafe")
	public String jobDelete(int job_code) {
			
			jobService.deleteJob(job_code);
			
			return "redirect:jobList.cafe";
	}
	
	@RequestMapping(value = "/jobUpdate.cafe", method = RequestMethod.GET)
	public String jobUpdateForm(int job_code, Model model) {
		jobDTO dto = jobService.getJob(job_code);
		model.addAttribute("dto", dto);
		return "jobUpdateForm";
	}
	
	@RequestMapping(value = "/jobUpdate.cafe", method = RequestMethod.POST)
	public String jobUpdate(jobDTO dto) {
		jobService.updateJob(dto);
		return "redirect:jobList.cafe";
	}
}
