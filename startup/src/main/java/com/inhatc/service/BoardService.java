package com.inhatc.service;

import java.util.List;

import com.inhatc.domain.BoardVO;


public interface BoardService {

  public void regist(BoardVO board) throws Exception; //dao create()

  public BoardVO read(Integer bno) throws Exception; //dao read()

  public void modify(BoardVO board) throws Exception; // dao update()
  
//  public void modifyPage(BoardVO board) throws Exception;

  public void remove(Integer bno) throws Exception; // dao delete()

  public List<BoardVO> listAll() throws Exception; // dao listall()




}
