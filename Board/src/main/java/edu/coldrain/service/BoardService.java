package edu.coldrain.service;

import java.util.List;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;

public interface BoardService {
	
	public List<BoardVO> getList(Criteria criteria);
	
	public BoardVO get(Long bno);
	
	public void register(BoardVO board);
	
	public void modify(BoardVO board);
	
	public void remove(Long bno);
	
}
