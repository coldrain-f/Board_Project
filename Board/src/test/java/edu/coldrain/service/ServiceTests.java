package edu.coldrain.service;

import static org.junit.Assert.assertNotNull;

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
public class ServiceTests {

	@Autowired
	private BoardService service;
	
	@Test
	public void testGetList() {
		assertNotNull(service);
		
		List<BoardVO> list = service.getList(new Criteria());
		
		list.forEach(board -> log.info(board));
		
	}
}
