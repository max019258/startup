package com.inhatc.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.inhatc.domain.GpubenchVO;
import com.inhatc.persistence.GpubenchDAO;

@Service
public class GpubenchServiceImpl implements GpubenchService{

	@Inject
	private GpubenchDAO dao;
	
	@Override
	public GpubenchVO selectGpuName(Integer gpu_num) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ServiceImpl부분 실행" + gpu_num);
		return dao.selectGpuName(gpu_num);
	}
}
