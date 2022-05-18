package com.kb.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kb.domain.BoardVO;
import com.kb.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTests {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	
	public void registerTest() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성한글");
		board.setContent("새로작성한 내용");
		board.setWriter("뉴비");
		service.register(board);
	}
	
	
	public void getList() {
		service.getList();
	}
	
	public void getTest() {
		service.get(16372);
	}
	
	public void updateTest() {
		BoardVO board = new BoardVO();
		board.setTitle("수정 작성한글");
		board.setContent("수정 작성한 내용");
		board.setWriter("수정 뉴비");
		board.setBno(16372);
		service.modify(board);
	}
	
	public void removeTest() {
		service.remove(16372);
	}
}
