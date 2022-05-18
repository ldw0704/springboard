package com.kb.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kb.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class BoardMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	BoardMapper mapper;
	
	
	public void getListTest() {
		log.info(mapper.getList());
	}
	
	public void insertTest() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성한글");
		board.setContent("새로작성한 내용");
		board.setWriter("뉴비");
		mapper.insert(board);
		
	}
	
	public void readTest() {		
		log.info(mapper.read(16371));
	}
	
	
	public void updateTest() {
		BoardVO board = new BoardVO();
		board.setBno(16371);
		board.setTitle("수정한 글2");
		board.setContent("수정한 내용2");
		board.setWriter("수정뉴비2");
		
		mapper.update(board);
		
	}
	
	@Test	
	public void deleteTest() {		
		mapper.delete(16371);
	}
}
