package com.inhatc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.inhatc.domain.CpubenchVO;
import com.inhatc.domain.GpubenchVO;
import com.inhatc.persistence.CpubenchDAO;
import com.inhatc.persistence.GpubenchDAO;

@Service
public class BoardServiceImpl implements BoardService {

  
  @Inject
  private CpubenchDAO Cpu;
  
  @Inject
  private GpubenchDAO Gpu;


  @Override
  public List<CpubenchVO> listAll() throws Exception 
  {
    return Cpu.listAll();
    
    
  }@Override
  public List<GpubenchVO> listAll_gpu() throws Exception 
  {
    return Gpu.listAll_gpu();
  }


}
