package com.inhatc.persistence;

import java.util.List;
import com.inhatc.domain.CpubenchVO;

public interface CpubenchDAO {
	public void insert(CpubenchVO vo)throws Exception;
	public CpubenchVO read(Integer bno)throws Exception;
	public void update(CpubenchVO vo)throws Exception;
	public void delete(Integer cpu_num)throws Exception;
	
	
	public List<CpubenchVO> listAll() throws Exception;

}
