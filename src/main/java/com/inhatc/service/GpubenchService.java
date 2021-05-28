package com.inhatc.service;

import com.inhatc.domain.GpubenchVO;

public interface GpubenchService {
	public GpubenchVO selectGpuName(Integer gpu_num) throws Exception;
}
