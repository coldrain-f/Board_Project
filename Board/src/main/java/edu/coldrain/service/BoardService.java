package edu.coldrain.service;

import java.util.List;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;

public interface BoardService {
	
	public List<BoardVO> getList(Criteria criteria);
	
	public BoardVO get(Long bno);
	
	public void register(BoardVO board);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	public int getTotal(Criteria criteria);
}
