package com.inhatc.persistence;

import java.util.List;
import com.inhatc.domain.GpubenchVO;

public interface GpubenchDAO {
	public void insert(GpubenchVO vo)throws Exception;
	public GpubenchVO read(Integer bno)throws Exception;
	public void update(GpubenchVO vo)throws Exception;
	public void delete(Integer gpu_num)throws Exception;
	public List<GpubenchVO> listAll_gpu() throws Exception;
	public GpubenchVO selectGpuName(Integer gpu_num) throws Exception;
}
