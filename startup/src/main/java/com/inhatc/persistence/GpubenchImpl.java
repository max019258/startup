package com.inhatc.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.inhatc.domain.CpubenchVO;
import com.inhatc.domain.GpubenchVO;


@Repository
public class GpubenchImpl implements GpubenchDAO {

  @Inject
  private SqlSession session;

  private static String namespace = "com.inhatc.mappers.GpubenchMapper";

  @Override
  public void insert(GpubenchVO vo) throws Exception 
  {
    session.insert(namespace + ".create", vo);
  }
  
  @Override
  public GpubenchVO read(Integer cpu_num) throws Exception 
  {
    return session.selectOne(namespace + ".read", cpu_num);
  }

  @Override
  public void update(GpubenchVO vo) throws Exception 
  {
    session.update(namespace + ".update", vo);
  }

  @Override
  public void delete(Integer cpu_num) throws Exception 
  {
    session.delete(namespace + ".delete", cpu_num);
  }

  @Override
  public List<GpubenchVO> listAll_gpu() throws Exception 
  {
    return session.selectList(namespace + ".listAll");
  }


}
