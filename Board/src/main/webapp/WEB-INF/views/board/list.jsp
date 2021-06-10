<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
<%@include file="includes/header.jsp" %>
    
    <!-- 게시글 테이블  -->
    <div class="container mt-5">
        <!-- 게시글 폼  -->
        <form action="#" method="get">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="board" items="${boardList }" >
                		<tr>
	                		<td><c:out value="${board.bno }" /></td>
	                		<td>
	                            <a href="/board/detail?bno=<c:out value='${board.bno }' />&pageNum=<c:out value='${criteria.pageNum }' />&amount=<c:out value='${criteria.amount }' />" class="text-reset">
	                            	<c:out value="${board.title }" />
	                            </a>
	                            <span class="badge badge-info ml-3">New</span>
	                        </td>
	                        <td class="text-muted font-weight-bold">
	                        	<c:out value="${board.writer }" />
	                        </td>
	                        <td>
	                        	<fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd"/>
	                        </td>
	                        <td>
	                        	<c:out value="${board.hit }" />
	                        </td>
                		</tr>
                	</c:forEach>
                </tbody>
            </table>

            <button type="button" class="btn btn-primary float-right" onclick="location.href='/board/write'">글작성</button>

            <!-- pagination -->
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center mt-5">
                    <li class="page-item">
                        <a href="#" class="page-link" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    
                    <li class="page-item ${pageMaker.prev ? '' : 'disabled' }">
                        <a class="page-link" href="/board/list?pageNum=${pageMaker.startPage - 1 }&amount=10" tabindex="-1" aria-disabled="true">이전</a>
                    </li>
                    
                	<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
	                    
                		<li class="page-item ${criteria.pageNum ==  num ? 'active' : '' }">
                			<a href="/board/list?pageNum=${num }&amount=${criteria.amount}" class="page-link">
                				<c:out value="${num }" />
                			</a>
                		</li>
                	</c:forEach>
                	<li class="page-item ${pageMaker.next ? '' : 'disabled' }">
                        <a class="page-link" href="/board/list?pageNum=${pageMaker.endPage + 1 }&amount=10">다음</a>
                    </li>
                    <li class="page-item disabled">
                        <a href="#" class="page-link" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- //pagination -->
        </form>
        <!-- //게시글 폼 -->
    </div>
    <!-- //게시글 테이블 -->
    
<%@include file="includes/footer.jsp" %>
    