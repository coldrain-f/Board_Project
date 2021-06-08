package edu.coldrain.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import edu.coldrain.domain.BoardVO;
import edu.coldrain.domain.Criteria;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		List<BoardVO> list = mapper.getList();
		list.forEach(board -> log.info(board));
	}
	
	@Test
	public void testGetListWithPaging() {
		List<BoardVO> list = mapper.getListWithPaging(new Criteria(2, 10));
		list.forEach(board -> log.info(board));
		
	}
	
	@Test
	public void testCreate() {
		BoardVO newBoard = new BoardVO();
		newBoard.setTitle("새로운 게시글 입니다.");
		newBoard.setContents("새로운 게시글 내용입니다.");
		newBoard.setWriter("newbie");
		
		mapper.insert(newBoard);
	}
	
	@Test
	public void testRead() {
		BoardVO board = mapper.read(10L);
		log.info(board);
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(10L);
		board.setTitle("10번 게시글 입니다.");
		board.setContents("10번 게시글 내용입니다.");
		board.setWriter("Mellow");
		
		int success = mapper.update(board);
		if(success > 0) {
			log.info("수정에 성공했습니다.");
			log.info(mapper.read(board.getBno()));
		}
	}
	
	@Test
	public void testDelete() {
		int success = mapper.delete(201L);
		
		if(success > 0) {
			log.info("삭제에 성공했습니다.");
			List<BoardVO> list = mapper.getList();
			list.forEach(board -> log.info(board));
		}
	}
	
	
	
	
	
	
}
