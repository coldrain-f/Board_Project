package edu.coldrain.mapper;

import java.util.List;

import edu.coldrain.domain.BoardVO;

public interface BoardMapper {

	public List<BoardVO> getList();

	public BoardVO read(Long bno);
	
	public int update(BoardVO board);
	
	public int delete(Long bno);
	
	public List<BoardVO> getListWithPaging();
	
}
