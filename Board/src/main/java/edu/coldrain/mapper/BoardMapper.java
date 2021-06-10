package edu.coldrain.mapper;

import java.util.List;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();

	public int insert(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public int update(BoardVO board);
	
	public int delete(Long bno);
	
	public List<BoardVO> getListWithPaging(Criteria criteria);
	
	public int getTotalCount(Criteria criteria);
	
}
