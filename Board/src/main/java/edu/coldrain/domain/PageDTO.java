package edu.coldrain.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;
	private int endPage;
	private int realEnd;
	private int total;
	
	private boolean prev;
	private boolean next;
	
	private Criteria criteria;
	
	public PageDTO(Criteria criteria, int total) {
		this.criteria = criteria;
		int pageNum = this.criteria.getPageNum();
		int amount = this.criteria.getAmount();
		this.total = total;
		
		this.endPage = (int)Math.ceil( (pageNum * 1.0) / 10 ) * 10;
		this.startPage = endPage - 9;
		
		//readEnd 구현해야 됨
		this.realEnd = (int)Math.ceil( this.total / 10.0 );
		
		if(realEnd < endPage) {
			endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;
		
	}
	
	
}
