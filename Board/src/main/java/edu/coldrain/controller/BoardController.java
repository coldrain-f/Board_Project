package edu.coldrain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;
import edu.coldrain.domain.PageDTO;
import edu.coldrain.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
@Log4j
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Criteria criteria, Model model) {
		log.info("BoardController.list()");
		log.info("criteria = " + criteria);
		
		List<BoardVO> boardList = service.getList(criteria);
		//realEnd 구현해야 됨
		PageDTO pageMaker = new PageDTO(criteria, 200);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	@GetMapping("/write")
	public void write() {
		
	}
	
	@GetMapping("/detail")
	public void detail() {
		
	}
	
	@GetMapping("/modify")
	public void modify() {
		
	}
}
