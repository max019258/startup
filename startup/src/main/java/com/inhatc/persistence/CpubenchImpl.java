package com.inhatc.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.inhatc.domain.CpubenchVO;


@Repository
public class CpubenchImpl implements CpubenchDAO {

  @Inject
  private SqlSession session;

  private static String namespace = "com.inhatc.mappers.CpubenchMapper";

  @Override
  public void insert(CpubenchVO vo) throws Exception 
  {
    session.insert(namespace + ".create", vo);
  }
  
  @Override
  public CpubenchVO read(Integer cpu_num) throws Exception 
  {
    return session.selectOne(namespace + ".read", cpu_num);
  }

  @Override
  public void update(CpubenchVO vo) throws Exception 
  {
    session.update(namespace + ".update", vo);
  }

  @Override
  public void delete(Integer cpu_num) throws Exception 
  {
    session.delete(namespace + ".delete", cpu_num);
  }
  
  
  

  @Override
  public List<CpubenchVO> listAll() throws Exception 
  {
    return session.selectList(namespace + ".listAll");
  }


}
