package edu.coldrain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@PostMapping("/write")
	public String insertBoard(BoardVO board) {
		//일단은 회원가입이 정해지지 않아서 여기서 설정해 준다.
		log.info("title = " + board.getTitle());
		log.info("contents = " + board.getContents());
		
		board.setWriter("newbie");
		
		service.register(board);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/detail")
	public void detail(Long bno, Model model) {
		log.info("BoardController.detail()");
		log.info("bno = " + bno);
		
		BoardVO board = service.get(bno);
		model.addAttribute("board", board);
	}
	
	@GetMapping("/modify")
	public void modify() {
		
	}
}
