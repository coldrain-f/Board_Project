package edu.coldrain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.coldrain.domain.ReplyVO;
import edu.coldrain.service.ReplyService;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/replies/")
@Log4j
public class ReplyController {
	
	@Autowired
	private ReplyService service;
	
	//consumes이게 뭘까?
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody ReplyVO reply) {
		
		log.info("ReplyVO: " + reply);
		
		int insertCount = service.register(reply);
		log.info("Reply INSERT COUNT = " + insertCount);
		
		//ResponseEntity는 또 뭐지?
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
