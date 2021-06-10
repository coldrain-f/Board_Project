<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="includes/header.jsp" %>

    <script>
        $(document).ready(function(){

            //게시판 수정, 삭제, 목록, 글쓰기 폼
            var boardActionForm = $("#boardActionForm");

            //Criteria 정보
            var pageNum = "<c:out value='${criteria.pageNum }' />";
            var amount = "<c:out value='${criteria.amount }' />";
	

            $("button").on("click", function(e) {

                //버튼의 이벤트를 정지시킨다. ( 여기서는 submit을 정지 )
                e.preventDefault();

                var operation = $(this).data("oper");

                if(operation == "modify") {
                    boardActionForm.attr("action", "/board/modify").attr("method", "get");
                    boardActionForm.submit();
                } else if(operation == "remove") {
                    boardActionForm.attr("action", "/board/remove").attr("method", "post");
                    boardActionForm.submit();

                } else if(operation == "list") {
                    boardActionForm.find("#bno").remove();
                    boardActionForm.append("<input type='hidden' name='pageNum' value='" + pageNum + "' />");
                    boardActionForm.append("<input type='hidden' name='amount' value='" + amount + "' />");
                    boardActionForm.attr("action", "/board/list").attr("method", "get");
                    boardActionForm.submit();

                } else if(operation == "write") {
                    boardActionForm.find("#bno").remove();

                    boardActionForm.attr("action", "/board/write").attr("method", "get");
                    boardActionForm.submit();
                }
            });
        });

    </script>

    <div class="container mt-5">
        <div class="row">
            <h4 style="margin-left: 20px; margin-bottom: 20px"><c:out value="${board.title }" /></h4>
        </div>
        <div class="row mb-3">
            <span class="mr-2" style="margin-left: 22px">작성자</span>
            <span class="mr-2 text-muted font-weight-bold"><c:out value="${board.writer }" /></span>
            <span class="mr-2"><fmt:formatDate value="${board.regdate }" pattern="yyyy년 M월 d일 a h시 m분" /></span>
            <span class="mr-2">조회 <c:out value="${board.hit }" />회</span>
            <span class=>댓글 0건</span>
        </div>

        <div class="border-bottom"></div>

        <div class="row mt-4">
        		
            <div style="margin-left: 22px"><c:out value="${board.contents }" escapeXml="false" /></div>
        </div>

        <!-- 덧글 폼 -->
        <table class="table table-borderless mt-5">
            <tbody>
                <tr>
                    <th class="border-bottom" colspan="3">
                        <span class="badge-primary p-1 mr-1">5</span>개의 덧글이 달렸습니다.</th>
                </tr>                
                <tr>
                    <td class="font-weight-bold">꼬마오즈</td>
                    <td>힘찬 번영을 위해 골골~ 거리지 말고 힘내세요!</td>
                    <td class="text-right" style="font-size: 14px;">2020.12.09 17:43</td>
                </tr>
                <tr>
                    <td class="font-weight-bold">스폐</td>
                    <td>오올~~ 절반은 왔네요!! 격하게 축하!!!</td>
                    <td class="text-right" style="font-size: 14px;">2020.12.09 17:43</td>
                </tr>
                <tr>
                    <td class="font-weight-bold">육포</td>
                    <td>여긴 어디? 나는 누구? @_@</td>
                    <td class="text-right" style="font-size: 14px;">2020.12.09 17:43</td>
                </tr>
                <tr>
                    <td class="font-weight-bold">레인저시프</td>
                    <td>너무 쉽게 봤군!! 이렇게 야무질 수가!!</td>
                    <td class="text-right" style="font-size: 14px;">2020.12.09 17:43</td>
                </tr>
                <tr>
                    <td class="font-weight-bold">칸쨩</td>
                    <td>긍정의 힘이 모자랐나....아직 멀었군..!</td>
                    <td class="text-right" style="font-size: 14px;">2020.12.09 17:43</td>
                </tr>
                
                
                <tr>
                    <td colspan="3">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center mt-5">
                                <li class="page-item disabled">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item disabled">
                                    <a href="#" class="page-link">
                                        <span aria-hidden="true">이전</span>
                                    </a>
                                </li>
                                
                                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                                <li class="page-item disabled">
                                    <a href="#" class="page-link">
                                        <span aria-hidden="true">다음</span>
                                    </a>
                                </li>
                                <li class="page-item disabled">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </td>
                </tr>

                <td colspan="3" class="border-top">
                    <form action="" method="get" class="mt-0">
                        <div class="input-group mt-2">
                            <input type="text" class="form-control" name="coments" autocomplete="off" />
                            <div class="input-group-append">
                                <input type="submit" class="btn btn-outline-secondary" value="등록" />
                            </div>
                            
                        </div>
                    </form>
                </td>

                <tr class="text-center">
                    <td colspan="3">
                    	<form action="" method="post" id="boardActionForm">
                            <input type="hidden" name="bno" id="bno" value="<c:out value='${board.bno }' />">
	                        <button type="submit" class="btn btn-outline-primary" data-oper="modify">수정</button>
	                        <button type="submit" class="btn btn-outline-primary" data-oper="remove">삭제</button>
	                        <button type="submit" class="btn btn-outline-primary" data-oper="list">목록</button>
	                        <button type="submit" class="btn btn-outline-primary" data-oper="write">글작성</button>
                    	</form>
                    </td>
                </tr>

                <table class="table-bordered w-100">
                    <tr class="text-center">
                        <td class="bg-light">이전글</td>
                        <td><a href="#" class="text-info">샘플 게시글입니다.</a></td>
                    </tr>
                    <tr class="text-center">
                        <td class="bg-light">다음글</td>
                        <td><a href="#" class="text-info">샘플 게시글입니다.</a></td>
                    </tr>
                </table>
                <!-- end board coments -->
            </tbody>
            
        </table>
        <!-- //덧글 폼 -->
    </div>
    

    <%@include file="includes/footer.jsp" %>