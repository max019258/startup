package com.inhatc.cs;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inhatc.service.BoardService;

@Controller
@RequestMapping("/*")
public class BoardController {

  private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  @Inject
  private BoardService service;
  
  
  
  @RequestMapping(value = "/cpu_bench", method = RequestMethod.GET)
  public void listAll(Model model) throws Exception {

    logger.info("show all list......................");
    model.addAttribute("list", service.listAll());
  }
  
  
  @RequestMapping(value = "/gpu_bench", method = RequestMethod.GET)
  public void listAll_gpu(Model model) throws Exception {

    logger.info("show all list......................");
    model.addAttribute("list", service.listAll_gpu());
  }
}
