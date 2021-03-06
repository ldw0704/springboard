package com.kb.mapper;

import java.util.List;

import com.kb.domain.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public BoardVO read(int bno);
	public int update(BoardVO board);
	public int delete(int bno);
}
