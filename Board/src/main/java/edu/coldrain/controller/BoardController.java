package edu.coldrain.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		
		int total = service.getTotal(criteria);
		PageDTO pageMaker = new PageDTO(criteria, total);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	@GetMapping("/write")
	public void writeForm() {
		
	}
	
	@PostMapping("/write")
	public String write(BoardVO board) {
		//일단은 회원가입이 정해지지 않아서 여기서 설정해 준다.
		log.info("title = " + board.getTitle());
		log.info("contents = " + board.getContents());
		
		board.setWriter("newbie");
		
		service.register(board);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/detail")
	public void detail(Long bno, @ModelAttribute Criteria criteria, Model model) {
		log.info("BoardController.detail()");
		log.info("bno = " + bno);
		log.info("criteria = " + criteria);
		
		BoardVO board = service.get(bno);
		model.addAttribute("board", board);
	}
	
	@PostMapping("/remove")
	public String remove(Long bno) {
		log.info("BoardController.remove()");
		log.info("bno = " + bno);
		
		boolean success = service.remove(bno);
		if(success) {
			log.info(bno + "번 삭제에 성공했습니다.");
		} else {
			log.info(bno + "번 삭제에 실패했습니다.");
		}
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/modify")
	public void modifyForm(Long bno, Model model) {
		log.info("BoardController.modifyForm()");
		log.info("bno = " + bno);
		
		BoardVO board = service.get(bno);
		log.info("board = " + board);
		
		model.addAttribute("board", board);
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board) {
		log.info("BoardController.modify()");
		
		boolean success = service.modify(board);
		if(success) {
			log.info(board.getBno() + "번 수정에 성공했습니다.");
		} else {
			log.info(board.getBno() + "번 수정에 실패했습니다.");
		}
		return "redirect:/board/list";
	}
}
