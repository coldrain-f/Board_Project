package edu.coldrain.mapper;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import edu.coldrain.domain.Criteria;
import edu.coldrain.domain.ReplyVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	@Autowired
	private ReplyMapper mapper;
	
	@Test
	public void testExist() {
		assertNotNull(mapper);
	}
	
	@Test
	public void testInsert() {
		ReplyVO reply = new ReplyVO();
		reply.setBno(200L);
		reply.setReply("댓글 테스트");
		reply.setReplyer("replyer");
		
		mapper.insert(reply);
		
	}
	
	@Test
	public void testRead() {
		ReplyVO reply = mapper.read(1L);
		log.info(reply);
	}
	
	@Test
	public void testDelete() {
		mapper.delete(2L);
	}
	
	@Test
	public void testUpdate() {
		ReplyVO reply = mapper.read(1L);
		reply.setReply("Update Reply");
		
		int result = mapper.update(reply);
		log.info("UPDATE COUNT = " + result);
		
	}
	
	@Test
	public void testList() {
		Criteria criteria = new Criteria();
		//222L
		List<ReplyVO> replies = mapper.getListWithPaging(criteria, 222L);
		replies.forEach(reply -> log.info(reply));
	}
	
}
