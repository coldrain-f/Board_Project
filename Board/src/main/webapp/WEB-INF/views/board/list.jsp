<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
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
                	<c:forEach var="i" begin="1" end="10" step="1">
                		<tr>
	                		<td>${i }</td>
	                		<td>
	                            <a href="/board/detail" class="text-reset">샘플 게시글입니다.</a>
	                            <span class="badge badge-info ml-3">New</span>
	                        </td>
	                        <td class="text-muted font-weight-bold">Mellow</td>
	                        <td>2020-12-09</td>
	                        <td>0</td>
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
                    <li class="page-item">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
                    </li>
                    <li class="page-item"><a href="list.html?p=1" class="page-link">1</a></li>
                    <li class="page-item"><a href="list.html?p=2" class="page-link">2</a></li>
                    <li class="page-item"><a href="list.html?p=3" class="page-link">3</a></li>
                    <li class="page-item"><a href="list.html?p=4" class="page-link">4</a></li>
                    <li class="page-item"><a href="list.html?p=5" class="page-link">5</a></li>
                    <li class="page-item"><a href="list.html?p=6" class="page-link">6</a></li>
                    <li class="page-item"><a href="list.html?p=7" class="page-link">7</a></li>
                    <li class="page-item"><a href="list.html?p=8" class="page-link">8</a></li>
                    <li class="page-item"><a href="list.html?p=9" class="page-link">9</a></li>
                    <li class="page-item active"><a href="list.html?p=10" class="page-link">10</a></li>
                    <li class="page-item disabled">
                        <a class="page-link" href="#">다음</a>
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
    