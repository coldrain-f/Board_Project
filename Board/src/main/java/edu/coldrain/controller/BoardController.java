package edu.coldrain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	@GetMapping("/list")
	public void list() {
		
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
