package com.kb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kb.service.BoardService;
import com.kb.service.BoardServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/board/*")
@AllArgsConstructor //모든 필드 생성자. nullpointexception관련
public class BoardController {

	private BoardService service;
	
	@GetMapping("list")
	public void list(Model model) {
		log.info("목록");
		model.addAttribute("list",service.getList());				
	}
}
