package edu.coldrain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;
import edu.coldrain.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList(Criteria criteria) {
		
		List<BoardVO> boardList = mapper.getListWithPaging(criteria);
		return boardList;
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("BoardServiceImpl.get()");
		return mapper.read(bno);
		
	}

	@Override
	public void register(BoardVO board) {
		log.info("BoardServiceImpl.register()");
		mapper.insert(board);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("BoardServiceImpl.modify()");
		return (mapper.update(board) == 1);
	}

	@Override
	public boolean remove(Long bno) {
		log.info("BoardServiceImpl.remove()");
		return (mapper.delete(bno) == 1);
	}

	@Override
	public int getTotal(Criteria criteria) {
		log.info("BoardServiceImpl.getTotal()");
		return mapper.getTotalCount(criteria);
	}

}
